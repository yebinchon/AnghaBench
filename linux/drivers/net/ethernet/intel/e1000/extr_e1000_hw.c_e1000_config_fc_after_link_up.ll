; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_config_fc_after_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_config_fc_after_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i8*, i64, i64, i64 }

@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error forcing flow control settings\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@NWAY_LPAR_PAUSE = common dso_local global i32 0, align 4
@E1000_FC_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@E1000_FC_RX_PAUSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_LPAR_ASM_DIR = common dso_local global i32 0, align 4
@E1000_FC_TX_PAUSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", align 1
@E1000_FC_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_config_fc_after_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_config_fc_after_link_up(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_media_type_fiber, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_media_type_copper, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37, %26, %15
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = call i64 @e1000_force_mac_fc(%struct.e1000_hw* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %240

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %37, %31
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @e1000_media_type_copper, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %238

57:                                               ; preds = %51
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %238

62:                                               ; preds = %57
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = load i32, i32* @PHY_STATUS, align 4
  %65 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %63, i32 %64, i32* %5)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %2, align 8
  br label %240

70:                                               ; preds = %62
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = load i32, i32* @PHY_STATUS, align 4
  %73 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %71, i32 %72, i32* %5)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %2, align 8
  br label %240

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @MII_SR_AUTONEG_COMPLETE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %235

83:                                               ; preds = %78
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %86 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %84, i32 %85, i32* %6)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i64, i64* %4, align 8
  store i64 %90, i64* %2, align 8
  br label %240

91:                                               ; preds = %83
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = load i32, i32* @PHY_LP_ABILITY, align 4
  %94 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %92, i32 %93, i32* %7)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* %4, align 8
  store i64 %98, i64* %2, align 8
  br label %240

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @NWAY_LPAR_PAUSE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @E1000_FC_FULL, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i64, i64* @E1000_FC_FULL, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %126

121:                                              ; preds = %109
  %122 = load i8*, i8** @E1000_FC_RX_PAUSE, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %115
  br label %209

127:                                              ; preds = %104, %99
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @NWAY_LPAR_PAUSE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @NWAY_LPAR_ASM_DIR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i64, i64* @E1000_FC_TX_PAUSE, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %151 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %208

153:                                              ; preds = %142, %137, %132, %127
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @NWAY_LPAR_PAUSE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @NWAY_LPAR_ASM_DIR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i8*, i8** @E1000_FC_RX_PAUSE, align 8
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %176 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  %177 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %207

178:                                              ; preds = %168, %163, %158, %153
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %180 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @E1000_FC_NONE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %178
  %185 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %186 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @E1000_FC_TX_PAUSE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %192 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190, %184, %178
  %196 = load i64, i64* @E1000_FC_NONE, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %199 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %206

201:                                              ; preds = %190
  %202 = load i8*, i8** @E1000_FC_RX_PAUSE, align 8
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %204 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  %205 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %206

206:                                              ; preds = %201, %195
  br label %207

207:                                              ; preds = %206, %173
  br label %208

208:                                              ; preds = %207, %147
  br label %209

209:                                              ; preds = %208, %126
  %210 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %211 = call i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %210, i32* %8, i32* %9)
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %4, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %216 = load i64, i64* %4, align 8
  store i64 %216, i64* %2, align 8
  br label %240

217:                                              ; preds = %209
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @HALF_DUPLEX, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i64, i64* @E1000_FC_NONE, align 8
  %223 = inttoptr i64 %222 to i8*
  %224 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %225 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %224, i32 0, i32 2
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %221, %217
  %227 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %228 = call i64 @e1000_force_mac_fc(%struct.e1000_hw* %227)
  store i64 %228, i64* %4, align 8
  %229 = load i64, i64* %4, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %233 = load i64, i64* %4, align 8
  store i64 %233, i64* %2, align 8
  br label %240

234:                                              ; preds = %226
  br label %237

235:                                              ; preds = %78
  %236 = call i32 @e_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %234
  br label %238

238:                                              ; preds = %237, %57, %51
  %239 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %239, i64* %2, align 8
  br label %240

240:                                              ; preds = %238, %231, %214, %97, %89, %76, %68, %47
  %241 = load i64, i64* %2, align 8
  ret i64 %241
}

declare dso_local i64 @e1000_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
