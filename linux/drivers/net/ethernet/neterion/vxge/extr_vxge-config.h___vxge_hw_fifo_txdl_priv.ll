; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.h___vxge_hw_fifo_txdl_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.h___vxge_hw_fifo_txdl_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo_txdl_priv = type { i32 }
%struct.__vxge_hw_fifo = type { i32 }
%struct.vxge_hw_fifo_txd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.__vxge_hw_fifo_txdl_priv* (%struct.__vxge_hw_fifo*, %struct.vxge_hw_fifo_txd*)* @__vxge_hw_fifo_txdl_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo* %0, %struct.vxge_hw_fifo_txd* %1) #0 {
  %3 = alloca %struct.__vxge_hw_fifo*, align 8
  %4 = alloca %struct.vxge_hw_fifo_txd*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %3, align 8
  store %struct.vxge_hw_fifo_txd* %1, %struct.vxge_hw_fifo_txd** %4, align 8
  %5 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %4, align 8
  %6 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %8, i64 %12
  %14 = bitcast i8* %13 to %struct.__vxge_hw_fifo_txdl_priv*
  ret %struct.__vxge_hw_fifo_txdl_priv* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
