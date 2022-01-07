; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_write_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_write_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32* }
%struct.gve_rx_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gve_rx_write_doorbell(%struct.gve_priv* %0, %struct.gve_rx_ring* %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca %struct.gve_rx_ring*, align 8
  %5 = alloca i64, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store %struct.gve_rx_ring* %1, %struct.gve_rx_ring** %4, align 8
  %6 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %4, align 8
  %7 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32_to_cpu(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %16 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @iowrite32be(i32 %14, i32* %19)
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
