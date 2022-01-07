; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm5110-tables.c_wm5110_is_rev_b_adsp_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm5110-tables.c_wm5110_is_rev_b_adsp_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wm5110_is_rev_b_adsp_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_is_rev_b_adsp_memory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 1048576
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 1060864
  br i1 %8, label %99, label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp uge i32 %10, 1572864
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %13, 1576960
  br i1 %14, label %99, label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %3, align 4
  %17 = icmp uge i32 %16, 1638400
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %19, 1646592
  br i1 %20, label %99, label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %3, align 4
  %23 = icmp uge i32 %22, 1736704
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp ult i32 %25, 1740800
  br i1 %26, label %99, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp uge i32 %28, 2097152
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp ult i32 %31, 2134016
  br i1 %32, label %99, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %3, align 4
  %35 = icmp uge i32 %34, 2621440
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp ult i32 %37, 2625536
  br i1 %38, label %99, label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %3, align 4
  %41 = icmp uge i32 %40, 2686976
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp ult i32 %43, 2727936
  br i1 %44, label %99, label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  %47 = icmp uge i32 %46, 2785280
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp ult i32 %49, 2793472
  br i1 %50, label %99, label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %3, align 4
  %53 = icmp uge i32 %52, 3145728
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = icmp ult i32 %55, 3207168
  br i1 %56, label %99, label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %3, align 4
  %59 = icmp uge i32 %58, 3670016
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = icmp ult i32 %61, 3678208
  br i1 %62, label %99, label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %3, align 4
  %65 = icmp uge i32 %64, 3735552
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = icmp ult i32 %67, 3792896
  br i1 %68, label %99, label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %3, align 4
  %71 = icmp uge i32 %70, 3833856
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = icmp ult i32 %73, 3891200
  br i1 %74, label %99, label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %3, align 4
  %77 = icmp uge i32 %76, 4194304
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = icmp ult i32 %79, 4206592
  br i1 %80, label %99, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %3, align 4
  %83 = icmp uge i32 %82, 4718592
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = icmp ult i32 %85, 4722688
  br i1 %86, label %99, label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %3, align 4
  %89 = icmp uge i32 %88, 4784128
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp ult i32 %91, 4792320
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %3, align 4
  %95 = icmp uge i32 %94, 4882432
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = icmp ult i32 %97, 4886528
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30, %24, %18, %12, %6
  store i32 1, i32* %2, align 4
  br label %101

100:                                              ; preds = %96, %93
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
