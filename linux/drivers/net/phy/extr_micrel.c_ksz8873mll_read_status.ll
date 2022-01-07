; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz8873mll_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz8873mll_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, i64, i32, i32 }

@KSZ8873MLL_GLOBAL_CONTROL_4 = common dso_local global i32 0, align 4
@KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@KSZ8873MLL_GLOBAL_CONTROL_4_SPEED = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ksz8873mll_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8873mll_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = load i32, i32* @KSZ8873MLL_GLOBAL_CONTROL_4, align 4
  %6 = call i32 @phy_read(%struct.phy_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %8 = load i32, i32* @KSZ8873MLL_GLOBAL_CONTROL_4, align 4
  %9 = call i32 @phy_read(%struct.phy_device* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @DUPLEX_HALF, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @DUPLEX_FULL, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @KSZ8873MLL_GLOBAL_CONTROL_4_SPEED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @SPEED_10, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  br label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @SPEED_100, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  ret i32 0
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
