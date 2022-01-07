; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_tso_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_tso_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_txq_desc = type { i32 }
%struct.ionic_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ionic_txq_desc*, %struct.ionic_txq_sg_desc* }
%struct.ionic_txq_sg_desc = type { %struct.ionic_txq_sg_elem* }
%struct.ionic_txq_sg_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ionic_txq_desc* (%struct.ionic_queue*, %struct.ionic_txq_sg_elem**)* @ionic_tx_tso_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ionic_txq_desc* @ionic_tx_tso_next(%struct.ionic_queue* %0, %struct.ionic_txq_sg_elem** %1) #0 {
  %3 = alloca %struct.ionic_queue*, align 8
  %4 = alloca %struct.ionic_txq_sg_elem**, align 8
  %5 = alloca %struct.ionic_txq_sg_desc*, align 8
  %6 = alloca %struct.ionic_txq_desc*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %3, align 8
  store %struct.ionic_txq_sg_elem** %1, %struct.ionic_txq_sg_elem*** %4, align 8
  %7 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ionic_txq_sg_desc*, %struct.ionic_txq_sg_desc** %10, align 8
  store %struct.ionic_txq_sg_desc* %11, %struct.ionic_txq_sg_desc** %5, align 8
  %12 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %15, align 8
  store %struct.ionic_txq_desc* %16, %struct.ionic_txq_desc** %6, align 8
  %17 = load %struct.ionic_txq_sg_desc*, %struct.ionic_txq_sg_desc** %5, align 8
  %18 = getelementptr inbounds %struct.ionic_txq_sg_desc, %struct.ionic_txq_sg_desc* %17, i32 0, i32 0
  %19 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %18, align 8
  %20 = load %struct.ionic_txq_sg_elem**, %struct.ionic_txq_sg_elem*** %4, align 8
  store %struct.ionic_txq_sg_elem* %19, %struct.ionic_txq_sg_elem** %20, align 8
  %21 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %6, align 8
  ret %struct.ionic_txq_desc* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
