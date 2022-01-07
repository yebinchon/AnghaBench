; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_ethtool_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_ethtool_get_eee(%struct.phy_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = load i32, i32* @MDIO_MMD_PCS, align 4
  %17 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %18 = call i32 @phy_read_mmd(%struct.phy_device* %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %24)
  %26 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = load i32, i32* @MDIO_MMD_AN, align 4
  %30 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %31 = call i32 @phy_read_mmd(%struct.phy_device* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %52 = load i32, i32* @MDIO_MMD_AN, align 4
  %53 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %54 = call i32 @phy_read_mmd(%struct.phy_device* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %78

59:                                               ; preds = %36
  %60 = load i32, i32* %6, align 4
  %61 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %59, %57, %34, %21, %11
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
