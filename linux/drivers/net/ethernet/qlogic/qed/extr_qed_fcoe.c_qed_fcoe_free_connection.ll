; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_free_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_free_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_fcoe_conn = type { i32*, i64*, i32, i64, i32*, i64*, i32, i64 }

@QED_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_fcoe_conn*)* @qed_fcoe_free_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_fcoe_free_connection(%struct.qed_hwfn* %0, %struct.qed_fcoe_conn* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_fcoe_conn*, align 8
  %5 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_fcoe_conn* %1, %struct.qed_fcoe_conn** %4, align 8
  %6 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %7 = icmp ne %struct.qed_fcoe_conn* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %134

9:                                                ; preds = %2
  %10 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %22 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %23 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %26 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_free_coherent(i32* %20, i32 %21, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %14, %9
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %33 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @ARRAY_SIZE(i32* %34)
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %30
  %38 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %39 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %38, i32 0, i32 5
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %67

46:                                               ; preds = %37
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %54 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %55 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %54, i32 0, i32 5
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %61 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dma_free_coherent(i32* %52, i32 %53, i64 %59, i32 %65)
  br label %67

67:                                               ; preds = %46, %45
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %30

70:                                               ; preds = %30
  %71 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %72 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %77 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %83 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %84 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %87 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dma_free_coherent(i32* %81, i32 %82, i64 %85, i32 %88)
  br label %90

90:                                               ; preds = %75, %70
  store i64 0, i64* %5, align 8
  br label %91

91:                                               ; preds = %128, %90
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %94 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @ARRAY_SIZE(i32* %95)
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %91
  %99 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %100 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %128

107:                                              ; preds = %98
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %109 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %115 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %116 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %122 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dma_free_coherent(i32* %113, i32 %114, i64 %120, i32 %126)
  br label %128

128:                                              ; preds = %107, %106
  %129 = load i64, i64* %5, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %5, align 8
  br label %91

131:                                              ; preds = %91
  %132 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %4, align 8
  %133 = call i32 @kfree(%struct.qed_fcoe_conn* %132)
  br label %134

134:                                              ; preds = %131, %8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @kfree(%struct.qed_fcoe_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
