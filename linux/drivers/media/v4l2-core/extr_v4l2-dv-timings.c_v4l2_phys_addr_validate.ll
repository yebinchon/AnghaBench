; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_phys_addr_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_phys_addr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_phys_addr_validate(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %81

24:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 15, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %8, align 4
  br label %25

39:                                               ; preds = %34, %25
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %81

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 65520, %48
  %50 = and i32 %47, %49
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 15
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %77, %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 15, %69
  %71 = and i32 %68, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %81

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 4
  store i32 %79, i32* %8, align 4
  br label %64

80:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %73, %42, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
