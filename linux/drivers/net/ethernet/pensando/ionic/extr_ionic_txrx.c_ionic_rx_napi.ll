; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.ionic_qcq = type { i32 }
%struct.ionic_cq = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.ionic_lif* }
%struct.ionic_lif = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ionic_cq }
%struct.TYPE_6__ = type { %struct.ionic_dev }
%struct.ionic_dev = type { i32 }

@IONIC_INTR_CRED_UNMASK = common dso_local global i32 0, align 4
@IONIC_INTR_CRED_RESET_COALESCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_rx_napi(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ionic_qcq*, align 8
  %6 = alloca %struct.ionic_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ionic_dev*, align 8
  %9 = alloca %struct.ionic_lif*, align 8
  %10 = alloca %struct.ionic_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %14 = call %struct.ionic_qcq* @napi_to_qcq(%struct.napi_struct* %13)
  store %struct.ionic_qcq* %14, %struct.ionic_qcq** %5, align 8
  %15 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %16 = call %struct.ionic_cq* @napi_to_cq(%struct.napi_struct* %15)
  store %struct.ionic_cq* %16, %struct.ionic_cq** %6, align 8
  %17 = load %struct.ionic_cq*, %struct.ionic_cq** %6, align 8
  %18 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.ionic_cq*, %struct.ionic_cq** %6, align 8
  %23 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.ionic_lif*, %struct.ionic_lif** %25, align 8
  store %struct.ionic_lif* %26, %struct.ionic_lif** %9, align 8
  %27 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %28 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.ionic_dev* %30, %struct.ionic_dev** %8, align 8
  %31 = load %struct.ionic_lif*, %struct.ionic_lif** %9, align 8
  %32 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.ionic_cq* %39, %struct.ionic_cq** %10, align 8
  %40 = load %struct.ionic_cq*, %struct.ionic_cq** %10, align 8
  %41 = call i32 @ionic_tx_flush(%struct.ionic_cq* %40)
  %42 = load %struct.ionic_cq*, %struct.ionic_cq** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ionic_rx_walk_cq(%struct.ionic_cq* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.ionic_cq*, %struct.ionic_cq** %6, align 8
  %49 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 @ionic_rx_fill_cb(%struct.TYPE_9__* %50)
  br label %52

52:                                               ; preds = %47, %2
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @napi_complete_done(%struct.napi_struct* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* @IONIC_INTR_CRED_UNMASK, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ionic_cq*, %struct.ionic_cq** %6, align 8
  %66 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = call i32 @DEBUG_STATS_INTR_REARM(%struct.TYPE_10__* %67)
  br label %69

69:                                               ; preds = %61, %56, %52
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @IONIC_INTR_CRED_RESET_COALESCE, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load %struct.ionic_dev*, %struct.ionic_dev** %8, align 8
  %80 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ionic_cq*, %struct.ionic_cq** %6, align 8
  %83 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @ionic_intr_credits(i32 %81, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %75, %72
  %91 = load %struct.ionic_qcq*, %struct.ionic_qcq** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @DEBUG_STATS_NAPI_POLL(%struct.ionic_qcq* %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local %struct.ionic_qcq* @napi_to_qcq(%struct.napi_struct*) #1

declare dso_local %struct.ionic_cq* @napi_to_cq(%struct.napi_struct*) #1

declare dso_local i32 @ionic_tx_flush(%struct.ionic_cq*) #1

declare dso_local i32 @ionic_rx_walk_cq(%struct.ionic_cq*, i32) #1

declare dso_local i32 @ionic_rx_fill_cb(%struct.TYPE_9__*) #1

declare dso_local i64 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @DEBUG_STATS_INTR_REARM(%struct.TYPE_10__*) #1

declare dso_local i32 @ionic_intr_credits(i32, i32, i32, i32) #1

declare dso_local i32 @DEBUG_STATS_NAPI_POLL(%struct.ionic_qcq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
