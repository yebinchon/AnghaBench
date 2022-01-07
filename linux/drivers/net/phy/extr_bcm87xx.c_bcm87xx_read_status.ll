; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm87xx.c_bcm87xx_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm87xx.c_bcm87xx_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32 }

@BCM87XX_PMD_RX_SIGNAL_DETECT = common dso_local global i32 0, align 4
@BCM87XX_10GBASER_PCS_STATUS = common dso_local global i32 0, align 4
@BCM87XX_XGXS_LANE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm87xx_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm87xx_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @BCM87XX_PMD_RX_SIGNAL_DETECT, align 4
  %9 = call i32 @phy_read(%struct.phy_device* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %52

19:                                               ; preds = %14
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = load i32, i32* @BCM87XX_10GBASER_PCS_STATUS, align 4
  %22 = call i32 @phy_read(%struct.phy_device* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %52

32:                                               ; preds = %27
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = load i32, i32* @BCM87XX_XGXS_LANE_STATUS, align 4
  %35 = call i32 @phy_read(%struct.phy_device* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %55

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %52

45:                                               ; preds = %40
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %46, i32 0, i32 0
  store i32 10000, i32* %47, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %55

52:                                               ; preds = %44, %31, %18
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %45, %38, %25, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
