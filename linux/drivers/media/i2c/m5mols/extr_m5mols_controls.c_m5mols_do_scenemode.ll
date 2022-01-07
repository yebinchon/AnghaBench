; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_do_scenemode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_do_scenemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_scenemode = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.m5mols_info = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@m5mols_default_scenemode = common dso_local global %struct.m5mols_scenemode* null, align 8
@REG_SCENE_CANDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AE_EV_PRESET_MONITOR = common dso_local global i32 0, align 4
@AE_EV_PRESET_CAPTURE = common dso_local global i32 0, align 4
@AE_MODE = common dso_local global i32 0, align 4
@AE_INDEX = common dso_local global i32 0, align 4
@AWB_MODE = common dso_local global i32 0, align 4
@AWB_MANUAL = common dso_local global i32 0, align 4
@MON_CHROMA_EN = common dso_local global i32 0, align 4
@MON_CHROMA_LVL = common dso_local global i32 0, align 4
@MON_EDGE_EN = common dso_local global i32 0, align 4
@MON_EDGE_LVL = common dso_local global i32 0, align 4
@AF_MODE = common dso_local global i32 0, align 4
@FD_CTL = common dso_local global i32 0, align 4
@MON_TONE_CTL = common dso_local global i32 0, align 4
@AE_ISO = common dso_local global i32 0, align 4
@REG_CAPTURE = common dso_local global i32 0, align 4
@CAPP_WDR_EN = common dso_local global i32 0, align 4
@CAPP_MCC_MODE = common dso_local global i32 0, align 4
@CAPP_LIGHT_CTRL = common dso_local global i32 0, align 4
@CAPP_FLASH_CTRL = common dso_local global i32 0, align 4
@CAPC_MODE = common dso_local global i32 0, align 4
@REG_MONITOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_do_scenemode(%struct.m5mols_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.m5mols_scenemode, align 8
  %8 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %10 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %9, i32 0, i32 1
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %6, align 8
  %11 = load %struct.m5mols_scenemode*, %struct.m5mols_scenemode** @m5mols_default_scenemode, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %11, i64 %12
  %14 = bitcast %struct.m5mols_scenemode* %7 to i8*
  %15 = bitcast %struct.m5mols_scenemode* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 136, i1 false)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @REG_SCENE_CANDLE, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %219

22:                                               ; preds = %2
  %23 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %24 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @v4l2_ctrl_s_ctrl(i32 %25, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %31 = load i32, i32* @AE_EV_PRESET_MONITOR, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @m5mols_write(%struct.v4l2_subdev* %30, i32 %31, i64 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = load i32, i32* @AE_EV_PRESET_CAPTURE, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @m5mols_write(%struct.v4l2_subdev* %38, i32 %39, i64 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %47 = load i32, i32* @AE_MODE, align 4
  %48 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @m5mols_write(%struct.v4l2_subdev* %46, i32 %47, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %56 = load i32, i32* @AE_INDEX, align 4
  %57 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @m5mols_write(%struct.v4l2_subdev* %55, i32 %56, i64 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %65 = load i32, i32* @AWB_MODE, align 4
  %66 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @m5mols_write(%struct.v4l2_subdev* %64, i32 %65, i64 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %74 = load i32, i32* @AWB_MANUAL, align 4
  %75 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @m5mols_write(%struct.v4l2_subdev* %73, i32 %74, i64 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %83 = load i32, i32* @MON_CHROMA_EN, align 4
  %84 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @m5mols_write(%struct.v4l2_subdev* %82, i32 %83, i64 %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %92 = load i32, i32* @MON_CHROMA_LVL, align 4
  %93 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @m5mols_write(%struct.v4l2_subdev* %91, i32 %92, i64 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %90, %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %101 = load i32, i32* @MON_EDGE_EN, align 4
  %102 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @m5mols_write(%struct.v4l2_subdev* %100, i32 %101, i64 %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %110 = load i32, i32* @MON_EDGE_LVL, align 4
  %111 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @m5mols_write(%struct.v4l2_subdev* %109, i32 %110, i64 %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %108, %105
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  %118 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %119 = call i64 @is_available_af(%struct.m5mols_info* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %123 = load i32, i32* @AF_MODE, align 4
  %124 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @m5mols_write(%struct.v4l2_subdev* %122, i32 %123, i64 %125)
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %117, %114
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %127
  %131 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %132 = call i64 @is_available_af(%struct.m5mols_info* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %136 = load i32, i32* @FD_CTL, align 4
  %137 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 9
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @m5mols_write(%struct.v4l2_subdev* %135, i32 %136, i64 %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %134, %130, %127
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %145 = load i32, i32* @MON_TONE_CTL, align 4
  %146 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 10
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @m5mols_write(%struct.v4l2_subdev* %144, i32 %145, i64 %147)
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %143, %140
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %154 = load i32, i32* @AE_ISO, align 4
  %155 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 11
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @m5mols_write(%struct.v4l2_subdev* %153, i32 %154, i64 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %152, %149
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %163 = load i32, i32* @REG_CAPTURE, align 4
  %164 = call i32 @m5mols_set_mode(%struct.m5mols_info* %162, i32 %163)
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %170 = load i32, i32* @CAPP_WDR_EN, align 4
  %171 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @m5mols_write(%struct.v4l2_subdev* %169, i32 %170, i64 %172)
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %168, %165
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %179 = load i32, i32* @CAPP_MCC_MODE, align 4
  %180 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 13
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @m5mols_write(%struct.v4l2_subdev* %178, i32 %179, i64 %181)
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %177, %174
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %183
  %187 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %188 = load i32, i32* @CAPP_LIGHT_CTRL, align 4
  %189 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 14
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @m5mols_write(%struct.v4l2_subdev* %187, i32 %188, i64 %190)
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %186, %183
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %197 = load i32, i32* @CAPP_FLASH_CTRL, align 4
  %198 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 15
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @m5mols_write(%struct.v4l2_subdev* %196, i32 %197, i64 %199)
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %195, %192
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %201
  %205 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %206 = load i32, i32* @CAPC_MODE, align 4
  %207 = getelementptr inbounds %struct.m5mols_scenemode, %struct.m5mols_scenemode* %7, i32 0, i32 16
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @m5mols_write(%struct.v4l2_subdev* %205, i32 %206, i64 %208)
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %204, %201
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %215 = load i32, i32* @REG_MONITOR, align 4
  %216 = call i32 @m5mols_set_mode(%struct.m5mols_info* %214, i32 %215)
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %19
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #2

declare dso_local i32 @m5mols_write(%struct.v4l2_subdev*, i32, i64) #2

declare dso_local i64 @is_available_af(%struct.m5mols_info*) #2

declare dso_local i32 @m5mols_set_mode(%struct.m5mols_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
