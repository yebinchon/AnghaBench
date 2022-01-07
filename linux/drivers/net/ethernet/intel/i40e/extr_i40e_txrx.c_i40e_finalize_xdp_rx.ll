; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_finalize_xdp_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_finalize_xdp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_ring** }

@I40E_XDP_REDIR = common dso_local global i32 0, align 4
@I40E_XDP_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_finalize_xdp_rx(%struct.i40e_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_ring*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @I40E_XDP_REDIR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @xdp_do_flush_map()
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @I40E_XDP_TX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.i40e_ring**, %struct.i40e_ring*** %21, align 8
  %23 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %22, i64 %25
  %27 = load %struct.i40e_ring*, %struct.i40e_ring** %26, align 8
  store %struct.i40e_ring* %27, %struct.i40e_ring** %5, align 8
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %29 = call i32 @i40e_xdp_ring_update_tail(%struct.i40e_ring* %28)
  br label %30

30:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i32 @i40e_xdp_ring_update_tail(%struct.i40e_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
