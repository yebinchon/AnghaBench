; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_run_xdp_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_run_xdp_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32 }
%struct.ixgbe_ring = type { i32, i32, %struct.xdp_umem* }
%struct.xdp_umem = type { i32 }
%struct.xdp_buff = type { i32, i64, i64 }
%struct.bpf_prog = type { i32 }
%struct.xdp_frame = type { i32 }

@IXGBE_XDP_PASS = common dso_local global i32 0, align 4
@IXGBE_XDP_CONSUMED = common dso_local global i32 0, align 4
@IXGBE_XDP_REDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.ixgbe_ring*, %struct.xdp_buff*)* @ixgbe_run_xdp_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_run_xdp_zc(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca %struct.xdp_umem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.xdp_frame*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %6, align 8
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 2
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %15, align 8
  store %struct.xdp_umem* %16, %struct.xdp_umem** %7, align 8
  %17 = load i32, i32* @IXGBE_XDP_PASS, align 4
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.bpf_prog* @READ_ONCE(i32 %21)
  store %struct.bpf_prog* %22, %struct.bpf_prog** %10, align 8
  %23 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %24 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %25 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %23, %struct.xdp_buff* %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %27 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %30 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %12, align 8
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %7, align 8
  %34 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %35 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %33, i32 %36, i64 %37)
  %39 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %40 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  switch i32 %41, label %73 [
    i32 130, label %42
    i32 128, label %43
    i32 129, label %58
    i32 132, label %76
    i32 131, label %83
  ]

42:                                               ; preds = %3
  br label %85

43:                                               ; preds = %3
  %44 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %45 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %44)
  store %struct.xdp_frame* %45, %struct.xdp_frame** %11, align 8
  %46 = load %struct.xdp_frame*, %struct.xdp_frame** %11, align 8
  %47 = icmp ne %struct.xdp_frame* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @unlikely(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %53, i32* %9, align 4
  br label %85

54:                                               ; preds = %43
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %56 = load %struct.xdp_frame*, %struct.xdp_frame** %11, align 8
  %57 = call i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter* %55, %struct.xdp_frame* %56)
  store i32 %57, i32* %9, align 4
  br label %85

58:                                               ; preds = %3
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %60 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %64 = call i32 @xdp_do_redirect(i32 %61, %struct.xdp_buff* %62, %struct.bpf_prog* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @IXGBE_XDP_REDIR, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %9, align 4
  br label %85

73:                                               ; preds = %3
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @bpf_warn_invalid_xdp_action(i32 %74)
  br label %76

76:                                               ; preds = %3, %73
  %77 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %78 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @trace_xdp_exception(i32 %79, %struct.bpf_prog* %80, i32 %81)
  br label %83

83:                                               ; preds = %3, %76
  %84 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %71, %54, %52, %42
  %86 = call i32 (...) @rcu_read_unlock()
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i32, i64) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter*, %struct.xdp_frame*) #1

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
