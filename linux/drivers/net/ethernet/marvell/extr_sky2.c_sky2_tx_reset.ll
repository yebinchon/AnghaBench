; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@TXA_CTRL = common dso_local global i32 0, align 4
@TXA_DIS_FSYNC = common dso_local global i32 0, align 4
@TXA_DIS_ALLOC = common dso_local global i32 0, align 4
@TXA_STOP_RC = common dso_local global i32 0, align 4
@TXA_ITI_INI = common dso_local global i32 0, align 4
@TXA_LIM_INI = common dso_local global i32 0, align 4
@txqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@BMU_RST_SET = common dso_local global i64 0, align 8
@BMU_FIFO_RST = common dso_local global i64 0, align 8
@PREF_UNIT_CTRL = common dso_local global i32 0, align 4
@PREF_UNIT_RST_SET = common dso_local global i64 0, align 8
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_SET = common dso_local global i64 0, align 8
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_tx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_tx_reset(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TXA_CTRL, align 4
  %8 = call i32 @SK_REG(i32 %6, i32 %7)
  %9 = load i32, i32* @TXA_DIS_FSYNC, align 4
  %10 = load i32, i32* @TXA_DIS_ALLOC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TXA_STOP_RC, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @sky2_write8(%struct.sky2_hw* %5, i32 %8, i32 %13)
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TXA_ITI_INI, align 4
  %18 = call i32 @SK_REG(i32 %16, i32 %17)
  %19 = call i32 @sky2_write32(%struct.sky2_hw* %15, i32 %18, i64 0)
  %20 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TXA_LIM_INI, align 4
  %23 = call i32 @SK_REG(i32 %21, i32 %22)
  %24 = call i32 @sky2_write32(%struct.sky2_hw* %20, i32 %23, i64 0)
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %26 = load i32*, i32** @txqaddr, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @Q_CSR, align 4
  %32 = call i32 @Q_ADDR(i32 %30, i32 %31)
  %33 = load i64, i64* @BMU_RST_SET, align 8
  %34 = load i64, i64* @BMU_FIFO_RST, align 8
  %35 = or i64 %33, %34
  %36 = call i32 @sky2_write32(%struct.sky2_hw* %25, i32 %32, i64 %35)
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %38 = load i32*, i32** @txqaddr, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PREF_UNIT_CTRL, align 4
  %44 = call i32 @Y2_QADDR(i32 %42, i32 %43)
  %45 = load i64, i64* @PREF_UNIT_RST_SET, align 8
  %46 = call i32 @sky2_write32(%struct.sky2_hw* %37, i32 %44, i64 %45)
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %48 = load i32*, i32** @txqaddr, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RB_CTRL, align 4
  %54 = call i32 @RB_ADDR(i32 %52, i32 %53)
  %55 = load i64, i64* @RB_RST_SET, align 8
  %56 = call i32 @sky2_write32(%struct.sky2_hw* %47, i32 %54, i64 %55)
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %60 = call i32 @SK_REG(i32 %58, i32 %59)
  %61 = load i32, i32* @GMF_RST_SET, align 4
  %62 = call i32 @sky2_write8(%struct.sky2_hw* %57, i32 %60, i32 %61)
  %63 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %64 = load i32, i32* @B0_CTST, align 4
  %65 = call i32 @sky2_read32(%struct.sky2_hw* %63, i32 %64)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i64) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @Y2_QADDR(i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
