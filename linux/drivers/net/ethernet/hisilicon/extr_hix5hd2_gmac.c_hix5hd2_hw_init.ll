; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i64 }

@ENA_PMU_INT = common dso_local global i64 0, align 8
@RAW_PMU_INT = common dso_local global i64 0, align 8
@BIT_CRC_ERR_PASS = common dso_local global i32 0, align 4
@REC_FILT_CONTROL = common dso_local global i64 0, align 8
@MAC_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@CONTROL_WORD = common dso_local global i64 0, align 8
@COL_SLOT_TIME = common dso_local global i64 0, align 8
@RX_BQ_INT_THRESHOLD = common dso_local global i32 0, align 4
@TX_RQ_INT_THRESHOLD = common dso_local global i32 0, align 4
@QUEUE_TX_BQ_SHIFT = common dso_local global i32 0, align 4
@IN_QUEUE_TH = common dso_local global i64 0, align 8
@RX_BQ_IN_TIMEOUT = common dso_local global i32 0, align 4
@RX_BQ_IN_TIMEOUT_TH = common dso_local global i64 0, align 8
@TX_RQ_IN_TIMEOUT = common dso_local global i32 0, align 4
@TX_RQ_IN_TIMEOUT_TH = common dso_local global i64 0, align 8
@RX_DESC_NUM = common dso_local global i32 0, align 4
@TX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_hw_init(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  %4 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ENA_PMU_INT, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel_relaxed(i32 0, i64 %8)
  %10 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RAW_PMU_INT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 -1, i64 %14)
  %16 = load i32, i32* @BIT_CRC_ERR_PASS, align 4
  %17 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %18 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REC_FILT_CONTROL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load i32, i32* @MAC_MAX_FRAME_SIZE, align 4
  %24 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CONTROL_WORD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  %30 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %31 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @COL_SLOT_TIME, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 0, i64 %34)
  %36 = load i32, i32* @RX_BQ_INT_THRESHOLD, align 4
  %37 = load i32, i32* @TX_RQ_INT_THRESHOLD, align 4
  %38 = load i32, i32* @QUEUE_TX_BQ_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %43 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IN_QUEUE_TH, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  %48 = load i32, i32* @RX_BQ_IN_TIMEOUT, align 4
  %49 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %50 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RX_BQ_IN_TIMEOUT_TH, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %48, i64 %53)
  %55 = load i32, i32* @TX_RQ_IN_TIMEOUT, align 4
  %56 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %57 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TX_RQ_IN_TIMEOUT_TH, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel_relaxed(i32 %55, i64 %60)
  %62 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %63 = load i32, i32* @RX_DESC_NUM, align 4
  %64 = load i32, i32* @TX_DESC_NUM, align 4
  %65 = call i32 @hix5hd2_set_desc_depth(%struct.hix5hd2_priv* %62, i32 %63, i32 %64)
  %66 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %67 = call i32 @hix5hd2_set_desc_addr(%struct.hix5hd2_priv* %66)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @hix5hd2_set_desc_depth(%struct.hix5hd2_priv*, i32, i32) #1

declare dso_local i32 @hix5hd2_set_desc_addr(%struct.hix5hd2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
