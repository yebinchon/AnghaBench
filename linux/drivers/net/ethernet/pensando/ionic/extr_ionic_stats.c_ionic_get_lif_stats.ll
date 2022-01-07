; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_stats.c_ionic_get_lif_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_stats.c_ionic_get_lif_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32 }
%struct.ionic_lif_sw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ionic_tx_stats = type { i64, i64, i64, i64, i64 }
%struct.ionic_rx_stats = type { i64, i64, i64, i64, i64 }
%struct.ionic_qcq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ionic_rx_stats, %struct.ionic_tx_stats }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*, %struct.ionic_lif_sw_stats*)* @ionic_get_lif_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_get_lif_stats(%struct.ionic_lif* %0, %struct.ionic_lif_sw_stats* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_lif_sw_stats*, align 8
  %5 = alloca %struct.ionic_tx_stats*, align 8
  %6 = alloca %struct.ionic_rx_stats*, align 8
  %7 = alloca %struct.ionic_qcq*, align 8
  %8 = alloca %struct.ionic_qcq*, align 8
  %9 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store %struct.ionic_lif_sw_stats* %1, %struct.ionic_lif_sw_stats** %4, align 8
  %10 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %11 = call i32 @memset(%struct.ionic_lif_sw_stats* %10, i32 0, i32 40)
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %140, %2
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %15 = call i32 @MAX_Q(%struct.ionic_lif* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %143

17:                                               ; preds = %12
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.ionic_qcq* @lif_to_txqcq(%struct.ionic_lif* %18, i32 %19)
  store %struct.ionic_qcq* %20, %struct.ionic_qcq** %7, align 8
  %21 = load %struct.ionic_qcq*, %struct.ionic_qcq** %7, align 8
  %22 = icmp ne %struct.ionic_qcq* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = load %struct.ionic_qcq*, %struct.ionic_qcq** %7, align 8
  %25 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %78

28:                                               ; preds = %23
  %29 = load %struct.ionic_qcq*, %struct.ionic_qcq** %7, align 8
  %30 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.ionic_tx_stats* %32, %struct.ionic_tx_stats** %5, align 8
  %33 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %5, align 8
  %34 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %37 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %5, align 8
  %43 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %46 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %5, align 8
  %52 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %55 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %5, align 8
  %61 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %64 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %5, align 8
  %70 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %73 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %78

78:                                               ; preds = %28, %23, %17
  %79 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call %struct.ionic_qcq* @lif_to_rxqcq(%struct.ionic_lif* %79, i32 %80)
  store %struct.ionic_qcq* %81, %struct.ionic_qcq** %8, align 8
  %82 = load %struct.ionic_qcq*, %struct.ionic_qcq** %8, align 8
  %83 = icmp ne %struct.ionic_qcq* %82, null
  br i1 %83, label %84, label %139

84:                                               ; preds = %78
  %85 = load %struct.ionic_qcq*, %struct.ionic_qcq** %8, align 8
  %86 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %139

89:                                               ; preds = %84
  %90 = load %struct.ionic_qcq*, %struct.ionic_qcq** %8, align 8
  %91 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store %struct.ionic_rx_stats* %93, %struct.ionic_rx_stats** %6, align 8
  %94 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %6, align 8
  %95 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %98 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %6, align 8
  %104 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %107 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %6, align 8
  %113 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %116 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %6, align 8
  %122 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %125 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %6, align 8
  %131 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ionic_lif_sw_stats*, %struct.ionic_lif_sw_stats** %4, align 8
  %134 = getelementptr inbounds %struct.ionic_lif_sw_stats, %struct.ionic_lif_sw_stats* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %132
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  br label %139

139:                                              ; preds = %89, %84, %78
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %12

143:                                              ; preds = %12
  ret void
}

declare dso_local i32 @memset(%struct.ionic_lif_sw_stats*, i32, i32) #1

declare dso_local i32 @MAX_Q(%struct.ionic_lif*) #1

declare dso_local %struct.ionic_qcq* @lif_to_txqcq(%struct.ionic_lif*, i32) #1

declare dso_local %struct.ionic_qcq* @lif_to_rxqcq(%struct.ionic_lif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
