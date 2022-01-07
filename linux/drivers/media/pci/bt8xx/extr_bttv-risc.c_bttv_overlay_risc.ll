; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_overlay_risc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_overlay_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bttv_overlay = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bttv_format = type { i32, i32, i32 }
%struct.bttv_buffer = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"%d: overlay fields: %s format: 0x%08x  size: %dx%d\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@bttv_tvnorms = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_overlay_risc(%struct.bttv* %0, %struct.bttv_overlay* %1, %struct.bttv_format* %2, %struct.bttv_buffer* %3) #0 {
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_overlay*, align 8
  %7 = alloca %struct.bttv_format*, align 8
  %8 = alloca %struct.bttv_buffer*, align 8
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.bttv_overlay* %1, %struct.bttv_overlay** %6, align 8
  store %struct.bttv_format* %2, %struct.bttv_format** %7, align 8
  store %struct.bttv_buffer* %3, %struct.bttv_buffer** %8, align 8
  %9 = load %struct.bttv*, %struct.bttv** %5, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @v4l2_field_names, align 8
  %14 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %15 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %21 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %24 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %28 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %19, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.bttv*, %struct.bttv** %5, align 8
  %33 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %33, i32 0, i32 6
  %35 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %36 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %40 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %44 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %45)
  %47 = load i32*, i32** @bttv_tvnorms, align 8
  %48 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %49 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %53 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %52, i32 0, i32 5
  %54 = call i32 @bttv_calc_geo(%struct.bttv* %32, i32* %34, i32 %38, i32 %42, i32 %46, i32* %51, i32* %53)
  %55 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %56 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %85 [
    i32 128, label %58
    i32 130, label %65
    i32 129, label %72
  ]

58:                                               ; preds = %4
  %59 = load %struct.bttv*, %struct.bttv** %5, align 8
  %60 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %61 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %60, i32 0, i32 4
  %62 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %63 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %64 = call i32 @bttv_risc_overlay(%struct.bttv* %59, i32* %61, %struct.bttv_format* %62, %struct.bttv_overlay* %63, i32 0, i32 0)
  br label %87

65:                                               ; preds = %4
  %66 = load %struct.bttv*, %struct.bttv** %5, align 8
  %67 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %67, i32 0, i32 3
  %69 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %70 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %71 = call i32 @bttv_risc_overlay(%struct.bttv* %66, i32* %68, %struct.bttv_format* %69, %struct.bttv_overlay* %70, i32 0, i32 0)
  br label %87

72:                                               ; preds = %4
  %73 = load %struct.bttv*, %struct.bttv** %5, align 8
  %74 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %75 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %74, i32 0, i32 4
  %76 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %77 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %78 = call i32 @bttv_risc_overlay(%struct.bttv* %73, i32* %75, %struct.bttv_format* %76, %struct.bttv_overlay* %77, i32 0, i32 1)
  %79 = load %struct.bttv*, %struct.bttv** %5, align 8
  %80 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %81 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %80, i32 0, i32 3
  %82 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %83 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %84 = call i32 @bttv_risc_overlay(%struct.bttv* %79, i32* %81, %struct.bttv_format* %82, %struct.bttv_overlay* %83, i32 1, i32 0)
  br label %87

85:                                               ; preds = %4
  %86 = call i32 (...) @BUG()
  br label %87

87:                                               ; preds = %85, %72, %65, %58
  %88 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %89 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %92 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bttv_format*, %struct.bttv_format** %7, align 8
  %94 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %97 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.bttv_overlay*, %struct.bttv_overlay** %6, align 8
  %99 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load %struct.bttv_buffer*, %struct.bttv_buffer** %8, align 8
  %103 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bttv_calc_geo(%struct.bttv*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @bttv_risc_overlay(%struct.bttv*, i32*, %struct.bttv_format*, %struct.bttv_overlay*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
