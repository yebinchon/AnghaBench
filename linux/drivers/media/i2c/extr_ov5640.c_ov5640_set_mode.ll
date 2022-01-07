; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i64, i32, %struct.ov5640_mode_info*, i32, %struct.TYPE_14__, %struct.TYPE_10__, %struct.ov5640_mode_info* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ov5640_mode_info = type { i32, i32, i32 }

@V4L2_EXPOSURE_AUTO = common dso_local global i64 0, align 8
@ov5640_framerates = common dso_local global i64* null, align 8
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@SUBSAMPLING = common dso_local global i32 0, align 4
@SCALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*)* @ov5640_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_mode(%struct.ov5640_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca %struct.ov5640_mode_info*, align 8
  %5 = alloca %struct.ov5640_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  %12 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %12, i32 0, i32 6
  %14 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %13, align 8
  store %struct.ov5640_mode_info* %14, %struct.ov5640_mode_info** %4, align 8
  %15 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %15, i32 0, i32 2
  %17 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %16, align 8
  store %struct.ov5640_mode_info* %17, %struct.ov5640_mode_info** %5, align 8
  %18 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %19 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %27 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_EXPOSURE_AUTO, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %36 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %39 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %45 = call i32 @ov5640_set_autogain(%struct.ov5640_dev* %44, i32 0)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %2, align 4
  br label %216

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %56 = call i32 @ov5640_set_autoexposure(%struct.ov5640_dev* %55, i32 0)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %208

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %63 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %66 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = mul nsw i32 %68, 16
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %10, align 8
  %71 = load i64*, i64** @ov5640_framerates, align 8
  %72 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %73 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = mul i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %80 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %61
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %88 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = udiv i64 %86, %92
  store i64 %93, i64* %10, align 8
  %94 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @ov5640_set_mipi_pclk(%struct.ov5640_dev* %94, i64 %95)
  store i32 %96, i32* %11, align 4
  br label %109

97:                                               ; preds = %61
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %100 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = udiv i64 %98, %104
  store i64 %105, i64* %10, align 8
  %106 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @ov5640_set_dvp_pclk(%struct.ov5640_dev* %106, i64 %107)
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %97, %85
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %216

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @SUBSAMPLING, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @SCALING, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @SCALING, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @SUBSAMPLING, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125, %117
  %130 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %131 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %132 = call i32 @ov5640_set_mode_exposure_calc(%struct.ov5640_dev* %130, %struct.ov5640_mode_info* %131)
  store i32 %132, i32* %11, align 4
  br label %137

133:                                              ; preds = %125, %121
  %134 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %135 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %136 = call i32 @ov5640_set_mode_direct(%struct.ov5640_dev* %134, %struct.ov5640_mode_info* %135)
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %201

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %146 = call i32 @ov5640_set_autogain(%struct.ov5640_dev* %145, i32 1)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %152 = call i32 @ov5640_set_autoexposure(%struct.ov5640_dev* %151, i32 1)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @SCALING, align 4
  %157 = icmp ne i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @ov5640_set_binning(%struct.ov5640_dev* %154, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %2, align 4
  br label %216

164:                                              ; preds = %153
  %165 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %166 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %167 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ov5640_set_ae_target(%struct.ov5640_dev* %165, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %2, align 4
  br label %216

174:                                              ; preds = %164
  %175 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %176 = call i32 @ov5640_get_light_freq(%struct.ov5640_dev* %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %2, align 4
  br label %216

181:                                              ; preds = %174
  %182 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %183 = call i32 @ov5640_set_bandingfilter(%struct.ov5640_dev* %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %2, align 4
  br label %216

188:                                              ; preds = %181
  %189 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %190 = call i32 @ov5640_set_virtual_channel(%struct.ov5640_dev* %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %2, align 4
  br label %216

195:                                              ; preds = %188
  %196 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %197 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %196, i32 0, i32 1
  store i32 0, i32* %197, align 8
  %198 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %199 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %200 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %199, i32 0, i32 2
  store %struct.ov5640_mode_info* %198, %struct.ov5640_mode_info** %200, align 8
  store i32 0, i32* %2, align 4
  br label %216

201:                                              ; preds = %140
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %206 = call i32 @ov5640_set_autoexposure(%struct.ov5640_dev* %205, i32 1)
  br label %207

207:                                              ; preds = %204, %201
  br label %208

208:                                              ; preds = %207, %59
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %213 = call i32 @ov5640_set_autogain(%struct.ov5640_dev* %212, i32 1)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %214, %195, %193, %186, %179, %172, %162, %112, %48
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @ov5640_set_autogain(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_autoexposure(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_mipi_pclk(%struct.ov5640_dev*, i64) #1

declare dso_local i32 @ov5640_set_dvp_pclk(%struct.ov5640_dev*, i64) #1

declare dso_local i32 @ov5640_set_mode_exposure_calc(%struct.ov5640_dev*, %struct.ov5640_mode_info*) #1

declare dso_local i32 @ov5640_set_mode_direct(%struct.ov5640_dev*, %struct.ov5640_mode_info*) #1

declare dso_local i32 @ov5640_set_binning(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ae_target(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_get_light_freq(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_set_bandingfilter(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_set_virtual_channel(%struct.ov5640_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
