; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_read_lpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_read_lpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i64, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_STAT1000 = common dso_local global i32 0, align 4
@LPA_1000MSFAIL = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Master/Slave resolution failed, maybe conflicting manual settings?\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Master/Slave resolution failed\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_read_lpa(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AUTONEG_ENABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %86

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mii_stat1000_mod_linkmode_lpa_t(i32 %20, i32 0)
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mii_lpa_mod_linkmode_lpa_t(i32 %24, i32 0)
  store i32 0, i32* %2, align 4
  br label %92

26:                                               ; preds = %12
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @MII_STAT1000, align 4
  %34 = call i32 @phy_read(%struct.phy_device* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @LPA_1000MSFAIL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load i32, i32* @MII_CTRL1000, align 4
  %47 = call i32 @phy_read(%struct.phy_device* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %92

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = call i32 @phydev_err(%struct.phy_device* %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %63

60:                                               ; preds = %52
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = call i32 @phydev_err(%struct.phy_device* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @ENOLINK, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %92

66:                                               ; preds = %39
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mii_stat1000_mod_linkmode_lpa_t(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %26
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = load i32, i32* @MII_LPA, align 4
  %75 = call i32 @phy_read(%struct.phy_device* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %92

80:                                               ; preds = %72
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @mii_lpa_mod_linkmode_lpa_t(i32 %83, i32 %84)
  br label %91

86:                                               ; preds = %1
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @linkmode_zero(i32 %89)
  br label %91

91:                                               ; preds = %86, %80
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %78, %63, %50, %37, %17
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mii_stat1000_mod_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @mii_lpa_mod_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*) #1

declare dso_local i32 @linkmode_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
