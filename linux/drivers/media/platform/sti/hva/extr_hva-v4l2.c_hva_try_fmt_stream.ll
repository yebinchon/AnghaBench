; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_try_fmt_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_try_fmt_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64 }
%struct.hva_ctx = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.device = type { i32 }
%struct.hva_enc = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s V4L2 TRY_FMT (CAPTURE): unsupported format %.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HVA_FLAG_FRAMEINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"%s V4L2 TRY_FMT (CAPTURE): resolution updated %dx%d -> %dx%d to fit frame resolution\0A\00", align 1
@HVA_MIN_WIDTH = common dso_local global i32 0, align 4
@HVA_MIN_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"%s V4L2 TRY_FMT (CAPTURE): resolution updated %dx%d -> %dx%d to fit min/max/alignment\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @hva_try_fmt_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_try_fmt_stream(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.hva_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hva_enc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hva_ctx* @fh_to_ctx(i32 %18)
  store %struct.hva_ctx* %19, %struct.hva_ctx** %8, align 8
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %21 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %20)
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.v4l2_pix_format* %24, %struct.v4l2_pix_format** %10, align 8
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %29 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call %struct.hva_enc* @hva_find_encoder(%struct.hva_ctx* %28, i32 %32, i64 %33)
  store %struct.hva_enc* %34, %struct.hva_enc** %12, align 8
  %35 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %36 = icmp ne %struct.hva_enc* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %3
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 0
  %44 = bitcast i64* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %184

49:                                               ; preds = %3
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  %56 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HVA_FLAG_FRAMEINFO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %49
  %63 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %62
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80, %62
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %91, i64 %92, i64 %95, i64 %98)
  br label %100

100:                                              ; preds = %86, %80
  br label %141

101:                                              ; preds = %49
  %102 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %102, i32 0, i32 1
  %104 = load i32, i32* @HVA_MIN_WIDTH, align 4
  %105 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %106 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %108, i32 0, i32 2
  %110 = load i32, i32* @HVA_MIN_HEIGHT, align 4
  %111 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %112 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @v4l_bound_align_image(i64* %103, i32 %104, i32 %107, i32 0, i64* %109, i32 %110, i32 %113, i32 0, i32 0)
  %115 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %101
  %121 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %120, %101
  %127 = load %struct.device*, %struct.device** %9, align 8
  %128 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %129 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %130, i64 %131, i64 %132, i64 %135, i64 %138)
  br label %140

140:                                              ; preds = %126, %120
  br label %141

141:                                              ; preds = %140, %100
  %142 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %143 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @estimated_stream_size(i64 %144, i64 %147)
  store i64 %148, i64* %15, align 8
  %149 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %150 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %15, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %157 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %156, i32 0, i32 3
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %154, %141
  %159 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %160 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %159, i32 0, i32 9
  store i64 0, i64* %160, align 8
  %161 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %162 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %165 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %167 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %170 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 4
  %171 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %172 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 8
  %176 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %177 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %180 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %182 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %183 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %158, %37
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.hva_ctx* @fh_to_ctx(i32) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local %struct.hva_enc* @hva_find_encoder(%struct.hva_ctx*, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i32, i32, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @estimated_stream_size(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
