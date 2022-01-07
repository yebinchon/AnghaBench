; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_validate_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_validate_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ivtv_validate_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_validate_speed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 -1, i32 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1000, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 1500
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 2000
  store i32 %36, i32* %3, align 4
  br label %105

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 1000
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 1500
  store i32 %42, i32* %3, align 4
  br label %105

43:                                               ; preds = %37
  br label %63

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 2000
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 2000
  store i32 %49, i32* %3, align 4
  br label %105

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = icmp sge i32 %51, 1500
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 1500
  store i32 %55, i32* %3, align 4
  br label %105

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %57, 1000
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 1000
  store i32 %61, i32* %3, align 4
  br label %105

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1000, i32* %3, align 4
  br label %105

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 1000
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %3, align 4
  br label %105

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sdiv i32 1000, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sdiv i32 1000, %81
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 -1, i32 1
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %77
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %94, 60
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 %97, 60
  %99 = sdiv i32 1000, %98
  store i32 %99, i32* %3, align 4
  br label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sdiv i32 1000, %103
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %96, %73, %66, %59, %53, %47, %40, %34
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
