; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_chk_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_chk_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64 }
%struct.ethtool_cmd = type { i32, i64, i32 }
%struct.ax88179_data = type { i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88179_chk_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_chk_eee(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.ethtool_cmd, align 8
  %5 = alloca %struct.ax88179_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %13 = bitcast %struct.ethtool_cmd* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 2
  %15 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ax88179_data*
  store %struct.ax88179_data* %19, %struct.ax88179_data** %5, align 8
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = call i32 @mii_ethtool_gset(i32* %21, %struct.ethtool_cmd* %4)
  %23 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DUPLEX_FULL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %31 = load i32, i32* @MDIO_MMD_PCS, align 4
  %32 = call i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %37 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %2, align 4
  br label %96

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %45 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %96

46:                                               ; preds = %38
  %47 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %48 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %49 = load i32, i32* @MDIO_MMD_AN, align 4
  %50 = call i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %55 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %96

56:                                               ; preds = %46
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %59 = load i32, i32* @MDIO_MMD_AN, align 4
  %60 = call i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %65 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %96

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPEED_1000, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  br label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %89 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %96

90:                                               ; preds = %79
  %91 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %92 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  store i32 1, i32* %2, align 4
  br label %96

93:                                               ; preds = %1
  %94 = load %struct.ax88179_data*, %struct.ax88179_data** %5, align 8
  %95 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %90, %87, %63, %53, %43, %35
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #2

declare dso_local i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet*, i32, i32) #2

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #2

declare dso_local i32 @mmd_eee_adv_to_ethtool_adv_t(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
