; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64 }

@genesis_reset.zero = internal constant [8 x i32] zeroinitializer, align 16
@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@XM_GP_PORT = common dso_local global i32 0, align 4
@XM_GP_RES_STAT = common dso_local global i32 0, align 4
@XM_IMSK = common dso_local global i32 0, align 4
@XM_IMSK_DISABLE = common dso_local global i32 0, align 4
@XM_MODE = common dso_local global i32 0, align 4
@XM_TX_CMD = common dso_local global i32 0, align 4
@XM_RX_CMD = common dso_local global i32 0, align 4
@SK_PHY_BCOM = common dso_local global i64 0, align 8
@PHY_BCOM_INT_MASK = common dso_local global i32 0, align 4
@XM_HSM = common dso_local global i32 0, align 4
@XM_MD_FTF = common dso_local global i32 0, align 4
@XM_MD_FRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @genesis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_reset(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %9 = call i32 @SK_REG(i32 %7, i32 %8)
  %10 = call i32 @skge_write8(%struct.skge_hw* %6, i32 %9, i32 0)
  %11 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @XM_GP_PORT, align 4
  %14 = load i32, i32* @XM_GP_RES_STAT, align 4
  %15 = call i32 @xm_write32(%struct.skge_hw* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @XM_IMSK, align 4
  %19 = load i32, i32* @XM_IMSK_DISABLE, align 4
  %20 = call i32 @xm_write16(%struct.skge_hw* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @XM_MODE, align 4
  %24 = call i32 @xm_write32(%struct.skge_hw* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @XM_TX_CMD, align 4
  %28 = call i32 @xm_write16(%struct.skge_hw* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @XM_RX_CMD, align 4
  %32 = call i32 @xm_write16(%struct.skge_hw* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %34 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SK_PHY_BCOM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PHY_BCOM_INT_MASK, align 4
  %42 = call i32 @xm_write16(%struct.skge_hw* %39, i32 %40, i32 %41, i32 65535)
  br label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @XM_HSM, align 4
  %47 = call i32 @xm_outhash(%struct.skge_hw* %44, i32 %45, i32 %46, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @genesis_reset.zero, i64 0, i64 0))
  %48 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @XM_MODE, align 4
  %51 = call i32 @xm_read32(%struct.skge_hw* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @XM_MODE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @XM_MD_FTF, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @xm_write32(%struct.skge_hw* %52, i32 %53, i32 %54, i32 %57)
  %59 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @XM_MODE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @XM_MD_FRF, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @xm_write32(%struct.skge_hw* %59, i32 %60, i32 %61, i32 %64)
  ret void
}

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @xm_write32(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_outhash(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @xm_read32(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
