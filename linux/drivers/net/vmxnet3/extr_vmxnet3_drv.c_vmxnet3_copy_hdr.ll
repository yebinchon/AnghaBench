; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_copy_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_copy_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vmxnet3_tx_queue = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.vmxnet3_tx_ctx = type { i32 }
%struct.vmxnet3_adapter = type { i32 }
%struct.Vmxnet3_TxDataDesc = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"copy %u bytes to dataRing[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_adapter*)* @vmxnet3_copy_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_copy_hdr(%struct.sk_buff* %0, %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_ctx* %2, %struct.vmxnet3_adapter* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vmxnet3_tx_queue*, align 8
  %7 = alloca %struct.vmxnet3_tx_ctx*, align 8
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca %struct.Vmxnet3_TxDataDesc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_queue** %6, align 8
  store %struct.vmxnet3_tx_ctx* %2, %struct.vmxnet3_tx_ctx** %7, align 8
  store %struct.vmxnet3_adapter* %3, %struct.vmxnet3_adapter** %8, align 8
  %10 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %14, i64 %23
  %25 = bitcast i32* %24 to %struct.Vmxnet3_TxDataDesc*
  store %struct.Vmxnet3_TxDataDesc* %25, %struct.Vmxnet3_TxDataDesc** %9, align 8
  %26 = load %struct.Vmxnet3_TxDataDesc*, %struct.Vmxnet3_TxDataDesc** %9, align 8
  %27 = getelementptr inbounds %struct.Vmxnet3_TxDataDesc, %struct.Vmxnet3_TxDataDesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %6, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netdev_dbg(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
