; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_update_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @e1000_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_update_itr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  br label %88

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %86 [
    i32 128, label %16
    i32 129, label %31
    i32 130, label %72
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp sgt i32 %19, 8000
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 130, i32* %8, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 512
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 129, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25, %22
  br label %30

30:                                               ; preds = %29, %21
  br label %86

31:                                               ; preds = %14
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 10000
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 %35, %36
  %38 = icmp sgt i32 %37, 8000
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 130, i32* %8, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %44, %45
  %47 = icmp sgt i32 %46, 1200
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %40
  store i32 130, i32* %8, align 4
  br label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 35
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 128, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54, %39
  br label %71

56:                                               ; preds = %31
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %57, %58
  %60 = icmp sgt i32 %59, 2000
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 130, i32* %8, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = icmp sle i32 %63, 2
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 512
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 128, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %65, %62
  br label %70

70:                                               ; preds = %69, %61
  br label %71

71:                                               ; preds = %70, %55
  br label %86

72:                                               ; preds = %14
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 25000
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 35
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 129, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %85

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 6000
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 129, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %14, %85, %71, %30
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %12
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
