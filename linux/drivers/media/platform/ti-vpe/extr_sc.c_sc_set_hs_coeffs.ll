; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_set_hs_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_set_hs_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_data = type { i32 }

@HS_UP_SCALE = common dso_local global i32 0, align 4
@HS_LE_16_16_SCALE = common dso_local global i32 0, align 4
@HS_LT_9_16_SCALE = common dso_local global i32 0, align 4
@scaler_hs_coeffs = common dso_local global i32** null, align 8
@SC_NUM_PHASES = common dso_local global i32 0, align 4
@SC_H_NUM_TAPS = common dso_local global i32 0, align 4
@SC_NUM_TAPS_MEM_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_set_hs_coeffs(%struct.sc_data* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.sc_data* %0, %struct.sc_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @HS_UP_SCALE, align 4
  store i32 %21, i32* %10, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @HS_LE_16_16_SCALE, align 4
  store i32 %43, i32* %10, align 4
  br label %57

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %7, align 4
  %48 = udiv i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 8, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* @HS_LT_9_16_SCALE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 8
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32**, i32*** @scaler_hs_coeffs, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %90, %58
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SC_NUM_PHASES, align 4
  %67 = mul nsw i32 %66, 2
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %80, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @SC_H_NUM_TAPS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %14, align 8
  %77 = load i32, i32* %75, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %70

83:                                               ; preds = %70
  %84 = load i32, i32* @SC_NUM_TAPS_MEM_ALIGN, align 4
  %85 = load i32, i32* @SC_H_NUM_TAPS, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32*, i32** %13, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %13, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %64

93:                                               ; preds = %64
  %94 = load %struct.sc_data*, %struct.sc_data** %5, align 8
  %95 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
