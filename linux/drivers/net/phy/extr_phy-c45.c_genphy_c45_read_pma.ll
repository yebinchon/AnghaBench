; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_read_pma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_read_pma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEEDSEL = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_5000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_read_pma(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @linkmode_zero(i32 %7)
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %11 = load i32, i32* @MDIO_CTRL1, align 4
  %12 = call i32 @phy_read_mmd(%struct.phy_device* %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MDIO_CTRL1_SPEEDSEL, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %45 [
    i32 0, label %21
    i32 129, label %25
    i32 128, label %29
    i32 131, label %33
    i32 130, label %37
    i32 132, label %41
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @SPEED_10, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %49

25:                                               ; preds = %17
  %26 = load i32, i32* @SPEED_100, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %49

29:                                               ; preds = %17
  %30 = load i32, i32* @SPEED_1000, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %49

33:                                               ; preds = %17
  %34 = load i32, i32* @SPEED_2500, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %49

37:                                               ; preds = %17
  %38 = load i32, i32* @SPEED_5000, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %49

41:                                               ; preds = %17
  %42 = load i32, i32* @SPEED_10000, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %17
  %46 = load i32, i32* @SPEED_UNKNOWN, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41, %37, %33, %29, %25, %21
  %50 = load i32, i32* @DUPLEX_FULL, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @linkmode_zero(i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
