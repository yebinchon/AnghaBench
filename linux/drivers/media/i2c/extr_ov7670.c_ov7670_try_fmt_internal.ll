; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_try_fmt_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_try_fmt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7670_format_struct = type { i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64, i64, i32, i32 }
%struct.ov7670_win_size = type { i64, i64 }
%struct.ov7670_info = type { i64, i64, %struct.v4l2_mbus_framefmt, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ov7670_win_size* }

@N_OV7670_FMTS = common dso_local global i32 0, align 4
@ov7670_formats = common dso_local global %struct.ov7670_format_struct* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, %struct.ov7670_format_struct**, %struct.ov7670_win_size**)* @ov7670_try_fmt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_try_fmt_internal(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1, %struct.ov7670_format_struct** %2, %struct.ov7670_win_size** %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.ov7670_format_struct**, align 8
  %8 = alloca %struct.ov7670_win_size**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ov7670_win_size*, align 8
  %12 = alloca %struct.ov7670_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %6, align 8
  store %struct.ov7670_format_struct** %2, %struct.ov7670_format_struct*** %7, align 8
  store %struct.ov7670_win_size** %3, %struct.ov7670_win_size*** %8, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %15)
  store %struct.ov7670_info* %16, %struct.ov7670_info** %12, align 8
  %17 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %18 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %40, %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @N_OV7670_FMTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %28, i64 %30
  %32 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %23

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @N_OV7670_FMTS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  %48 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %49 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %43
  %55 = load %struct.ov7670_format_struct**, %struct.ov7670_format_struct*** %7, align 8
  %56 = icmp ne %struct.ov7670_format_struct** %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %58, i64 %60
  %62 = load %struct.ov7670_format_struct**, %struct.ov7670_format_struct*** %7, align 8
  store %struct.ov7670_format_struct* %61, %struct.ov7670_format_struct** %62, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %65 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %68 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %73 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %71, %63
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %108, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %83 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %86, i64 %88
  store %struct.ov7670_win_size* %89, %struct.ov7670_win_size** %11, align 8
  %90 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %91 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %94 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %81
  %98 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %99 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %102 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97, %81
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %14, align 4
  br label %111

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %77

111:                                              ; preds = %105, %77
  br label %112

112:                                              ; preds = %111, %71
  %113 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %114 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %116, align 8
  store %struct.ov7670_win_size* %117, %struct.ov7670_win_size** %11, align 8
  br label %118

118:                                              ; preds = %147, %112
  %119 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %120 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %121 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %124, i64 %126
  %128 = icmp ult %struct.ov7670_win_size* %119, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %118
  %130 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %131 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %134 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %129
  %138 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %142 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %150

146:                                              ; preds = %137, %129
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %149 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %148, i32 1
  store %struct.ov7670_win_size* %149, %struct.ov7670_win_size** %11, align 8
  br label %118

150:                                              ; preds = %145, %118
  %151 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %152 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %153 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %156, i64 %158
  %160 = icmp uge %struct.ov7670_win_size* %151, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %163 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %162, i32 -1
  store %struct.ov7670_win_size* %163, %struct.ov7670_win_size** %11, align 8
  br label %164

164:                                              ; preds = %161, %150
  %165 = load %struct.ov7670_win_size**, %struct.ov7670_win_size*** %8, align 8
  %166 = icmp ne %struct.ov7670_win_size** %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %169 = load %struct.ov7670_win_size**, %struct.ov7670_win_size*** %8, align 8
  store %struct.ov7670_win_size* %168, %struct.ov7670_win_size** %169, align 8
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %172 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %175 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %177 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %180 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %181, i64 %183
  %185 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %188 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.ov7670_info*, %struct.ov7670_info** %12, align 8
  %190 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %189, i32 0, i32 2
  %191 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %192 = bitcast %struct.v4l2_mbus_framefmt* %190 to i8*
  %193 = bitcast %struct.v4l2_mbus_framefmt* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 32, i1 false)
  ret i32 0
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
