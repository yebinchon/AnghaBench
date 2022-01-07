; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_rx_alloc_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_rx_alloc_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_rx_q = type { i32 }
%struct.gfar_private = type { %struct.gfar_extra_stats }
%struct.gfar_extra_stats = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Can't alloc RX buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_priv_rx_q*)* @gfar_rx_alloc_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_rx_alloc_err(%struct.gfar_priv_rx_q* %0) #0 {
  %2 = alloca %struct.gfar_priv_rx_q*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca %struct.gfar_extra_stats*, align 8
  store %struct.gfar_priv_rx_q* %0, %struct.gfar_priv_rx_q** %2, align 8
  %5 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %6 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.gfar_private* @netdev_priv(i32 %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %3, align 8
  %9 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 0
  store %struct.gfar_extra_stats* %10, %struct.gfar_extra_stats** %4, align 8
  %11 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %12 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netdev_err(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %4, align 8
  %16 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %15, i32 0, i32 0
  %17 = call i32 @atomic64_inc(i32* %16)
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
