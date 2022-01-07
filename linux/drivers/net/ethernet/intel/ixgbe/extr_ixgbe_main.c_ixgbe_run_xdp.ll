; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_run_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_run_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbe_adapter = type { i32 }
%struct.ixgbe_ring = type { i32, i32 }
%struct.xdp_buff = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_frame = type { i32 }

@IXGBE_XDP_PASS = common dso_local global i32 0, align 4
@IXGBE_XDP_CONSUMED = common dso_local global i32 0, align 4
@IXGBE_XDP_REDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ixgbe_adapter*, %struct.ixgbe_ring*, %struct.xdp_buff*)* @ixgbe_run_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ixgbe_run_xdp(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.xdp_frame*, align 8
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %6, align 8
  %12 = load i32, i32* @IXGBE_XDP_PASS, align 4
  store i32 %12, i32* %8, align 4
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bpf_prog* @READ_ONCE(i32 %16)
  store %struct.bpf_prog* %17, %struct.bpf_prog** %9, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %19 = icmp ne %struct.bpf_prog* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %23 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @prefetchw(i32 %24)
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %27 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %28 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %26, %struct.xdp_buff* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %60 [
    i32 130, label %30
    i32 128, label %31
    i32 129, label %46
    i32 132, label %63
    i32 131, label %70
  ]

30:                                               ; preds = %21
  br label %72

31:                                               ; preds = %21
  %32 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %33 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %32)
  store %struct.xdp_frame* %33, %struct.xdp_frame** %10, align 8
  %34 = load %struct.xdp_frame*, %struct.xdp_frame** %10, align 8
  %35 = icmp ne %struct.xdp_frame* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @unlikely(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %41, i32* %8, align 4
  br label %72

42:                                               ; preds = %31
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %44 = load %struct.xdp_frame*, %struct.xdp_frame** %10, align 8
  %45 = call i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter* %43, %struct.xdp_frame* %44)
  store i32 %45, i32* %8, align 4
  br label %72

46:                                               ; preds = %21
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %52 = call i32 @xdp_do_redirect(i32 %49, %struct.xdp_buff* %50, %struct.bpf_prog* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @IXGBE_XDP_REDIR, align 4
  store i32 %56, i32* %8, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %72

60:                                               ; preds = %21
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @bpf_warn_invalid_xdp_action(i32 %61)
  br label %63

63:                                               ; preds = %21, %60
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %65 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @trace_xdp_exception(i32 %66, %struct.bpf_prog* %67, i32 %68)
  br label %70

70:                                               ; preds = %21, %63
  %71 = load i32, i32* @IXGBE_XDP_CONSUMED, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %59, %42, %40, %30
  br label %73

73:                                               ; preds = %72, %20
  %74 = call i32 (...) @rcu_read_unlock()
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 0, %75
  %77 = call %struct.sk_buff* @ERR_PTR(i32 %76)
  ret %struct.sk_buff* %77
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter*, %struct.xdp_frame*) #1

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
