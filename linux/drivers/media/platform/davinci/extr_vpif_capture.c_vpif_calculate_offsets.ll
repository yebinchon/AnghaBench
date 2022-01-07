; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_calculate_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_calculate_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_obj = type { %struct.vpif_params, %struct.common_obj*, %struct.video_obj }
%struct.vpif_params = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.common_obj = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.video_obj = type { i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vpif_calculate_offsets\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*)* @vpif_calculate_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_calculate_offsets(%struct.channel_obj* %0) #0 {
  %2 = alloca %struct.channel_obj*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_obj*, align 8
  %6 = alloca %struct.vpif_params*, align 8
  %7 = alloca %struct.common_obj*, align 8
  %8 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %2, align 8
  %9 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %10 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %9, i32 0, i32 2
  store %struct.video_obj* %10, %struct.video_obj** %5, align 8
  %11 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %12 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %11, i32 0, i32 0
  store %struct.vpif_params* %12, %struct.vpif_params** %6, align 8
  %13 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %14 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %13, i32 0, i32 1
  %15 = load %struct.common_obj*, %struct.common_obj** %14, align 8
  %16 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %17 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %15, i64 %16
  store %struct.common_obj* %17, %struct.common_obj** %7, align 8
  %18 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @debug, align 4
  %25 = call i32 @vpif_dbg(i32 2, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %1
  %30 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %31 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %37 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %38 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %43

39:                                               ; preds = %29
  %40 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %41 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %42 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %54

44:                                               ; preds = %1
  %45 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %46 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %53 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %43
  %55 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %56 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %62 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  %67 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %68 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %69 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %54
  %73 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %74 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %75 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72, %54
  %79 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %80 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %83 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = udiv i32 %84, 2
  %86 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %87 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  %89 = udiv i32 %88, 2
  %90 = load i32, i32* %3, align 4
  %91 = add i32 %89, %90
  %92 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %93 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %146

94:                                               ; preds = %72
  %95 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %96 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %97 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load i32, i32* %4, align 4
  %104 = udiv i32 %103, 4
  %105 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %106 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %4, align 4
  %108 = udiv i32 %107, 2
  %109 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %110 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %112 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = udiv i32 %114, 4
  %116 = add i32 %113, %115
  %117 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %118 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %145

119:                                              ; preds = %94
  %120 = load i64, i64* @V4L2_FIELD_SEQ_BT, align 8
  %121 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %122 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %127 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %4, align 4
  %129 = udiv i32 %128, 4
  %130 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %131 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %4, align 4
  %133 = udiv i32 %132, 2
  %134 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %135 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %137 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %4, align 4
  %140 = udiv i32 %139, 4
  %141 = add i32 %138, %140
  %142 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %143 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %125, %119
  br label %145

145:                                              ; preds = %144, %100
  br label %146

146:                                              ; preds = %145, %78
  %147 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %148 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %149 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %154 = load %struct.video_obj*, %struct.video_obj** %5, align 8
  %155 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152, %146
  %159 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %160 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  br label %166

162:                                              ; preds = %152
  %163 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %164 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %158
  %167 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %168 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 1, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %174 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %180 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  br label %213

182:                                              ; preds = %166
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %186, %182
  %192 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %193 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = mul i32 %197, 2
  %199 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %200 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  br label %212

202:                                              ; preds = %186
  %203 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %204 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %210 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  br label %212

212:                                              ; preds = %202, %191
  br label %213

213:                                              ; preds = %212, %172
  %214 = load %struct.vpif_params*, %struct.vpif_params** %6, align 8
  %215 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %219 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  store i32 %217, i32* %221, align 8
  ret void
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
