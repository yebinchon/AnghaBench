; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_get_drv_queue_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_get_drv_queue_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.hinic_dev = type { i64, i32*, i32* }
%struct.hinic_txq_stats = type { i32 }
%struct.hinic_rxq_stats = type { i32 }

@hinic_tx_queue_stats = common dso_local global %struct.TYPE_4__* null, align 8
@hinic_rx_queue_stats = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_dev*, i32*)* @get_drv_queue_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_drv_queue_stats(%struct.hinic_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hinic_txq_stats, align 4
  %6 = alloca %struct.hinic_rxq_stats, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.hinic_dev* %0, %struct.hinic_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %70, %2
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %11
  %18 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %73

23:                                               ; preds = %17
  %24 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @hinic_txq_get_stats(i32* %28, %struct.hinic_txq_stats* %5)
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %64, %23
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_tx_queue_stats, align 8
  %33 = call i64 @ARRAY_LEN(%struct.TYPE_4__* %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = bitcast %struct.hinic_txq_stats* %5 to i8*
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_tx_queue_stats, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  store i8* %43, i8** %10, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_tx_queue_stats, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  br label %59

55:                                               ; preds = %35
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %30

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %11

73:                                               ; preds = %22, %11
  store i64 0, i64* %9, align 8
  br label %74

74:                                               ; preds = %133, %73
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %136

80:                                               ; preds = %74
  %81 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %136

86:                                               ; preds = %80
  %87 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %88 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i32 @hinic_rxq_get_stats(i32* %91, %struct.hinic_rxq_stats* %6)
  store i64 0, i64* %8, align 8
  br label %93

93:                                               ; preds = %127, %86
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_rx_queue_stats, align 8
  %96 = call i64 @ARRAY_LEN(%struct.TYPE_4__* %95)
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %93
  %99 = bitcast %struct.hinic_rxq_stats* %6 to i8*
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_rx_queue_stats, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %99, i64 %105
  store i8* %106, i8** %10, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hinic_rx_queue_stats, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %112, 4
  br i1 %113, label %114, label %118

114:                                              ; preds = %98
  %115 = load i8*, i8** %10, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load i32, i32* %116, align 4
  br label %122

118:                                              ; preds = %98
  %119 = load i8*, i8** %10, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i32 [ %117, %114 ], [ %121, %118 ]
  %124 = load i32*, i32** %4, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %122
  %128 = load i64, i64* %8, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %7, align 8
  br label %93

132:                                              ; preds = %93
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %74

136:                                              ; preds = %85, %74
  ret void
}

declare dso_local i32 @hinic_txq_get_stats(i32*, %struct.hinic_txq_stats*) #1

declare dso_local i64 @ARRAY_LEN(%struct.TYPE_4__*) #1

declare dso_local i32 @hinic_rxq_get_stats(i32*, %struct.hinic_rxq_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
