; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_internal_phy_t_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_internal_phy_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.1 = type opaque

@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8
@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_STAT = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_setup_internal_phy_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_internal_phy_t_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %11, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = bitcast %struct.ixgbe_hw* %13 to %struct.ixgbe_hw.1*
  %15 = call i64 %12(%struct.ixgbe_hw.1* %14)
  %16 = load i64, i64* @ixgbe_media_type_copper, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %19, i64* %2, align 8
  br label %93

20:                                               ; preds = %1
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27, %20
  %36 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %37 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw* %39, i32 %40)
  store i64 %41, i64* %2, align 8
  br label %93

42:                                               ; preds = %27
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %43, i32* %5)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %2, align 8
  br label %93

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i64 0, i64* %2, align 8
  br label %93

53:                                               ; preds = %49
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.0*
  %61 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STAT, align 4
  %62 = load i32, i32* @MDIO_MMD_AN, align 4
  %63 = call i64 %58(%struct.ixgbe_hw.0* %60, i32 %61, i32 %62, i32* %7)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %2, align 8
  br label %93

68:                                               ; preds = %53
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %69, i32* %5)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %2, align 8
  br label %93

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i64 0, i64* %2, align 8
  br label %93

79:                                               ; preds = %75
  %80 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_MASK, align 4
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %88 [
    i32 129, label %84
    i32 128, label %86
  ]

84:                                               ; preds = %79
  %85 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  store i32 %87, i32* %4, align 4
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %89, i64* %2, align 8
  br label %93

90:                                               ; preds = %86, %84
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = call i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw* %91, i32* %4)
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %90, %88, %78, %73, %66, %52, %47, %35, %18
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i64 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_setup_ixfi_x550em(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
