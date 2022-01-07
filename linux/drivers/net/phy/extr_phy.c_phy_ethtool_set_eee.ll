; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }
%struct.ethtool_eee = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_ethtool_set_eee(%struct.phy_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = load i32, i32* @MDIO_MMD_PCS, align 4
  %20 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %21 = call i32 @phy_read_mmd(%struct.phy_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %17
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = load i32, i32* @MDIO_MMD_AN, align 4
  %29 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %30 = call i32 @phy_read_mmd(%struct.phy_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %85

35:                                               ; preds = %26
  %36 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  br label %54

47:                                               ; preds = %40
  %48 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ethtool_adv_to_mmd_eee_adv_t(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %51, %52
  br label %54

54:                                               ; preds = %47, %45
  %55 = phi i32 [ %46, %45 ], [ %53, %47 ]
  store i32 %55, i32* %8, align 4
  %56 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %35
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %68 = load i32, i32* @MDIO_MMD_AN, align 4
  %69 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @phy_write_mmd(%struct.phy_device* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %66
  %77 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %78 = call i32 @phy_restart_aneg(%struct.phy_device* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %62
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %81, %74, %33, %24, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @ethtool_adv_to_mmd_eee_adv_t(i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_restart_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
