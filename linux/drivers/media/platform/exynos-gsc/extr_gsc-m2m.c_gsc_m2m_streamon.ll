; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.gsc_ctx = type { i32 }

@GSC_SRC_FMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GSC_DST_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @gsc_m2m_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsc_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.gsc_ctx* @fh_to_ctx(i8* %9)
  store %struct.gsc_ctx* %10, %struct.gsc_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* @GSC_SRC_FMT, align 4
  %16 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %17 = call i32 @gsc_ctx_state_is_set(i32 %15, %struct.gsc_ctx* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %14
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @GSC_DST_FMT, align 4
  %25 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %26 = call i32 @gsc_ctx_state_is_set(i32 %24, %struct.gsc_ctx* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @v4l2_m2m_streamon(%struct.file* %33, i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %28, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @gsc_ctx_state_is_set(i32, %struct.gsc_ctx*) #1

declare dso_local i32 @v4l2_m2m_streamon(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
