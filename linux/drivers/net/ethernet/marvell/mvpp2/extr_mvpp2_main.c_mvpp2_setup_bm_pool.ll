; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_setup_bm_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_setup_bm_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MVPP2_BM_SHORT_BUF_NUM = common dso_local global i32 0, align 4
@mvpp2_pools = common dso_local global %struct.TYPE_2__* null, align 8
@MVPP2_BM_SHORT = common dso_local global i64 0, align 8
@MVPP2_BM_SHORT_PKT_SIZE = common dso_local global i32 0, align 4
@MVPP2_BM_LONG_BUF_NUM = common dso_local global i32 0, align 4
@MVPP2_BM_LONG = common dso_local global i64 0, align 8
@MVPP2_BM_LONG_PKT_SIZE = common dso_local global i32 0, align 4
@MVPP2_BM_JUMBO_BUF_NUM = common dso_local global i32 0, align 4
@MVPP2_BM_JUMBO = common dso_local global i64 0, align 8
@MVPP2_BM_JUMBO_PKT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mvpp2_setup_bm_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_setup_bm_pool() #0 {
  %1 = load i32, i32* @MVPP2_BM_SHORT_BUF_NUM, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvpp2_pools, align 8
  %3 = load i64, i64* @MVPP2_BM_SHORT, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @MVPP2_BM_SHORT_PKT_SIZE, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvpp2_pools, align 8
  %8 = load i64, i64* @MVPP2_BM_SHORT, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* @MVPP2_BM_LONG_BUF_NUM, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvpp2_pools, align 8
  %13 = load i64, i64* @MVPP2_BM_LONG, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @MVPP2_BM_LONG_PKT_SIZE, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvpp2_pools, align 8
  %18 = load i64, i64* @MVPP2_BM_LONG, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @MVPP2_BM_JUMBO_BUF_NUM, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvpp2_pools, align 8
  %23 = load i64, i64* @MVPP2_BM_JUMBO, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @MVPP2_BM_JUMBO_PKT_SIZE, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvpp2_pools, align 8
  %28 = load i64, i64* @MVPP2_BM_JUMBO, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
