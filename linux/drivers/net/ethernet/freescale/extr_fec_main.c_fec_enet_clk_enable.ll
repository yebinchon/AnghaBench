; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @fec_enet_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_clk_enable(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %14 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @clk_prepare_enable(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %111

21:                                               ; preds = %12
  %22 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %23 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 3
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @clk_prepare_enable(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 3
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %99

40:                                               ; preds = %26
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %45 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %44, i32 0, i32 3
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %43, %21
  %48 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %49 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_prepare_enable(i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %88

55:                                               ; preds = %47
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @phy_reset_after_clk_enable(i32 %58)
  br label %87

60:                                               ; preds = %2
  %61 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %62 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @clk_disable_unprepare(i64 %63)
  %65 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %66 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %71 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %70, i32 0, i32 3
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %74 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @clk_disable_unprepare(i64 %75)
  %77 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %78 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %80 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %79, i32 0, i32 3
  %81 = call i32 @mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %69, %60
  %83 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %84 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @clk_disable_unprepare(i64 %85)
  br label %87

87:                                               ; preds = %82, %55
  store i32 0, i32* %3, align 4
  br label %111

88:                                               ; preds = %54
  %89 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %90 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %95 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @clk_disable_unprepare(i64 %96)
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %36
  %100 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %101 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %106 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @clk_disable_unprepare(i64 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %87, %19
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_reset_after_clk_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
