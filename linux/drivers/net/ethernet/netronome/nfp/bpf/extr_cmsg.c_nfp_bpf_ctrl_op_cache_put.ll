; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_op_cache_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_op_cache_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_bpf_map = type { i64, i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@NFP_BPF_MAP_CACHE_TIME_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_bpf_map*, i32, %struct.sk_buff*, i64)* @nfp_bpf_ctrl_op_cache_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_bpf_ctrl_op_cache_put(%struct.nfp_bpf_map* %0, i32 %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca %struct.nfp_bpf_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nfp_bpf_map* %0, %struct.nfp_bpf_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nfp_bpf_ctrl_op_cache_invalidate(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nfp_bpf_ctrl_op_cache_fill(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %18, %4
  store i64 0, i64* %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i64 (...) @ktime_get_ns()
  %26 = load i64, i64* @NFP_BPF_MAP_CACHE_TIME_NS, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %36 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %48 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %46
  %52 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %53 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %60 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %62 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @swap(i32 %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %57, %51, %46, %43
  %67 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %68 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %18
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i32 @dev_consume_skb_any(%struct.sk_buff* %71)
  ret void
}

declare dso_local i32 @nfp_bpf_ctrl_op_cache_invalidate(i32) #1

declare dso_local i32 @nfp_bpf_ctrl_op_cache_fill(i32) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @swap(i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
