; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_4__, %struct.dp83640_private* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.dp83640_private = type { i32, %struct.dp83640_clock*, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, %struct.phy_device* }
%struct.dp83640_clock = type { %struct.dp83640_private*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BROADCAST_ADDR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@rx_timestamp_work = common dso_local global i32 0, align 4
@MAX_RXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83640_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.dp83640_clock*, align 8
  %5 = alloca %struct.dp83640_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BROADCAST_ADDR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.dp83640_clock* @dp83640_clock_get_bus(i32 %21)
  store %struct.dp83640_clock* %22, %struct.dp83640_clock** %4, align 8
  %23 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %24 = icmp ne %struct.dp83640_clock* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %124

26:                                               ; preds = %17
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.dp83640_private* @kzalloc(i32 56, i32 %27)
  store %struct.dp83640_private* %28, %struct.dp83640_private** %5, align 8
  %29 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %30 = icmp ne %struct.dp83640_private* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %121

32:                                               ; preds = %26
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %35 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %34, i32 0, i32 9
  store %struct.phy_device* %33, %struct.phy_device** %35, align 8
  %36 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %37 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %36, i32 0, i32 8
  %38 = load i32, i32* @rx_timestamp_work, align 4
  %39 = call i32 @INIT_DELAYED_WORK(i32* %37, i32 %38)
  %40 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %41 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %40, i32 0, i32 7
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %44 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %43, i32 0, i32 5
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %61, %32
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAX_RXTS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %52 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %51, i32 0, i32 6
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %59 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %58, i32 0, i32 5
  %60 = call i32 @list_add(i32* %57, i32* %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 1
  store %struct.dp83640_private* %65, %struct.dp83640_private** %67, align 8
  %68 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %69 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %68, i32 0, i32 4
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %72 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %71, i32 0, i32 3
  %73 = call i32 @skb_queue_head_init(i32* %72)
  %74 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %75 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %74, i32 0, i32 2
  %76 = call i32 @skb_queue_head_init(i32* %75)
  %77 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %78 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %79 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %78, i32 0, i32 1
  store %struct.dp83640_clock* %77, %struct.dp83640_clock** %79, align 8
  %80 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = call i64 @choose_this_phy(%struct.dp83640_clock* %80, %struct.phy_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %64
  %85 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %86 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %87 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %86, i32 0, i32 0
  store %struct.dp83640_private* %85, %struct.dp83640_private** %87, align 8
  %88 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %89 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %88, i32 0, i32 3
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = call i32 @ptp_clock_register(i32* %89, i32* %92)
  %94 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %95 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %97 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @IS_ERR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %103 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %6, align 4
  br label %116

106:                                              ; preds = %84
  br label %113

107:                                              ; preds = %64
  %108 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %109 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %108, i32 0, i32 0
  %110 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %111 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %110, i32 0, i32 1
  %112 = call i32 @list_add_tail(i32* %109, i32* %111)
  br label %113

113:                                              ; preds = %107, %106
  %114 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %115 = call i32 @dp83640_clock_put(%struct.dp83640_clock* %114)
  store i32 0, i32* %2, align 4
  br label %126

116:                                              ; preds = %101
  %117 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %118 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %117, i32 0, i32 0
  store %struct.dp83640_private* null, %struct.dp83640_private** %118, align 8
  %119 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %120 = call i32 @kfree(%struct.dp83640_private* %119)
  br label %121

121:                                              ; preds = %116, %31
  %122 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %123 = call i32 @dp83640_clock_put(%struct.dp83640_clock* %122)
  br label %124

124:                                              ; preds = %121, %25
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %113, %16
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.dp83640_clock* @dp83640_clock_get_bus(i32) #1

declare dso_local %struct.dp83640_private* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @choose_this_phy(%struct.dp83640_clock*, %struct.phy_device*) #1

declare dso_local i32 @ptp_clock_register(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dp83640_clock_put(%struct.dp83640_clock*) #1

declare dso_local i32 @kfree(%struct.dp83640_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
