; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_detect_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_detect_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i64, i64, i64 }
%struct.tda1997x_state = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_V_PER = common dso_local global i32 0, align 4
@MASK_VPER = common dso_local global i32 0, align 4
@REG_H_PER = common dso_local global i32 0, align 4
@MASK_HPER = common dso_local global i32 0, align 4
@REG_HS_WIDTH = common dso_local global i32 0, align 4
@MASK_HSWIDTH = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Signal Timings: %u/%u/%u\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@v4l2_dv_timings_presets = common dso_local global %struct.v4l2_dv_timings* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Detected format: \00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"no resolution match for timings: %d/%d/%d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1997x_state*, %struct.v4l2_dv_timings*)* @tda1997x_detect_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_detect_std(%struct.tda1997x_state* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda1997x_state*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_bt_timings*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %25 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %26 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %25, i32 0, i32 1
  store %struct.v4l2_subdev* %26, %struct.v4l2_subdev** %6, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %28 = load i32, i32* @REG_V_PER, align 4
  %29 = call i32 @io_read24(%struct.v4l2_subdev* %27, i32 %28)
  %30 = load i32, i32* @MASK_VPER, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = load i32, i32* @REG_H_PER, align 4
  %34 = call i32 @io_read16(%struct.v4l2_subdev* %32, i32 %33)
  %35 = load i32, i32* @MASK_HPER, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %38 = load i32, i32* @REG_HS_WIDTH, align 4
  %39 = call i32 @io_read16(%struct.v4l2_subdev* %37, i32 %38)
  %40 = load i32, i32* @MASK_HSWIDTH, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @debug, align 4
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @v4l2_dbg(i32 1, i32 %42, %struct.v4l2_subdev* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %2
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %50, %2
  %57 = load i32, i32* @ENOLINK, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %194

59:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %181, %59
  %61 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %61, i64 %63
  %65 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %184

69:                                               ; preds = %60
  %70 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %70, i64 %72
  %74 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %73, i32 0, i32 0
  store %struct.v4l2_bt_timings* %74, %struct.v4l2_bt_timings** %11, align 8
  %75 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %11, align 8
  %76 = call i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings* %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %11, align 8
  %78 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %11, align 8
  %80 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %13, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %14, align 4
  %85 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %11, align 8
  %86 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %69
  %90 = load i32, i32* %12, align 4
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %89, %69
  %93 = load i32, i32* %14, align 4
  %94 = sdiv i32 26811000, %93
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 %94, %95
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sdiv i32 27189000, %97
  %99 = load i32, i32* %12, align 4
  %100 = mul nsw i32 %98, %99
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sdiv i32 26730000, %101
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sdiv i32 27270000, %103
  store i32 %104, i32* %19, align 4
  %105 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %11, align 8
  %106 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 27000, %107
  %109 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %11, align 8
  %110 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = sdiv i32 %112, 1000
  %114 = sdiv i32 %108, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %115, 2
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %92
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp sge i32 %123, %124
  br label %126

126:                                              ; preds = %122, %92
  %127 = phi i1 [ false, %92 ], [ %125, %122 ]
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  store i32 %129, i32* %22, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp sge i32 %134, %135
  br label %137

137:                                              ; preds = %133, %126
  %138 = phi i1 [ false, %126 ], [ %136, %133 ]
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %21, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp sge i32 %145, %146
  br label %148

148:                                              ; preds = %144, %137
  %149 = phi i1 [ false, %137 ], [ %147, %144 ]
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  store i32 %151, i32* %24, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %180

154:                                              ; preds = %148
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %154
  %158 = load i32, i32* %24, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %157
  %161 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %162 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %164, i64 %166
  %168 = call i32 @v4l2_print_dv_timings(i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.v4l2_dv_timings* %167, i32 0)
  %169 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %170 = icmp ne %struct.v4l2_dv_timings* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %160
  %172 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %173 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %173, i64 %175
  %177 = bitcast %struct.v4l2_dv_timings* %172 to i8*
  %178 = bitcast %struct.v4l2_dv_timings* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 32, i1 false)
  br label %179

179:                                              ; preds = %171, %160
  store i32 0, i32* %3, align 4
  br label %194

180:                                              ; preds = %157, %154, %148
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %60

184:                                              ; preds = %60
  %185 = load %struct.tda1997x_state*, %struct.tda1997x_state** %4, align 8
  %186 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @v4l_err(i32 %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* @ERANGE, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %184, %179, %56
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @io_read24(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_read16(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @v4l2_print_dv_timings(i32, i8*, %struct.v4l2_dv_timings*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
