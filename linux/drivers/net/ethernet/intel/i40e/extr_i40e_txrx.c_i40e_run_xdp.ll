; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_run_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_run_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.i40e_ring = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.i40e_ring** }
%struct.xdp_buff = type { i32 }
%struct.bpf_prog = type { i32 }

@I40E_XDP_PASS = common dso_local global i32 0, align 4
@I40E_XDP_REDIR = common dso_local global i32 0, align 4
@I40E_XDP_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.i40e_ring*, %struct.xdp_buff*)* @i40e_run_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @i40e_run_xdp(%struct.i40e_ring* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.xdp_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_ring*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %4, align 8
  %10 = load i32, i32* @I40E_XDP_PASS, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bpf_prog* @READ_ONCE(i32 %14)
  store %struct.bpf_prog* %15, %struct.bpf_prog** %8, align 8
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %17 = icmp ne %struct.bpf_prog* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %21 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @prefetchw(i32 %22)
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %25 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %26 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %24, %struct.xdp_buff* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %58 [
    i32 130, label %28
    i32 128, label %29
    i32 129, label %43
    i32 132, label %61
    i32 131, label %68
  ]

28:                                               ; preds = %19
  br label %70

29:                                               ; preds = %19
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.i40e_ring**, %struct.i40e_ring*** %33, align 8
  %35 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %34, i64 %37
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %38, align 8
  store %struct.i40e_ring* %39, %struct.i40e_ring** %7, align 8
  %40 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %41 = load %struct.i40e_ring*, %struct.i40e_ring** %7, align 8
  %42 = call i32 @i40e_xmit_xdp_tx_ring(%struct.xdp_buff* %40, %struct.i40e_ring* %41)
  store i32 %42, i32* %6, align 4
  br label %70

43:                                               ; preds = %19
  %44 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %45 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %49 = call i32 @xdp_do_redirect(i32 %46, %struct.xdp_buff* %47, %struct.bpf_prog* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @I40E_XDP_REDIR, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %6, align 4
  br label %70

58:                                               ; preds = %19
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @bpf_warn_invalid_xdp_action(i32 %59)
  br label %61

61:                                               ; preds = %19, %58
  %62 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %63 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @trace_xdp_exception(i32 %64, %struct.bpf_prog* %65, i32 %66)
  br label %68

68:                                               ; preds = %19, %61
  %69 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %56, %29, %28
  br label %71

71:                                               ; preds = %70, %18
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.sk_buff* @ERR_PTR(i32 %74)
  ret %struct.sk_buff* %75
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @i40e_xmit_xdp_tx_ring(%struct.xdp_buff*, %struct.i40e_ring*) #1

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
