; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.coda_q_data = type { i32, i32, i32, i32, i32 }
%struct.coda_ctx = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @coda_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.coda_q_data*, align 8
  %9 = alloca %struct.coda_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.coda_ctx* @fh_to_ctx(i8* %10)
  store %struct.coda_ctx* %11, %struct.coda_ctx** %9, align 8
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %9, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %12, i32 %15)
  store %struct.coda_q_data* %16, %struct.coda_q_data** %8, align 8
  %17 = load %struct.coda_q_data*, %struct.coda_q_data** %8, align 8
  %18 = icmp ne %struct.coda_q_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %91

22:                                               ; preds = %3
  %23 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  store i32 %23, i32* %27, align 4
  %28 = load %struct.coda_q_data*, %struct.coda_q_data** %8, align 8
  %29 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 8
  store i32 %30, i32* %34, align 4
  %35 = load %struct.coda_q_data*, %struct.coda_q_data** %8, align 8
  %36 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  store i32 %37, i32* %41, align 4
  %42 = load %struct.coda_q_data*, %struct.coda_q_data** %8, align 8
  %43 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  store i32 %44, i32* %48, align 4
  %49 = load %struct.coda_q_data*, %struct.coda_q_data** %8, align 8
  %50 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i32 %51, i32* %55, align 4
  %56 = load %struct.coda_q_data*, %struct.coda_q_data** %8, align 8
  %57 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %58, i32* %62, align 4
  %63 = load %struct.coda_ctx*, %struct.coda_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.coda_ctx*, %struct.coda_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = load %struct.coda_ctx*, %struct.coda_ctx** %9, align 8
  %78 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.coda_ctx*, %struct.coda_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %22, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
