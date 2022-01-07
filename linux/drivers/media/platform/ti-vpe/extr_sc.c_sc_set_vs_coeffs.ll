; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_set_vs_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_set_vs_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_data = type { i32 }

@VS_UP_SCALE = common dso_local global i32 0, align 4
@VS_1_TO_1_SCALE = common dso_local global i32 0, align 4
@VS_LT_9_16_SCALE = common dso_local global i32 0, align 4
@scaler_vs_coeffs = common dso_local global i32** null, align 8
@SC_NUM_PHASES = common dso_local global i32 0, align 4
@SC_V_NUM_TAPS = common dso_local global i32 0, align 4
@SC_NUM_TAPS_MEM_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_set_vs_coeffs(%struct.sc_data* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %21 = load i32, i32* @VS_UP_SCALE, align 4
  store i32 %21, i32* %10, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @VS_1_TO_1_SCALE, align 4
  store i32 %27, i32* %10, align 4
  br label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 4
  %31 = load i32, i32* %7, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 8, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* @VS_LT_9_16_SCALE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 8
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %26
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32**, i32*** @scaler_vs_coeffs, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %74, %42
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SC_NUM_PHASES, align 4
  %51 = mul nsw i32 %50, 2
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %64, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @SC_V_NUM_TAPS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %14, align 8
  %61 = load i32, i32* %59, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %54

67:                                               ; preds = %54
  %68 = load i32, i32* @SC_NUM_TAPS_MEM_ALIGN, align 4
  %69 = load i32, i32* @SC_V_NUM_TAPS, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32*, i32** %13, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %13, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load %struct.sc_data*, %struct.sc_data** %5, align 8
  %79 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
