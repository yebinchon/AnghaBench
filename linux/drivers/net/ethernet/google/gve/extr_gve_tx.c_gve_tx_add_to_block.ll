; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_add_to_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_add_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.gve_tx_ring*, %struct.gve_notify_block* }
%struct.gve_tx_ring = type { i32 }
%struct.gve_notify_block = type { %struct.gve_tx_ring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*, i32)* @gve_tx_add_to_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_tx_add_to_block(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gve_notify_block*, align 8
  %7 = alloca %struct.gve_tx_ring*, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @gve_tx_idx_to_ntfy(%struct.gve_priv* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %12 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %11, i32 0, i32 1
  %13 = load %struct.gve_notify_block*, %struct.gve_notify_block** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %13, i64 %15
  store %struct.gve_notify_block* %16, %struct.gve_notify_block** %6, align 8
  %17 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %18 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %17, i32 0, i32 0
  %19 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %19, i64 %21
  store %struct.gve_tx_ring* %22, %struct.gve_tx_ring** %7, align 8
  %23 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %24 = load %struct.gve_notify_block*, %struct.gve_notify_block** %6, align 8
  %25 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %24, i32 0, i32 0
  store %struct.gve_tx_ring* %23, %struct.gve_tx_ring** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %7, align 8
  %28 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @gve_tx_idx_to_ntfy(%struct.gve_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
