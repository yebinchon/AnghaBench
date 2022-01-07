; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.tx_agg* }
%struct.tx_agg = type { i32, i64, i64, %struct.r8152* }
%struct.r8152 = type { i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Tx status %d\0A\00", align 1
@WORK_ENABLE = common dso_local global i32 0, align 4
@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.net_device_stats*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tx_agg*, align 8
  %6 = alloca %struct.r8152*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 1
  %14 = load %struct.tx_agg*, %struct.tx_agg** %13, align 8
  store %struct.tx_agg* %14, %struct.tx_agg** %5, align 8
  %15 = load %struct.tx_agg*, %struct.tx_agg** %5, align 8
  %16 = icmp ne %struct.tx_agg* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %114

18:                                               ; preds = %1
  %19 = load %struct.tx_agg*, %struct.tx_agg** %5, align 8
  %20 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %19, i32 0, i32 3
  %21 = load %struct.r8152*, %struct.r8152** %20, align 8
  store %struct.r8152* %21, %struct.r8152** %6, align 8
  %22 = load %struct.r8152*, %struct.r8152** %6, align 8
  %23 = icmp ne %struct.r8152* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %114

25:                                               ; preds = %18
  %26 = load %struct.r8152*, %struct.r8152** %6, align 8
  %27 = getelementptr inbounds %struct.r8152, %struct.r8152* %26, i32 0, i32 6
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  store %struct.net_device_stats* %30, %struct.net_device_stats** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %25
  %34 = call i64 (...) @net_ratelimit()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @netdev_warn(%struct.net_device* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.tx_agg*, %struct.tx_agg** %5, align 8
  %42 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  br label %69

50:                                               ; preds = %25
  %51 = load %struct.tx_agg*, %struct.tx_agg** %5, align 8
  %52 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %55 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.tx_agg*, %struct.tx_agg** %5, align 8
  %61 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %50, %40
  %70 = load %struct.r8152*, %struct.r8152** %6, align 8
  %71 = getelementptr inbounds %struct.r8152, %struct.r8152* %70, i32 0, i32 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.tx_agg*, %struct.tx_agg** %5, align 8
  %75 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %74, i32 0, i32 0
  %76 = load %struct.r8152*, %struct.r8152** %6, align 8
  %77 = getelementptr inbounds %struct.r8152, %struct.r8152* %76, i32 0, i32 5
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.r8152*, %struct.r8152** %6, align 8
  %80 = getelementptr inbounds %struct.r8152, %struct.r8152* %79, i32 0, i32 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.r8152*, %struct.r8152** %6, align 8
  %84 = getelementptr inbounds %struct.r8152, %struct.r8152* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @usb_autopm_put_interface_async(i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i32 @netif_carrier_ok(%struct.net_device* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %69
  br label %114

91:                                               ; preds = %69
  %92 = load i32, i32* @WORK_ENABLE, align 4
  %93 = load %struct.r8152*, %struct.r8152** %6, align 8
  %94 = getelementptr inbounds %struct.r8152, %struct.r8152* %93, i32 0, i32 2
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %114

98:                                               ; preds = %91
  %99 = load i32, i32* @RTL8152_UNPLUG, align 4
  %100 = load %struct.r8152*, %struct.r8152** %6, align 8
  %101 = getelementptr inbounds %struct.r8152, %struct.r8152* %100, i32 0, i32 2
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %114

105:                                              ; preds = %98
  %106 = load %struct.r8152*, %struct.r8152** %6, align 8
  %107 = getelementptr inbounds %struct.r8152, %struct.r8152* %106, i32 0, i32 1
  %108 = call i32 @skb_queue_empty(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load %struct.r8152*, %struct.r8152** %6, align 8
  %112 = getelementptr inbounds %struct.r8152, %struct.r8152* %111, i32 0, i32 0
  %113 = call i32 @tasklet_schedule(i32* %112)
  br label %114

114:                                              ; preds = %17, %24, %90, %97, %104, %110, %105
  ret void
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
