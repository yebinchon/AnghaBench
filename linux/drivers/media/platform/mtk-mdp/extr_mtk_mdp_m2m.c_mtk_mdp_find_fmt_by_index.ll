; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_find_fmt_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_find_fmt_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_fmt = type { i64 }

@MTK_MDP_FMT_FLAG_OUTPUT = common dso_local global i64 0, align 8
@MTK_MDP_FMT_FLAG_CAPTURE = common dso_local global i64 0, align 8
@mtk_mdp_formats = common dso_local global %struct.mtk_mdp_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_mdp_fmt* (i64, i64)* @mtk_mdp_find_fmt_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_mdp_fmt* @mtk_mdp_find_fmt_by_index(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_mdp_fmt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @MTK_MDP_FMT_FLAG_OUTPUT, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @MTK_MDP_FMT_FLAG_CAPTURE, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %44, %16
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.mtk_mdp_fmt* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %24, i64 %25
  %27 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %44

33:                                               ; preds = %23
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %38, i64 %39
  store %struct.mtk_mdp_fmt* %40, %struct.mtk_mdp_fmt** %3, align 8
  br label %48

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %18

47:                                               ; preds = %18
  store %struct.mtk_mdp_fmt* null, %struct.mtk_mdp_fmt** %3, align 8
  br label %48

48:                                               ; preds = %47, %37
  %49 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %3, align 8
  ret %struct.mtk_mdp_fmt* %49
}

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mtk_mdp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
