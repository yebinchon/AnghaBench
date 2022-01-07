; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_calculate_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_calculate_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_obj = type { %struct.vpif_params, %struct.video_obj, %struct.common_obj* }
%struct.vpif_params = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.video_obj = type { i64 }
%struct.common_obj = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_BT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*)* @vpif_calculate_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_calculate_offsets(%struct.channel_obj* %0) #0 {
  %2 = alloca %struct.channel_obj*, align 8
  %3 = alloca %struct.common_obj*, align 8
  %4 = alloca %struct.vpif_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %2, align 8
  %9 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %10 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %9, i32 0, i32 2
  %11 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %12 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %13 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %11, i64 %12
  store %struct.common_obj* %13, %struct.common_obj** %3, align 8
  %14 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %15 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %14, i32 0, i32 0
  store %struct.vpif_params* %15, %struct.vpif_params** %4, align 8
  %16 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %17 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %23 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %22, i32 0, i32 1
  store %struct.video_obj* %23, %struct.video_obj** %6, align 8
  %24 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %25 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %24, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %35 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %42 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %43 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %48

44:                                               ; preds = %33
  %45 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %46 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %47 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %59

49:                                               ; preds = %1
  %50 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %51 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %58 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %49, %48
  %60 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %61 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %67 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %73 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %74 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %59
  %78 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %79 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %80 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %77, %59
  %84 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %85 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %88 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = udiv i32 %89, 2
  %91 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %92 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = udiv i32 %93, 2
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %94, %95
  %97 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %98 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %151

99:                                               ; preds = %77
  %100 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %101 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %102 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %107 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = udiv i32 %108, 4
  %110 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %111 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = udiv i32 %112, 2
  %114 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %115 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %117 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = udiv i32 %119, 4
  %121 = add i32 %118, %120
  %122 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %123 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %150

124:                                              ; preds = %99
  %125 = load i64, i64* @V4L2_FIELD_SEQ_BT, align 8
  %126 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %127 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %132 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = udiv i32 %133, 4
  %135 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %136 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %8, align 4
  %138 = udiv i32 %137, 2
  %139 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %140 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %142 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = udiv i32 %144, 4
  %146 = add i32 %143, %145
  %147 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %148 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %130, %124
  br label %150

150:                                              ; preds = %149, %105
  br label %151

151:                                              ; preds = %150, %83
  %152 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %153 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %154 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %159 = load %struct.video_obj*, %struct.video_obj** %6, align 8
  %160 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157, %151
  %164 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %165 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 4
  br label %171

167:                                              ; preds = %157
  %168 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %169 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %173 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %188

178:                                              ; preds = %171
  %179 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %180 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %186 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 4
  br label %220

188:                                              ; preds = %171
  %189 = load i32, i32* %5, align 4
  %190 = zext i32 %189 to i64
  %191 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %5, align 4
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %193, %188
  %199 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %200 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = mul i32 %204, 2
  %206 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %207 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  br label %219

209:                                              ; preds = %193
  %210 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %211 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %217 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %209, %198
  br label %220

220:                                              ; preds = %219, %178
  %221 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %222 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %227 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  store i32 %225, i32* %229, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
