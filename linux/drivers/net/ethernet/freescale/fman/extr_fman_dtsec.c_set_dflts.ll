; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_dtsec.c_set_dflts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_dtsec.c_set_dflts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEFAULT_HALFDUP_RETRANSMIT = common dso_local global i32 0, align 4
@DEFAULT_HALFDUP_COLL_WINDOW = common dso_local global i32 0, align 4
@DEFAULT_TX_PAUSE_TIME = common dso_local global i32 0, align 4
@DEFAULT_RX_PREPEND = common dso_local global i32 0, align 4
@DEFAULT_PREAMBLE_LEN = common dso_local global i32 0, align 4
@DEFAULT_TX_PAUSE_TIME_EXTD = common dso_local global i32 0, align 4
@DEFAULT_NON_BACK_TO_BACK_IPG1 = common dso_local global i32 0, align 4
@DEFAULT_NON_BACK_TO_BACK_IPG2 = common dso_local global i32 0, align 4
@DEFAULT_MIN_IFG_ENFORCEMENT = common dso_local global i32 0, align 4
@DEFAULT_BACK_TO_BACK_IPG = common dso_local global i32 0, align 4
@DEFAULT_MAXIMUM_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dtsec_cfg*)* @set_dflts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dflts(%struct.dtsec_cfg* %0) #0 {
  %2 = alloca %struct.dtsec_cfg*, align 8
  store %struct.dtsec_cfg* %0, %struct.dtsec_cfg** %2, align 8
  %3 = load i32, i32* @DEFAULT_HALFDUP_RETRANSMIT, align 4
  %4 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %4, i32 0, i32 13
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @DEFAULT_HALFDUP_COLL_WINDOW, align 4
  %7 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %7, i32 0, i32 12
  store i32 %6, i32* %8, align 4
  %9 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %10 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @DEFAULT_TX_PAUSE_TIME, align 4
  %12 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %13 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DEFAULT_RX_PREPEND, align 4
  %15 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %16 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %18 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %20 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %19, i32 0, i32 2
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @DEFAULT_PREAMBLE_LEN, align 4
  %22 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %23 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DEFAULT_TX_PAUSE_TIME_EXTD, align 4
  %25 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %26 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DEFAULT_NON_BACK_TO_BACK_IPG1, align 4
  %28 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %29 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DEFAULT_NON_BACK_TO_BACK_IPG2, align 4
  %31 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %32 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @DEFAULT_MIN_IFG_ENFORCEMENT, align 4
  %34 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %35 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @DEFAULT_BACK_TO_BACK_IPG, align 4
  %37 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %38 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @DEFAULT_MAXIMUM_FRAME, align 4
  %40 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  %41 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
