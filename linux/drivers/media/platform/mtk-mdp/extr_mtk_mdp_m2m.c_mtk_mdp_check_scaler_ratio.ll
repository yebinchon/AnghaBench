; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_check_scaler_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_check_scaler_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_variant = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_mdp_variant*, i32, i32, i32, i32, i32)* @mtk_mdp_check_scaler_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_check_scaler_ratio(%struct.mtk_mdp_variant* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_mdp_variant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtk_mdp_variant* %0, %struct.mtk_mdp_variant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp eq i32 %16, 90
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, 270
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %6
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %15, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sdiv i32 %28, %29
  %31 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %8, align 8
  %40 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %44, %45
  %47 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %8, align 8
  %48 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %8, align 8
  %56 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %43, %35, %27
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
