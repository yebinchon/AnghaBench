; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_run_xdp_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_run_xdp_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i32, %struct.TYPE_2__*, i32, %struct.xdp_umem* }
%struct.TYPE_2__ = type { %struct.i40e_ring** }
%struct.xdp_umem = type { i32 }
%struct.xdp_buff = type { i32, i64, i64 }
%struct.bpf_prog = type { i32 }

@I40E_XDP_PASS = common dso_local global i32 0, align 4
@I40E_XDP_REDIR = common dso_local global i32 0, align 4
@I40E_XDP_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, %struct.xdp_buff*)* @i40e_run_xdp_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_run_xdp_zc(%struct.i40e_ring* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.xdp_buff*, align 8
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_ring*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %4, align 8
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 4
  %14 = load %struct.xdp_umem*, %struct.xdp_umem** %13, align 8
  store %struct.xdp_umem* %14, %struct.xdp_umem** %5, align 8
  %15 = load i32, i32* @I40E_XDP_PASS, align 4
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.bpf_prog* @READ_ONCE(i32 %19)
  store %struct.bpf_prog* %20, %struct.bpf_prog** %9, align 8
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %22 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %23 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %21, %struct.xdp_buff* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %25 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %28 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %10, align 8
  %31 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %32 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %33 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %31, i32 %34, i64 %35)
  %37 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %38 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %70 [
    i32 130, label %40
    i32 128, label %41
    i32 129, label %55
    i32 132, label %73
    i32 131, label %80
  ]

40:                                               ; preds = %2
  br label %82

41:                                               ; preds = %2
  %42 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.i40e_ring**, %struct.i40e_ring*** %45, align 8
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %46, i64 %49
  %51 = load %struct.i40e_ring*, %struct.i40e_ring** %50, align 8
  store %struct.i40e_ring* %51, %struct.i40e_ring** %8, align 8
  %52 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %53 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %54 = call i32 @i40e_xmit_xdp_tx_ring(%struct.xdp_buff* %52, %struct.i40e_ring* %53)
  store i32 %54, i32* %7, align 4
  br label %82

55:                                               ; preds = %2
  %56 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %60 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %61 = call i32 @xdp_do_redirect(i32 %58, %struct.xdp_buff* %59, %struct.bpf_prog* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @I40E_XDP_REDIR, align 4
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %7, align 4
  br label %82

70:                                               ; preds = %2
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @bpf_warn_invalid_xdp_action(i32 %71)
  br label %73

73:                                               ; preds = %2, %70
  %74 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %75 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @trace_xdp_exception(i32 %76, %struct.bpf_prog* %77, i32 %78)
  br label %80

80:                                               ; preds = %2, %73
  %81 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %68, %41, %40
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i32, i64) #1

declare dso_local i32 @i40e_xmit_xdp_tx_ring(%struct.xdp_buff*, %struct.i40e_ring*) #1

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
