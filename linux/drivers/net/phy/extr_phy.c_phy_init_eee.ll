; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_init_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_init_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@common = common dso_local global i32 0, align 4
@lp = common dso_local global i32 0, align 4
@adv = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL1_CLKSTOP_EN = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_init_eee(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DUPLEX_FULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %18
  %25 = load i32, i32* @common, align 4
  %26 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %25)
  %27 = load i32, i32* @lp, align 4
  %28 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %27)
  %29 = load i32, i32* @adv, align 4
  %30 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %29)
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = call i32 @phy_read_status(%struct.phy_device* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %24
  %38 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %39 = load i32, i32* @MDIO_MMD_PCS, align 4
  %40 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %41 = call i32 @phy_read_mmd(%struct.phy_device* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %99

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %99

51:                                               ; preds = %45
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = load i32, i32* @MDIO_MMD_AN, align 4
  %54 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %55 = call i32 @phy_read_mmd(%struct.phy_device* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %99

59:                                               ; preds = %51
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = load i32, i32* @MDIO_MMD_AN, align 4
  %62 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %63 = call i32 @phy_read_mmd(%struct.phy_device* %60, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %99

67:                                               ; preds = %59
  %68 = load i32, i32* @adv, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @mmd_eee_adv_to_linkmode(i32 %68, i32 %69)
  %71 = load i32, i32* @lp, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mmd_eee_adv_to_linkmode(i32 %71, i32 %72)
  %74 = load i32, i32* @common, align 4
  %75 = load i32, i32* @adv, align 4
  %76 = load i32, i32* @lp, align 4
  %77 = call i32 @linkmode_and(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %79 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @common, align 4
  %85 = call i32 @phy_check_valid(i32 %80, i64 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %67
  br label %99

88:                                               ; preds = %67
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %93 = load i32, i32* @MDIO_MMD_PCS, align 4
  %94 = load i32, i32* @MDIO_CTRL1, align 4
  %95 = load i32, i32* @MDIO_PCS_CTRL1_CLKSTOP_EN, align 4
  %96 = call i32 @phy_set_bits_mmd(%struct.phy_device* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  store i32 0, i32* %3, align 4
  br label %102

98:                                               ; preds = %18
  br label %99

99:                                               ; preds = %98, %87, %66, %58, %50, %44
  %100 = load i32, i32* @EPROTONOSUPPORT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %97, %35, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i32 @phy_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i32 @mmd_eee_adv_to_linkmode(i32, i32) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i32 @phy_check_valid(i32, i64, i32) #1

declare dso_local i32 @phy_set_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
