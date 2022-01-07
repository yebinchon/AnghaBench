; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_find_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_find_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_fmt = type { i64, i64 }

@MTK_MDP_FMT_FLAG_OUTPUT = common dso_local global i64 0, align 8
@MTK_MDP_FMT_FLAG_CAPTURE = common dso_local global i64 0, align 8
@mtk_mdp_formats = common dso_local global %struct.mtk_mdp_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_mdp_fmt* (i64, i64)* @mtk_mdp_find_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_mdp_fmt* @mtk_mdp_find_fmt(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_mdp_fmt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @MTK_MDP_FMT_FLAG_OUTPUT, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @MTK_MDP_FMT_FLAG_CAPTURE, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %45, %15
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.mtk_mdp_fmt* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %23, i64 %24
  %26 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %45

32:                                               ; preds = %22
  %33 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %33, i64 %34
  %36 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** @mtk_mdp_formats, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %41, i64 %42
  store %struct.mtk_mdp_fmt* %43, %struct.mtk_mdp_fmt** %3, align 8
  br label %49

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %17

48:                                               ; preds = %17
  store %struct.mtk_mdp_fmt* null, %struct.mtk_mdp_fmt** %3, align 8
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %3, align 8
  ret %struct.mtk_mdp_fmt* %50
}

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mtk_mdp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
