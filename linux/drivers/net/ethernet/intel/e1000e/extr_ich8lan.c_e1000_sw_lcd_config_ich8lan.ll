; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_sw_lcd_config_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_sw_lcd_config_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.e1000_phy_info = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@e1000_phy_igp_3 = common dso_local global i32 0, align 4
@E1000_DEV_ID_ICH8_IGP_AMT = common dso_local global i32 0, align 4
@E1000_DEV_ID_ICH8_IGP_C = common dso_local global i32 0, align 4
@E1000_FEXTNVM_SW_CONFIG = common dso_local global i32 0, align 4
@E1000_FEXTNVM_SW_CONFIG_ICH8M = common dso_local global i32 0, align 4
@FEXTNVM = common dso_local global i32 0, align 4
@EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_LCD_WRITE_ENABLE = common dso_local global i32 0, align 4
@EXTCNF_SIZE = common dso_local global i32 0, align 4
@E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_MASK = common dso_local global i32 0, align 4
@E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_EXT_CNF_POINTER_MASK = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_EXT_CNF_POINTER_SHIFT = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@HV_LED_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@PHY_REG_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_sw_lcd_config_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_sw_lcd_config_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_phy_info* %16, %struct.e1000_phy_info** %4, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %54 [
    i32 133, label %21
    i32 128, label %52
    i32 132, label %52
    i32 130, label %52
    i32 129, label %52
    i32 131, label %52
  ]

21:                                               ; preds = %1
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @e1000_phy_igp_3, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %2, align 8
  br label %211

29:                                               ; preds = %21
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @E1000_DEV_ID_ICH8_IGP_AMT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @E1000_DEV_ID_ICH8_IGP_C, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39, %29
  %50 = load i32, i32* @E1000_FEXTNVM_SW_CONFIG, align 4
  store i32 %50, i32* %9, align 4
  br label %56

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %1, %1, %1, %1, %1, %51
  %53 = load i32, i32* @E1000_FEXTNVM_SW_CONFIG_ICH8M, align 4
  store i32 %53, i32* %9, align 4
  br label %56

54:                                               ; preds = %1
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %2, align 8
  br label %211

56:                                               ; preds = %52, %49
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.1*
  %64 = call i64 %61(%struct.e1000_hw.1* %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %2, align 8
  br label %211

69:                                               ; preds = %56
  %70 = load i32, i32* @FEXTNVM, align 4
  %71 = call i32 @er32(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %201

77:                                               ; preds = %69
  %78 = load i32, i32* @EXTCNF_CTRL, align 4
  %79 = call i32 @er32(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 132
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @E1000_EXTCNF_CTRL_LCD_WRITE_ENABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %201

91:                                               ; preds = %85, %77
  %92 = load i32, i32* @EXTCNF_SIZE, align 4
  %93 = call i32 @er32(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_MASK, align 4
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @E1000_EXTCNF_SIZE_EXT_PCIE_LENGTH_SHIFT, align 4
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %91
  br label %201

103:                                              ; preds = %91
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @E1000_EXTCNF_CTRL_EXT_CNF_POINTER_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @E1000_EXTCNF_CTRL_EXT_CNF_POINTER_SHIFT, align 4
  %108 = load i32, i32* %8, align 4
  %109 = ashr i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 128
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115, %103
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %124, 128
  br i1 %125, label %126, label %144

126:                                              ; preds = %120, %115
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = call i64 @e1000_write_smbus_addr(%struct.e1000_hw* %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %201

132:                                              ; preds = %126
  %133 = load i32, i32* @LEDCTL, align 4
  %134 = call i32 @er32(i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = load i32, i32* @HV_LED_CONFIG, align 4
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %135, i32 %136, i64 %138)
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %10, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %201

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %120
  %145 = load i32, i32* %8, align 4
  %146 = shl i32 %145, 1
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %11, align 8
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %197, %144
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %200

152:                                              ; preds = %148
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i32, i32* %5, align 4
  %156 = mul nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %154, %157
  %159 = call i64 @e1000_read_nvm(%struct.e1000_hw* %153, i64 %158, i32 1, i64* %12)
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %10, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %201

163:                                              ; preds = %152
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %165, %168
  %170 = add nsw i64 %169, 1
  %171 = call i64 @e1000_read_nvm(%struct.e1000_hw* %164, i64 %170, i32 1, i64* %13)
  store i64 %171, i64* %10, align 8
  %172 = load i64, i64* %10, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %201

175:                                              ; preds = %163
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* @IGP01E1000_PHY_PAGE_SELECT, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i64, i64* %12, align 8
  store i64 %180, i64* %14, align 8
  br label %197

181:                                              ; preds = %175
  %182 = load i64, i64* @PHY_REG_MASK, align 8
  %183 = load i64, i64* %13, align 8
  %184 = and i64 %183, %182
  store i64 %184, i64* %13, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %13, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %13, align 8
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %189 = load i64, i64* %13, align 8
  %190 = trunc i64 %189 to i32
  %191 = load i64, i64* %12, align 8
  %192 = call i64 @e1e_wphy_locked(%struct.e1000_hw* %188, i32 %190, i64 %191)
  store i64 %192, i64* %10, align 8
  %193 = load i64, i64* %10, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %181
  br label %201

196:                                              ; preds = %181
  br label %197

197:                                              ; preds = %196, %179
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %148

200:                                              ; preds = %148
  br label %201

201:                                              ; preds = %200, %195, %174, %162, %142, %131, %102, %90, %76
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %203 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %205, align 8
  %207 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %208 = bitcast %struct.e1000_hw* %207 to %struct.e1000_hw.0*
  %209 = call i32 %206(%struct.e1000_hw.0* %208)
  %210 = load i64, i64* %10, align 8
  store i64 %210, i64* %2, align 8
  br label %211

211:                                              ; preds = %201, %67, %54, %27
  %212 = load i64, i64* %2, align 8
  ret i64 %212
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_write_smbus_addr(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i64) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i64 @e1e_wphy_locked(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
