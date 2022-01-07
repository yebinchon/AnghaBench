; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_fqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_fqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@DPAA2_TX_CONF_FQ = common dso_local global i32 0, align 4
@dpaa2_eth_tx_conf = common dso_local global i32 0, align 4
@DPAA2_RX_FQ = common dso_local global i32 0, align 4
@dpaa2_eth_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*)* @setup_fqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_fqs(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %7 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %4
  %10 = load i32, i32* @DPAA2_TX_CONF_FQ, align 4
  %11 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %12 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %10, i32* %18, align 4
  %19 = load i32, i32* @dpaa2_eth_tx_conf, align 4
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %21 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %24 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %19, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %32 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %35 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %30, i8** %39, align 8
  br label %40

40:                                               ; preds = %9
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4

43:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %80, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %47 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = load i32, i32* @DPAA2_RX_FQ, align 4
  %51 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %55 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %50, i32* %58, align 4
  %59 = load i32, i32* @dpaa2_eth_rx, align 4
  %60 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %61 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %64 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %59, i32* %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %72 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %75 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %76
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i8* %70, i8** %79, align 8
  br label %80

80:                                               ; preds = %49
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %44

83:                                               ; preds = %44
  %84 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %2, align 8
  %85 = call i32 @set_fq_affinity(%struct.dpaa2_eth_priv* %84)
  ret void
}

declare dso_local i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @set_fq_affinity(%struct.dpaa2_eth_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
