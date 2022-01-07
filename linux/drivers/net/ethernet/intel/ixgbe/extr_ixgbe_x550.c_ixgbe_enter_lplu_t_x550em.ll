; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_enter_lplu_t_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_enter_lplu_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_12__, %struct.TYPE_11__, i64, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.ixgbe_hw.1*, i64, i32)* }
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32*)* }
%struct.ixgbe_hw.2 = type opaque

@NVM_INIT_CTRL_3 = common dso_local global i32 0, align 4
@NVM_INIT_CTRL_3_LPLU = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_STAT = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i64 0, align 8
@IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_enter_lplu_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_enter_lplu_t_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %184

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %16, i32* %10)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %2, align 8
  br label %184

22:                                               ; preds = %15
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %26, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = bitcast %struct.ixgbe_hw* %28 to %struct.ixgbe_hw.2*
  %30 = load i32, i32* @NVM_INIT_CTRL_3, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i64 %27(%struct.ixgbe_hw.2* %29, i32 %30, i32* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %2, align 8
  br label %184

39:                                               ; preds = %22
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NVM_INIT_CTRL_3_LPLU, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = call i64 @ixgbe_mng_present(%struct.ixgbe_hw* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %42, %39
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = call i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %60, i32 0)
  store i64 %61, i64* %2, align 8
  br label %184

62:                                               ; preds = %55, %50
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = call i64 @ixgbe_get_lcd_t_x550em(%struct.ixgbe_hw* %63, i64* %8)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %2, align 8
  br label %184

69:                                               ; preds = %62
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @IXGBE_LINK_SPEED_UNKNOWN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = call i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %74, i32 0)
  store i64 %75, i64* %2, align 8
  br label %184

76:                                               ; preds = %69
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.0*
  %84 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STAT, align 4
  %85 = load i32, i32* @MDIO_MMD_AN, align 4
  %86 = call i64 %81(%struct.ixgbe_hw.0* %83, i32 %84, i32 %85, i32* %6)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i64, i64* %7, align 8
  store i64 %90, i64* %2, align 8
  br label %184

91:                                               ; preds = %76
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = call i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw* %92, i32* %10)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %98 = call i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %97, i32 0)
  store i64 %98, i64* %2, align 8
  br label %184

99:                                               ; preds = %91
  %100 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK, align 4
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %106, %99
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @IXGBE_LINK_SPEED_10GB_FULL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %106
  %119 = load i64, i64* %7, align 8
  store i64 %119, i64* %2, align 8
  br label %184

120:                                              ; preds = %114, %110
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %124, align 8
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = bitcast %struct.ixgbe_hw* %126 to %struct.ixgbe_hw.0*
  %128 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM, align 4
  %129 = load i32, i32* @MDIO_MMD_AN, align 4
  %130 = call i64 %125(%struct.ixgbe_hw.0* %127, i32 %128, i32 %129, i32* %5)
  store i64 %130, i64* %7, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = load i64, i64* %7, align 8
  store i64 %134, i64* %2, align 8
  br label %184

135:                                              ; preds = %120
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %139, align 8
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %142 = bitcast %struct.ixgbe_hw* %141 to %struct.ixgbe_hw.0*
  %143 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %144 = load i32, i32* @MDIO_MMD_AN, align 4
  %145 = call i64 %140(%struct.ixgbe_hw.0* %142, i32 %143, i32 %144, i32* %4)
  store i64 %145, i64* %7, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i64, i64* %7, align 8
  store i64 %149, i64* %2, align 8
  br label %184

150:                                              ; preds = %135
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %154, align 8
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %157 = bitcast %struct.ixgbe_hw* %156 to %struct.ixgbe_hw.0*
  %158 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %159 = load i32, i32* @MDIO_MMD_AN, align 4
  %160 = call i64 %155(%struct.ixgbe_hw.0* %157, i32 %158, i32 %159, i32* %5)
  store i64 %160, i64* %7, align 8
  %161 = load i64, i64* %7, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %150
  %164 = load i64, i64* %7, align 8
  store i64 %164, i64* %2, align 8
  br label %184

165:                                              ; preds = %150
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %167 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %9, align 4
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %171 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64 (%struct.ixgbe_hw.1*, i64, i32)*, i64 (%struct.ixgbe_hw.1*, i64, i32)** %173, align 8
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %176 = bitcast %struct.ixgbe_hw* %175 to %struct.ixgbe_hw.1*
  %177 = load i64, i64* %8, align 8
  %178 = call i64 %174(%struct.ixgbe_hw.1* %176, i64 %177, i32 0)
  store i64 %178, i64* %7, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %181 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load i64, i64* %7, align 8
  store i64 %183, i64* %2, align 8
  br label %184

184:                                              ; preds = %165, %163, %148, %133, %118, %96, %89, %73, %67, %59, %37, %20, %14
  %185 = load i64, i64* %2, align 8
  ret i64 %185
}

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ext_phy_t_x550em_get_link(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_mng_present(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_lcd_t_x550em(%struct.ixgbe_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
