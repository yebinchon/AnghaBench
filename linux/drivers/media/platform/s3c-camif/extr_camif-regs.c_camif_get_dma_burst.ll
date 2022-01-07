; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_get_dma_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_get_dma_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @camif_get_dma_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_get_dma_burst(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = and i32 %21, 7
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i1 [ true, %4 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %70

30:                                               ; preds = %24
  store i32 16, i32* %10, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp uge i32 %32, 2
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %67

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub i32 %41, 1
  %43 = and i32 %40, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %70

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = udiv i32 %53, 2
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = udiv i32 %58, 4
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %10, align 4
  %69 = udiv i32 %68, 2
  store i32 %69, i32* %10, align 4
  br label %31

70:                                               ; preds = %29, %61, %46, %31
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
