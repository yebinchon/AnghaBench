; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_dim_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_dim_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ccb = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bna* }
%struct.bna = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32** }
%struct.TYPE_6__ = type { i64, i64 }

@BNA_PKT_RATE_10K = common dso_local global i64 0, align 8
@BNA_LOAD_T_LOW_4 = common dso_local global i64 0, align 8
@BNA_PKT_RATE_20K = common dso_local global i64 0, align 8
@BNA_LOAD_T_LOW_3 = common dso_local global i64 0, align 8
@BNA_PKT_RATE_30K = common dso_local global i64 0, align 8
@BNA_LOAD_T_LOW_2 = common dso_local global i64 0, align 8
@BNA_PKT_RATE_40K = common dso_local global i64 0, align 8
@BNA_LOAD_T_LOW_1 = common dso_local global i64 0, align 8
@BNA_PKT_RATE_50K = common dso_local global i64 0, align 8
@BNA_LOAD_T_HIGH_1 = common dso_local global i64 0, align 8
@BNA_PKT_RATE_60K = common dso_local global i64 0, align 8
@BNA_LOAD_T_HIGH_2 = common dso_local global i64 0, align 8
@BNA_PKT_RATE_80K = common dso_local global i64 0, align 8
@BNA_LOAD_T_HIGH_3 = common dso_local global i64 0, align 8
@BNA_LOAD_T_HIGH_4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_dim_update(%struct.bna_ccb* %0) #0 {
  %2 = alloca %struct.bna_ccb*, align 8
  %3 = alloca %struct.bna*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bna_ccb* %0, %struct.bna_ccb** %2, align 8
  %10 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %11 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.bna*, %struct.bna** %15, align 8
  store %struct.bna* %16, %struct.bna** %3, align 8
  %17 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %18 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %24 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %123

29:                                               ; preds = %22, %1
  %30 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %31 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %35 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @BNA_PKT_RATE_10K, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i64, i64* @BNA_LOAD_T_LOW_4, align 8
  store i64 %45, i64* %4, align 8
  br label %90

46:                                               ; preds = %29
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @BNA_PKT_RATE_20K, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @BNA_LOAD_T_LOW_3, align 8
  store i64 %51, i64* %4, align 8
  br label %89

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @BNA_PKT_RATE_30K, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @BNA_LOAD_T_LOW_2, align 8
  store i64 %57, i64* %4, align 8
  br label %88

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @BNA_PKT_RATE_40K, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @BNA_LOAD_T_LOW_1, align 8
  store i64 %63, i64* %4, align 8
  br label %87

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @BNA_PKT_RATE_50K, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* @BNA_LOAD_T_HIGH_1, align 8
  store i64 %69, i64* %4, align 8
  br label %86

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @BNA_PKT_RATE_60K, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @BNA_LOAD_T_HIGH_2, align 8
  store i64 %75, i64* %4, align 8
  br label %85

76:                                               ; preds = %70
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @BNA_PKT_RATE_80K, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @BNA_LOAD_T_HIGH_3, align 8
  store i64 %81, i64* %4, align 8
  br label %84

82:                                               ; preds = %76
  %83 = load i64, i64* @BNA_LOAD_T_HIGH_4, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %56
  br label %89

89:                                               ; preds = %88, %50
  br label %90

90:                                               ; preds = %89, %44
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = shl i64 %92, 1
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i64 0, i64* %5, align 8
  br label %97

96:                                               ; preds = %90
  store i64 1, i64* %5, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %99 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %102 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.bna*, %struct.bna** %3, align 8
  %105 = getelementptr inbounds %struct.bna, %struct.bna* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %116 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.bna_ccb*, %struct.bna_ccb** %2, align 8
  %118 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @bna_ib_coalescing_timeo_set(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %97, %28
  ret void
}

declare dso_local i32 @bna_ib_coalescing_timeo_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
