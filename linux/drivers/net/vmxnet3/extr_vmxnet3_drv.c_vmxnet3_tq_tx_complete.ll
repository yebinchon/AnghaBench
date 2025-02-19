; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %union.Vmxnet3_GenericDesc* }
%union.Vmxnet3_GenericDesc = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_tq_tx_complete(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %9, align 8
  %11 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %10, i64 %15
  store %union.Vmxnet3_GenericDesc* %16, %union.Vmxnet3_GenericDesc** %6, align 8
  br label %17

17:                                               ; preds = %26, %2
  %18 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %19 = bitcast %union.Vmxnet3_GenericDesc* %18 to i32*
  %20 = call i64 @VMXNET3_TCD_GET_GEN(i32* %19)
  %21 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %17
  %27 = call i32 (...) @dma_rmb()
  %28 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %29 = bitcast %union.Vmxnet3_GenericDesc* %28 to i32*
  %30 = call i32 @VMXNET3_TCD_GET_TXIDX(i32* %29)
  %31 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %32 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %36 = call i64 @vmxnet3_unmap_pkt(i32 %30, %struct.vmxnet3_tx_queue* %31, i32 %34, %struct.vmxnet3_adapter* %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %42 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %41, i32 0, i32 2
  %43 = call i32 @vmxnet3_comp_ring_adv_next2proc(%struct.TYPE_2__* %42)
  %44 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %46, align 8
  %48 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %union.Vmxnet3_GenericDesc, %union.Vmxnet3_GenericDesc* %47, i64 %52
  store %union.Vmxnet3_GenericDesc* %53, %union.Vmxnet3_GenericDesc** %6, align 8
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %58, i32 0, i32 0
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %62 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %63 = call i64 @vmxnet3_tq_stopped(%struct.vmxnet3_tx_queue* %61, %struct.vmxnet3_adapter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %66, i32 0, i32 1
  %68 = call i64 @vmxnet3_cmd_ring_desc_avail(i32* %67)
  %69 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %70 = call i64 @VMXNET3_WAKE_QUEUE_THRESHOLD(%struct.vmxnet3_tx_queue* %69)
  %71 = icmp sgt i64 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @netif_carrier_ok(i32 %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %72, %65, %57
  %79 = phi i1 [ false, %65 ], [ false, %57 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %85 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %86 = call i32 @vmxnet3_tq_wake(%struct.vmxnet3_tx_queue* %84, %struct.vmxnet3_adapter* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %87, %54
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @VMXNET3_TCD_GET_GEN(i32*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @vmxnet3_unmap_pkt(i32, %struct.vmxnet3_tx_queue*, i32, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @VMXNET3_TCD_GET_TXIDX(i32*) #1

declare dso_local i32 @vmxnet3_comp_ring_adv_next2proc(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vmxnet3_tq_stopped(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i64 @vmxnet3_cmd_ring_desc_avail(i32*) #1

declare dso_local i64 @VMXNET3_WAKE_QUEUE_THRESHOLD(%struct.vmxnet3_tx_queue*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @vmxnet3_tq_wake(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
