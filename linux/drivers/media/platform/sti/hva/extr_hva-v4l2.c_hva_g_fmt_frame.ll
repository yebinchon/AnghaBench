; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_g_fmt_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_g_fmt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hva_ctx = type { i32, i32, i32, i32, %struct.hva_frameinfo }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @hva_g_fmt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_g_fmt_frame(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.hva_ctx*, align 8
  %8 = alloca %struct.hva_frameinfo*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hva_ctx* @fh_to_ctx(i32 %11)
  store %struct.hva_ctx* %12, %struct.hva_ctx** %7, align 8
  %13 = load %struct.hva_ctx*, %struct.hva_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %13, i32 0, i32 4
  store %struct.hva_frameinfo* %14, %struct.hva_frameinfo** %8, align 8
  %15 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %8, align 8
  %16 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 9
  store i32 %17, i32* %21, align 4
  %22 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %8, align 8
  %23 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  store i32 %29, i32* %33, align 4
  %34 = load %struct.hva_ctx*, %struct.hva_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  store i32 %36, i32* %40, align 4
  %41 = load %struct.hva_ctx*, %struct.hva_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i32 %43, i32* %47, align 4
  %48 = load %struct.hva_ctx*, %struct.hva_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 4
  %55 = load %struct.hva_ctx*, %struct.hva_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %57, i32* %61, align 4
  %62 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %8, align 8
  %63 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  %69 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %8, align 8
  %70 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %8, align 8
  %73 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @frame_stride(i32 %71, i32 %74)
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %8, align 8
  %81 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  ret i32 0
}

declare dso_local %struct.hva_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @frame_stride(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
