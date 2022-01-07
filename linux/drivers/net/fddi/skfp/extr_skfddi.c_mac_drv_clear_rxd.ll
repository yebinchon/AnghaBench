; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_clear_rxd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_clear_rxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.s_smt_fp_rxd = type { %struct.s_smt_fp_rxd*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"entering mac_drv_clear_rxd\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fddi: Multi-fragment clear!\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_clear_rxd(%struct.s_smc* %0, %struct.s_smt_fp_rxd* %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca %struct.s_smt_fp_rxd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store %struct.s_smt_fp_rxd* %1, %struct.s_smt_fp_rxd** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %21 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load volatile %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %35 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load volatile i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %40 = call i32 @pci_unmap_single(i32* %33, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @dev_kfree_skb(%struct.sk_buff* %41)
  %43 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %44 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store volatile %struct.sk_buff* null, %struct.sk_buff** %45, align 8
  br label %46

46:                                               ; preds = %26, %19
  %47 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %48 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %47, i32 0, i32 0
  %49 = load volatile %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %48, align 8
  store %struct.s_smt_fp_rxd* %49, %struct.s_smt_fp_rxd** %5, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  br label %16

53:                                               ; preds = %16
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pci_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
