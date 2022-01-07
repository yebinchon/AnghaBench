; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_tgec.c_set_dflts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_tgec.c_set_dflts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgec_cfg = type { i32, i32, i32, i32, i32 }

@DEFAULT_TX_IPG_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_PAUSE_QUANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tgec_cfg*)* @set_dflts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dflts(%struct.tgec_cfg* %0) #0 {
  %2 = alloca %struct.tgec_cfg*, align 8
  store %struct.tgec_cfg* %0, %struct.tgec_cfg** %2, align 8
  %3 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %4 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %6 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %5, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @DEFAULT_TX_IPG_LENGTH, align 4
  %8 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %9 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @DEFAULT_MAX_FRAME_LENGTH, align 4
  %11 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %12 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @DEFAULT_PAUSE_QUANT, align 4
  %14 = load %struct.tgec_cfg*, %struct.tgec_cfg** %2, align 8
  %15 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
