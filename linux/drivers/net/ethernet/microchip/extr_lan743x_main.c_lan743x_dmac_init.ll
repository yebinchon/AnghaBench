; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_dmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_dmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMAC_CMD = common dso_local global i32 0, align 4
@DMAC_CMD_SWR_ = common dso_local global i32 0, align 4
@DEFAULT_DMA_DESCRIPTOR_SPACING = common dso_local global i32 0, align 4
@DMAC_CFG_MAX_DSPACE_16_ = common dso_local global i32 0, align 4
@DMAC_CFG_MAX_DSPACE_32_ = common dso_local global i32 0, align 4
@DMAC_CFG_MAX_DSPACE_64_ = common dso_local global i32 0, align 4
@DMAC_CFG_MAX_DSPACE_128_ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_IS_A0 = common dso_local global i32 0, align 4
@DMAC_CFG_COAL_EN_ = common dso_local global i32 0, align 4
@DMAC_CFG_CH_ARB_SEL_RX_HIGH_ = common dso_local global i32 0, align 4
@DMAC_CFG = common dso_local global i32 0, align 4
@DMAC_COAL_CFG_TIMER_TX_START_ = common dso_local global i32 0, align 4
@DMAC_COAL_CFG_FLUSH_INTS_ = common dso_local global i32 0, align 4
@DMAC_COAL_CFG_INT_EXIT_COAL_ = common dso_local global i32 0, align 4
@DMAC_COAL_CFG_CSR_EXIT_COAL_ = common dso_local global i32 0, align 4
@DMAC_COAL_CFG = common dso_local global i32 0, align 4
@DMAC_OBFF_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_dmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_dmac_init(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %6 = load i32, i32* @DMAC_CMD, align 4
  %7 = load i32, i32* @DMAC_CMD_SWR_, align 4
  %8 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %5, i32 %6, i32 %7)
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %10 = load i32, i32* @DMAC_CMD, align 4
  %11 = load i32, i32* @DMAC_CMD_SWR_, align 4
  %12 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %9, i32 %10, i32 %11, i32 0, i32 1000, i32 20000, i32 100)
  %13 = load i32, i32* @DEFAULT_DMA_DESCRIPTOR_SPACING, align 4
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
    i32 131, label %20
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @DMAC_CFG_MAX_DSPACE_16_, align 4
  store i32 %15, i32* %4, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @DMAC_CFG_MAX_DSPACE_32_, align 4
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @DMAC_CFG_MAX_DSPACE_64_, align 4
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @DMAC_CFG_MAX_DSPACE_128_, align 4
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %20, %18, %16, %14
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @DMAC_CFG_COAL_EN_, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* @DMAC_CFG_CH_ARB_SEL_RX_HIGH_, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = call i32 @DMAC_CFG_MAX_READ_REQ_SET_(i32 6)
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %45 = load i32, i32* @DMAC_CFG, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %44, i32 %45, i32 %46)
  %48 = call i32 @DMAC_COAL_CFG_TIMER_LIMIT_SET_(i32 1)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @DMAC_COAL_CFG_TIMER_TX_START_, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @DMAC_COAL_CFG_FLUSH_INTS_, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @DMAC_COAL_CFG_INT_EXIT_COAL_, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @DMAC_COAL_CFG_CSR_EXIT_COAL_, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = call i32 @DMAC_COAL_CFG_TX_THRES_SET_(i32 10)
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = call i32 @DMAC_COAL_CFG_RX_THRES_SET_(i32 12)
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %68 = load i32, i32* @DMAC_COAL_CFG, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %67, i32 %68, i32 %69)
  %71 = call i32 @DMAC_OBFF_TX_THRES_SET_(i32 8)
  store i32 %71, i32* %4, align 4
  %72 = call i32 @DMAC_OBFF_RX_THRES_SET_(i32 10)
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %76 = load i32, i32* @DMAC_OBFF_CFG, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %75, i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %37, %22
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMAC_CFG_MAX_READ_REQ_SET_(i32) #1

declare dso_local i32 @DMAC_COAL_CFG_TIMER_LIMIT_SET_(i32) #1

declare dso_local i32 @DMAC_COAL_CFG_TX_THRES_SET_(i32) #1

declare dso_local i32 @DMAC_COAL_CFG_RX_THRES_SET_(i32) #1

declare dso_local i32 @DMAC_OBFF_TX_THRES_SET_(i32) #1

declare dso_local i32 @DMAC_OBFF_RX_THRES_SET_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
