; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_set_tx_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_set_tx_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i64 }

@BITS_TX_RQ_START_ADDR_EN = common dso_local global i32 0, align 4
@TX_RQ_REG_EN = common dso_local global i64 0, align 8
@TX_RQ_START_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*, i32)* @hix5hd2_set_tx_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_set_tx_rq(%struct.hix5hd2_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.hix5hd2_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @BITS_TX_RQ_START_ADDR_EN, align 4
  %6 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TX_RQ_REG_EN, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel_relaxed(i32 %5, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TX_RQ_START_ADDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel_relaxed(i32 %12, i64 %17)
  %19 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %20 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TX_RQ_REG_EN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 0, i64 %23)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
