; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc_ctrls.c_venc_calc_bpframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc_ctrls.c_venc_calc_bpframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @venc_calc_bpframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_calc_bpframes(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %85

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %12, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %59, %32
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = srem i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %59

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  br label %64

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %64

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  br label %34

64:                                               ; preds = %57, %52, %34
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %85

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %77, %67, %28, %20
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
