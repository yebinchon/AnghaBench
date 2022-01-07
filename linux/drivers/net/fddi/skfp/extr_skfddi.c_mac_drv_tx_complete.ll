; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.s_smt_fp_txd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"entering mac_drv_tx_complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"TXD with no skb assigned.\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"leaving mac_drv_tx_complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_tx_complete(%struct.s_smc* %0, %struct.s_smt_fp_txd* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.s_smt_fp_txd*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.s_smt_fp_txd* %1, %struct.s_smt_fp_txd** %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %8 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load volatile %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %16 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store volatile %struct.sk_buff* null, %struct.sk_buff** %17, align 8
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %22 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load volatile i64, i64* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %29 = call i32 @pci_unmap_single(i32* %20, i64 %24, i64 %27, i32 %28)
  %30 = load %struct.s_smt_fp_txd*, %struct.s_smt_fp_txd** %4, align 8
  %31 = getelementptr inbounds %struct.s_smt_fp_txd, %struct.s_smt_fp_txd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store volatile i64 0, i64* %32, align 8
  %33 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %44 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %42
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %52)
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %14, %12
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pci_unmap_single(i32*, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
