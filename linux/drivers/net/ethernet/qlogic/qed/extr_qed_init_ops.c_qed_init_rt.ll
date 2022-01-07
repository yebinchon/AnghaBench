; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64* }
%struct.qed_ptt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i64, i32)* @qed_init_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_rt(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64* %24, i64** %14, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %15, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %16, align 8
  br label %31

31:                                               ; preds = %98, %6
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %31
  %36 = load i32*, i32** %15, align 8
  %37 = load i64, i64* %16, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %98

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %16, align 8
  %50 = shl i64 %49, 2
  %51 = add i64 %48, %50
  %52 = load i64*, i64** %14, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @qed_wr(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, i64 %51, i64 %55)
  br label %98

57:                                               ; preds = %42
  store i64 1, i64* %17, align 8
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %12, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i32*, i32** %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %17, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %17, align 8
  br label %58

77:                                               ; preds = %72, %58
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %79 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = ptrtoint i64* %82 to i64
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %16, align 8
  %86 = shl i64 %85, 2
  %87 = add i64 %84, %86
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @qed_dmae_host2grc(%struct.qed_hwfn* %78, %struct.qed_ptt* %79, i64 %83, i64 %87, i64 %88, i32* null)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %77
  %93 = load i32, i32* %18, align 4
  store i32 %93, i32* %7, align 4
  br label %103

94:                                               ; preds = %77
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %16, align 8
  br label %98

98:                                               ; preds = %94, %45, %41
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %16, align 8
  br label %31

101:                                              ; preds = %31
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %92
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64) #1

declare dso_local i32 @qed_dmae_host2grc(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
