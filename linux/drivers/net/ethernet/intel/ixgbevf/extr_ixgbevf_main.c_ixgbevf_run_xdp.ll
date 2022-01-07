; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_run_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_run_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbevf_adapter = type { %struct.ixgbevf_ring** }
%struct.ixgbevf_ring = type { i64, i32, i32 }
%struct.xdp_buff = type { i32 }
%struct.bpf_prog = type { i32 }

@IXGBEVF_XDP_PASS = common dso_local global i32 0, align 4
@IXGBEVF_XDP_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, %struct.xdp_buff*)* @ixgbevf_run_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ixgbevf_run_xdp(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbevf_ring*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %6, align 8
  %11 = load i32, i32* @IXGBEVF_XDP_PASS, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bpf_prog* @READ_ONCE(i32 %15)
  store %struct.bpf_prog* %16, %struct.bpf_prog** %9, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %18 = icmp ne %struct.bpf_prog* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %22 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %23 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %21, %struct.xdp_buff* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %38 [
    i32 129, label %25
    i32 128, label %26
    i32 131, label %41
    i32 130, label %48
  ]

25:                                               ; preds = %20
  br label %50

26:                                               ; preds = %20
  %27 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %27, i32 0, i32 0
  %29 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %28, align 8
  %30 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %29, i64 %32
  %34 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %33, align 8
  store %struct.ixgbevf_ring* %34, %struct.ixgbevf_ring** %8, align 8
  %35 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %8, align 8
  %36 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %37 = call i32 @ixgbevf_xmit_xdp_ring(%struct.ixgbevf_ring* %35, %struct.xdp_buff* %36)
  store i32 %37, i32* %7, align 4
  br label %50

38:                                               ; preds = %20
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @bpf_warn_invalid_xdp_action(i32 %39)
  br label %41

41:                                               ; preds = %20, %38
  %42 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @trace_xdp_exception(i32 %44, %struct.bpf_prog* %45, i32 %46)
  br label %48

48:                                               ; preds = %20, %41
  %49 = load i32, i32* @IXGBEVF_XDP_CONSUMED, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %26, %25
  br label %51

51:                                               ; preds = %50, %19
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.sk_buff* @ERR_PTR(i32 %54)
  ret %struct.sk_buff* %55
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @ixgbevf_xmit_xdp_ring(%struct.ixgbevf_ring*, %struct.xdp_buff*) #1

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
