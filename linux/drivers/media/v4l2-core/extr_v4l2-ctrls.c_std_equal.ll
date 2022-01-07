; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_std_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_std_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i64, i32 }
%union.v4l2_ctrl_ptr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i64, i64, i64)* @std_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_equal(%struct.v4l2_ctrl* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.v4l2_ctrl_ptr, align 8
  %7 = alloca %union.v4l2_ctrl_ptr, align 8
  %8 = alloca %struct.v4l2_ctrl*, align 8
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %6, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  %11 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %7, i32 0, i32 0
  store i64 %3, i64* %11, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %8, align 8
  store i64 %1, i64* %9, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %86 [
    i32 133, label %15
    i32 131, label %16
    i32 132, label %34
    i32 128, label %47
    i32 130, label %60
    i32 129, label %73
  ]

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %125

16:                                               ; preds = %4
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul i64 %20, %19
  store i64 %21, i64* %9, align 8
  %22 = bitcast %union.v4l2_ctrl_ptr* %6 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = bitcast %union.v4l2_ctrl_ptr* %7 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @strcmp(i64 %25, i64 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %125

34:                                               ; preds = %4
  %35 = bitcast %union.v4l2_ctrl_ptr* %6 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %union.v4l2_ctrl_ptr* %7 to i32**
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %39, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %125

47:                                               ; preds = %4
  %48 = bitcast %union.v4l2_ctrl_ptr* %6 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.v4l2_ctrl_ptr* %7 to i32**
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %52, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %125

60:                                               ; preds = %4
  %61 = bitcast %union.v4l2_ctrl_ptr* %6 to i32**
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = bitcast %union.v4l2_ctrl_ptr* %7 to i32**
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %65, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %125

73:                                               ; preds = %4
  %74 = bitcast %union.v4l2_ctrl_ptr* %6 to i32**
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = bitcast %union.v4l2_ctrl_ptr* %7 to i32**
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %78, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %125

86:                                               ; preds = %4
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = bitcast %union.v4l2_ctrl_ptr* %6 to i32**
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %union.v4l2_ctrl_ptr* %7 to i32**
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %96, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %125

104:                                              ; preds = %86
  %105 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %106 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = mul i64 %108, %107
  store i64 %109, i64* %9, align 8
  %110 = bitcast %union.v4l2_ctrl_ptr* %6 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %111, %112
  %114 = bitcast %union.v4l2_ctrl_ptr* %7 to i64*
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %115, %116
  %118 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %119 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @memcmp(i64 %113, i64 %117, i64 %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %104, %91, %73, %60, %47, %34, %16, %15
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @strcmp(i64, i64) #1

declare dso_local i32 @memcmp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
