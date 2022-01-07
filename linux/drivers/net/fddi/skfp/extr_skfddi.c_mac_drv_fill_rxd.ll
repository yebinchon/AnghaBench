; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_fill_rxd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_fill_rxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i64, i32 }
%struct.sk_buff = type { i8* }
%struct.s_smt_fp_rxd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.sk_buff* }

@.str = private unnamed_addr constant [27 x i8] c"entering mac_drv_fill_rxd\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Queueing invalid buffer!\0A\00", align 1
@FIRST_FRAG = common dso_local global i32 0, align 4
@LAST_FRAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"leaving mac_drv_fill_rxd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_fill_rxd(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.s_smt_fp_rxd*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %15 = call i64 @HWM_GET_RX_FREE(%struct.s_smc* %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %13
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %20 = call %struct.s_smt_fp_rxd* @HWM_GET_CURR_RXD(%struct.s_smc* %19)
  store %struct.s_smt_fp_rxd* %20, %struct.s_smt_fp_rxd** %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 3
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @skb_reserve(%struct.sk_buff* %28, i32 3)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @skb_put(%struct.sk_buff* %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %4, align 8
  %36 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %37 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i64 @pci_map_single(i32* %38, i8* %39, i32 %40, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %7, align 8
  %45 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store volatile i64 %43, i64* %46, align 8
  br label %57

47:                                               ; preds = %17
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %50 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %4, align 8
  %53 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %54 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %47, %27
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %7, align 8
  %60 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store volatile %struct.sk_buff* %58, %struct.sk_buff** %61, align 8
  %62 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @FIRST_FRAG, align 4
  %67 = load i32, i32* @LAST_FRAG, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @hwm_rx_frag(%struct.s_smc* %62, i8* %63, i64 %64, i32 %65, i32 %68)
  br label %13

70:                                               ; preds = %13
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @HWM_GET_RX_FREE(%struct.s_smc*) #1

declare dso_local %struct.s_smt_fp_rxd* @HWM_GET_CURR_RXD(%struct.s_smc*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @pci_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @hwm_rx_frag(%struct.s_smc*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
