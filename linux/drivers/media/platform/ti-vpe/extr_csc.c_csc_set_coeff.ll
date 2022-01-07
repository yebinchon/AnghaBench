; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_csc.c_csc_set_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_csc.c_csc_set_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colorspace_coeffs = type { i32*, i32* }
%struct.csc_data = type { i32 }

@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@CSC_BYPASS = common dso_local global i32 0, align 4
@colorspace_coeffs = common dso_local global %struct.colorspace_coeffs* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csc_set_coeff(%struct.csc_data* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.csc_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.colorspace_coeffs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.csc_data* %0, %struct.csc_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  store i32 1, i32* %15, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %14, align 4
  br label %52

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  store i32 3, i32* %15, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %14, align 4
  br label %51

46:                                               ; preds = %40, %36
  %47 = load i32, i32* @CSC_BYPASS, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %88

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.colorspace_coeffs*, %struct.colorspace_coeffs** @colorspace_coeffs, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.colorspace_coeffs, %struct.colorspace_coeffs* %53, i64 %55
  store %struct.colorspace_coeffs* %56, %struct.colorspace_coeffs** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.colorspace_coeffs*, %struct.colorspace_coeffs** %11, align 8
  %62 = getelementptr inbounds %struct.colorspace_coeffs, %struct.colorspace_coeffs* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %12, align 8
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.colorspace_coeffs*, %struct.colorspace_coeffs** %11, align 8
  %66 = getelementptr inbounds %struct.colorspace_coeffs, %struct.colorspace_coeffs* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %12, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 12
  store i32* %70, i32** %13, align 8
  br label %71

71:                                               ; preds = %85, %68
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ult i32* %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 16
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %79, %81
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  br label %85

85:                                               ; preds = %75
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %87, i32** %12, align 8
  br label %71

88:                                               ; preds = %46, %71
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
