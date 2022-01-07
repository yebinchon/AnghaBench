; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_config_dsp_after_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_config_dsp_after_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64 }

@e1000_phy_igp = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@e1000_dsp_config_activated = common dso_local global i64 0, align 8
@IGP01E1000_IEEE_FORCE_GIGA = common dso_local global i64 0, align 8
@IGP01E1000_PHY_CHANNEL_NUM = common dso_local global i64 0, align 8
@dsp_reg_array = common dso_local global i32* null, align 8
@IGP01E1000_PHY_EDAC_MU_INDEX = common dso_local global i64 0, align 8
@IGP01E1000_PHY_EDAC_SIGN_EXT_9_BITS = common dso_local global i64 0, align 8
@IGP01E1000_IEEE_RESTART_AUTONEG = common dso_local global i64 0, align 8
@e1000_dsp_config_enabled = common dso_local global i64 0, align 8
@e1000_ffe_config_active = common dso_local global i64 0, align 8
@IGP01E1000_PHY_DSP_FFE = common dso_local global i32 0, align 4
@IGP01E1000_PHY_DSP_FFE_DEFAULT = common dso_local global i64 0, align 8
@e1000_ffe_config_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_config_dsp_after_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_config_dsp_after_link_change(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_phy_igp, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %18, i64* %3, align 8
  br label %194

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = call i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %23, i64* %9, i64* %10)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %194

30:                                               ; preds = %22
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @SPEED_1000, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %36 = call i64 @e1000_1000Mb_check_cable_length(%struct.e1000_hw* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %194

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %30
  br label %192

43:                                               ; preds = %19
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_dsp_config_activated, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %132

49:                                               ; preds = %43
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %51 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %50, i32 12123, i64* %8)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %194

56:                                               ; preds = %49
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %57, i32 12123, i64 3)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %194

63:                                               ; preds = %56
  %64 = call i32 @msleep(i32 20)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = load i64, i64* @IGP01E1000_IEEE_FORCE_GIGA, align 8
  %67 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %65, i32 0, i64 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* %6, align 8
  store i64 %71, i64* %3, align 8
  br label %194

72:                                               ; preds = %63
  store i64 0, i64* %11, align 8
  br label %73

73:                                               ; preds = %108, %72
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @IGP01E1000_PHY_CHANNEL_NUM, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %79 = load i32*, i32** @dsp_reg_array, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %78, i32 %82, i64* %7)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %3, align 8
  br label %194

88:                                               ; preds = %77
  %89 = load i64, i64* @IGP01E1000_PHY_EDAC_MU_INDEX, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* @IGP01E1000_PHY_EDAC_SIGN_EXT_9_BITS, align 8
  %94 = load i64, i64* %7, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %7, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %97 = load i32*, i32** @dsp_reg_array, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %96, i32 %100, i64 %101)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %88
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %3, align 8
  br label %194

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %73

111:                                              ; preds = %73
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %113 = load i64, i64* @IGP01E1000_IEEE_RESTART_AUTONEG, align 8
  %114 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %112, i32 0, i64 %113)
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  br label %194

119:                                              ; preds = %111
  %120 = call i32 @msleep(i32 20)
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %121, i32 12123, i64 %122)
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %6, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* %6, align 8
  store i64 %127, i64* %3, align 8
  br label %194

128:                                              ; preds = %119
  %129 = load i64, i64* @e1000_dsp_config_enabled, align 8
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %43
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @e1000_ffe_config_active, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %191

138:                                              ; preds = %132
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %140 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %139, i32 12123, i64* %8)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i64, i64* %6, align 8
  store i64 %144, i64* %3, align 8
  br label %194

145:                                              ; preds = %138
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %147 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %146, i32 12123, i64 3)
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %6, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i64, i64* %6, align 8
  store i64 %151, i64* %3, align 8
  br label %194

152:                                              ; preds = %145
  %153 = call i32 @msleep(i32 20)
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %155 = load i64, i64* @IGP01E1000_IEEE_FORCE_GIGA, align 8
  %156 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %154, i32 0, i64 %155)
  store i64 %156, i64* %6, align 8
  %157 = load i64, i64* %6, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i64, i64* %6, align 8
  store i64 %160, i64* %3, align 8
  br label %194

161:                                              ; preds = %152
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %163 = load i32, i32* @IGP01E1000_PHY_DSP_FFE, align 4
  %164 = load i64, i64* @IGP01E1000_PHY_DSP_FFE_DEFAULT, align 8
  %165 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %162, i32 %163, i64 %164)
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* %6, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i64, i64* %6, align 8
  store i64 %169, i64* %3, align 8
  br label %194

170:                                              ; preds = %161
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %172 = load i64, i64* @IGP01E1000_IEEE_RESTART_AUTONEG, align 8
  %173 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %171, i32 0, i64 %172)
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %6, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i64, i64* %6, align 8
  store i64 %177, i64* %3, align 8
  br label %194

178:                                              ; preds = %170
  %179 = call i32 @msleep(i32 20)
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %180, i32 12123, i64 %181)
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i64, i64* %6, align 8
  store i64 %186, i64* %3, align 8
  br label %194

187:                                              ; preds = %178
  %188 = load i64, i64* @e1000_ffe_config_enabled, align 8
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %190 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %132
  br label %192

192:                                              ; preds = %191, %42
  %193 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %193, i64* %3, align 8
  br label %194

194:                                              ; preds = %192, %185, %176, %168, %159, %150, %143, %126, %117, %105, %86, %70, %61, %54, %39, %27, %17
  %195 = load i64, i64* %3, align 8
  ret i64 %195
}

declare dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i64*, i64*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_1000Mb_check_cable_length(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
