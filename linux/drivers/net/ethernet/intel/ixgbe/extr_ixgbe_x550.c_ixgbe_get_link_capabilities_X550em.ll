; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_get_link_capabilities_X550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_get_link_capabilities_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ixgbe_phy_fw = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@ixgbe_mac_x550em_a = common dso_local global i32 0, align 4
@IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_KR_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*)* @ixgbe_get_link_capabilities_X550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_link_capabilities_X550em(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ixgbe_phy_fw, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  store i32 1, i32* %15, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %133

21:                                               ; preds = %3
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %28
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %43, %36, %28
  %58 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %133

60:                                               ; preds = %50
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %68 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %132

75:                                               ; preds = %21
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %125 [
    i32 129, label %80
    i32 128, label %87
    i32 132, label %92
    i32 131, label %92
    i32 130, label %95
  ]

80:                                               ; preds = %75
  %81 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %82 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  br label %130

87:                                               ; preds = %75
  %88 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %89 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %130

92:                                               ; preds = %75, %75
  %93 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  br label %130

95:                                               ; preds = %75
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ixgbe_mac_x550em_a, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  br label %130

113:                                              ; preds = %102
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_KR_L, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %130

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123, %95
  br label %125

125:                                              ; preds = %75, %124
  %126 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %127 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %128 = or i32 %126, %127
  %129 = load i32*, i32** %6, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %119, %110, %92, %87, %80
  %131 = load i32*, i32** %7, align 8
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %74
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %57, %14
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
