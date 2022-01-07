; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_remove_from_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_remove_from_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.gve_notify_block* }
%struct.gve_notify_block = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*, i32)* @gve_rx_remove_from_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_rx_remove_from_block(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_notify_block*, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %7 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %6, i32 0, i32 0
  %8 = load %struct.gve_notify_block*, %struct.gve_notify_block** %7, align 8
  %9 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @gve_rx_idx_to_ntfy(%struct.gve_priv* %9, i32 %10)
  %12 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %8, i64 %11
  store %struct.gve_notify_block* %12, %struct.gve_notify_block** %5, align 8
  %13 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %14 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  ret void
}

declare dso_local i64 @gve_rx_idx_to_ntfy(%struct.gve_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
