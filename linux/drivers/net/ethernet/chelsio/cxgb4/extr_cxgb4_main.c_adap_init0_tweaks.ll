; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_adap_init0_tweaks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_adap_init0_tweaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@rx_dma_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ignoring illegal rx_dma_offset=%d, using 2\0A\00", align 1
@SGE_CONTROL_A = common dso_local global i32 0, align 4
@PKTSHIFT_M = common dso_local global i32 0, align 4
@TP_INGRESS_CONFIG_A = common dso_local global i32 0, align 4
@CSUM_HAS_PSEUDO_HDR_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @adap_init0_tweaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adap_init0_tweaks(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = load i32, i32* @PAGE_SIZE, align 4
  %5 = load i32, i32* @L1_CACHE_BYTES, align 4
  %6 = call i32 @t4_fixup_host_params(%struct.adapter* %3, i32 %4, i32 %5)
  %7 = load i32, i32* @rx_dma_offset, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @rx_dma_offset, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @rx_dma_offset, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 2, i32* @rx_dma_offset, align 4
  br label %19

19:                                               ; preds = %12, %9, %1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = load i32, i32* @SGE_CONTROL_A, align 4
  %22 = load i32, i32* @PKTSHIFT_M, align 4
  %23 = call i32 @PKTSHIFT_V(i32 %22)
  %24 = load i32, i32* @rx_dma_offset, align 4
  %25 = call i32 @PKTSHIFT_V(i32 %24)
  %26 = call i32 @t4_set_reg_field(%struct.adapter* %20, i32 %21, i32 %23, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* @TP_INGRESS_CONFIG_A, align 4
  %29 = load i32, i32* @CSUM_HAS_PSEUDO_HDR_F, align 4
  %30 = call i32 @t4_tp_wr_bits_indirect(%struct.adapter* %27, i32 %28, i32 %29, i32 0)
  ret i32 0
}

declare dso_local i32 @t4_fixup_host_params(%struct.adapter*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @PKTSHIFT_V(i32) #1

declare dso_local i32 @t4_tp_wr_bits_indirect(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
