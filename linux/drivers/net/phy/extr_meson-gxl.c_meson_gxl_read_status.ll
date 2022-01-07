; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@BANK_WOL = common dso_local global i32 0, align 4
@LPI_STATUS = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_EXPANSION = common dso_local global i32 0, align 4
@LPI_STATUS_RSV12 = common dso_local global i32 0, align 4
@EXPANSION_NWAY = common dso_local global i32 0, align 4
@LPA_LPACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LPA corruption - aneg restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @meson_gxl_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gxl_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AUTONEG_ENABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = call i32 @genphy_aneg_done(%struct.phy_device* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %72

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = load i32, i32* @BANK_WOL, align 4
  %28 = load i32, i32* @LPI_STATUS, align 4
  %29 = call i32 @meson_gxl_read_reg(%struct.phy_device* %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %75

34:                                               ; preds = %25
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = load i32, i32* @MII_LPA, align 4
  %37 = call i32 @phy_read(%struct.phy_device* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %75

42:                                               ; preds = %34
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @MII_EXPANSION, align 4
  %45 = call i32 @phy_read(%struct.phy_device* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %75

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @LPI_STATUS_RSV12, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EXPANSION_NWAY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @LPA_LPACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = call i32 @phydev_dbg(%struct.phy_device* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = call i32 @genphy_restart_aneg(%struct.phy_device* %68)
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %60, %55
  br label %71

71:                                               ; preds = %70, %1
  br label %72

72:                                               ; preds = %71, %23
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = call i32 @genphy_read_status(%struct.phy_device* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %65, %48, %40, %32, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @genphy_aneg_done(%struct.phy_device*) #1

declare dso_local i32 @meson_gxl_read_reg(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phydev_dbg(%struct.phy_device*, i8*) #1

declare dso_local i32 @genphy_restart_aneg(%struct.phy_device*) #1

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
