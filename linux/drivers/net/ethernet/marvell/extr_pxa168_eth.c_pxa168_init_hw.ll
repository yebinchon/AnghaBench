; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_eth_private = type { i32 }

@INT_MASK = common dso_local global i32 0, align 4
@INT_CAUSE = common dso_local global i32 0, align 4
@INT_W_CLEAR = common dso_local global i32 0, align 4
@SDMA_CONFIG = common dso_local global i32 0, align 4
@SDCR_BSZ8 = common dso_local global i32 0, align 4
@SDCR_RIFB = common dso_local global i32 0, align 4
@SDCR_BLMT = common dso_local global i32 0, align 4
@SDCR_BLMR = common dso_local global i32 0, align 4
@SDCR_RC_MAX_RETRANS = common dso_local global i32 0, align 4
@PORT_CONFIG = common dso_local global i32 0, align 4
@PCR_HS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa168_eth_private*)* @pxa168_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_init_hw(%struct.pxa168_eth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa168_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.pxa168_eth_private* %0, %struct.pxa168_eth_private** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %6 = load i32, i32* @INT_MASK, align 4
  %7 = call i32 @wrl(%struct.pxa168_eth_private* %5, i32 %6, i32 0)
  %8 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %9 = load i32, i32* @INT_CAUSE, align 4
  %10 = call i32 @wrl(%struct.pxa168_eth_private* %8, i32 %9, i32 0)
  %11 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %12 = load i32, i32* @INT_W_CLEAR, align 4
  %13 = call i32 @wrl(%struct.pxa168_eth_private* %11, i32 %12, i32 0)
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %15 = call i32 @abort_dma(%struct.pxa168_eth_private* %14)
  %16 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %17 = call i32 @init_hash_table(%struct.pxa168_eth_private* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %24 = load i32, i32* @SDMA_CONFIG, align 4
  %25 = load i32, i32* @SDCR_BSZ8, align 4
  %26 = load i32, i32* @SDCR_RIFB, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SDCR_BLMT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SDCR_BLMR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SDCR_RC_MAX_RETRANS, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @wrl(%struct.pxa168_eth_private* %23, i32 %24, i32 %33)
  %35 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %36 = load i32, i32* @PORT_CONFIG, align 4
  %37 = load i32, i32* @PCR_HS, align 4
  %38 = call i32 @wrl(%struct.pxa168_eth_private* %35, i32 %36, i32 %37)
  %39 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %40 = call i32 @set_port_config_ext(%struct.pxa168_eth_private* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %22, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @abort_dma(%struct.pxa168_eth_private*) #1

declare dso_local i32 @init_hash_table(%struct.pxa168_eth_private*) #1

declare dso_local i32 @set_port_config_ext(%struct.pxa168_eth_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
