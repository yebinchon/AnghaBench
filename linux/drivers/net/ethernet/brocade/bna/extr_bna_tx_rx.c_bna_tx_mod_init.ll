; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_mod_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx_mod = type { i32, i32, i64, i32, i32, %struct.bna_txq*, i32, %struct.bna_tx*, i32, i64, %struct.bna* }
%struct.bna_txq = type { i32 }
%struct.bna_tx = type { i32, i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_TX_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_TXQ_ARRAY = common dso_local global i64 0, align 8
@BFI_TX_PRIO_MAP_ALL = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_tx_mod_init(%struct.bna_tx_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_tx_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bna_tx_mod* %0, %struct.bna_tx_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %8 = load %struct.bna*, %struct.bna** %5, align 8
  %9 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %10 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %9, i32 0, i32 10
  store %struct.bna* %8, %struct.bna** %10, align 8
  %11 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %12 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %14 = load i64, i64* @BNA_MOD_RES_MEM_T_TX_ARRAY, align 8
  %15 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %13, i64 %14
  %16 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bna_tx*
  %24 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %25 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %24, i32 0, i32 7
  store %struct.bna_tx* %23, %struct.bna_tx** %25, align 8
  %26 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %27 = load i64, i64* @BNA_MOD_RES_MEM_T_TXQ_ARRAY, align 8
  %28 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %26, i64 %27
  %29 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.bna_txq*
  %37 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %38 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %37, i32 0, i32 5
  store %struct.bna_txq* %36, %struct.bna_txq** %38, align 8
  %39 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %40 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %43 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %42, i32 0, i32 8
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %46 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %45, i32 0, i32 4
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %85, %3
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.bna*, %struct.bna** %5, align 8
  %51 = getelementptr inbounds %struct.bna, %struct.bna* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %59 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %58, i32 0, i32 7
  %60 = load %struct.bna_tx*, %struct.bna_tx** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %60, i64 %62
  %64 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  %65 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %66 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %65, i32 0, i32 7
  %67 = load %struct.bna_tx*, %struct.bna_tx** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %67, i64 %69
  %71 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %70, i32 0, i32 1
  %72 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %73 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %72, i32 0, i32 6
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %76 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %75, i32 0, i32 5
  %77 = load %struct.bna_txq*, %struct.bna_txq** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %77, i64 %79
  %81 = getelementptr inbounds %struct.bna_txq, %struct.bna_txq* %80, i32 0, i32 0
  %82 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %83 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %82, i32 0, i32 4
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  br label %85

85:                                               ; preds = %56
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %48

88:                                               ; preds = %48
  %89 = load i32, i32* @BFI_TX_PRIO_MAP_ALL, align 4
  %90 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %91 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %93 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %95 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %96 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %4, align 8
  %98 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
