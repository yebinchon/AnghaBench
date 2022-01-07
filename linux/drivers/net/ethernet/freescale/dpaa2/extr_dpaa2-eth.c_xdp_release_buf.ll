; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_xdp_release_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_xdp_release_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32 }
%struct.dpaa2_eth_channel = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@DPAA2_ETH_BUFS_PER_CMD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, i32)* @xdp_release_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdp_release_buf(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca %struct.dpaa2_eth_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store %struct.dpaa2_eth_channel* %1, %struct.dpaa2_eth_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %10 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %14 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32 %8, i32* %18, align 4
  %19 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DPAA2_ETH_BUFS_PER_CMD, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %76

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %46, %26
  %28 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %29 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %32 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %35 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dpaa2_io_service_release(i32 %30, i32 %33, i32* %37, i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = call i32 (...) @cpu_relax()
  br label %27

48:                                               ; preds = %27
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %53 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %54 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %58 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @free_bufs(%struct.dpaa2_eth_priv* %52, i32* %56, i64 %60)
  %62 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %63 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %67 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  br label %72

72:                                               ; preds = %51, %48
  %73 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %74 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %25
  ret void
}

declare dso_local i32 @dpaa2_io_service_release(i32, i32, i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @free_bufs(%struct.dpaa2_eth_priv*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
