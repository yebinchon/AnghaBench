; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_snd_ptp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_snd_ptp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cqe_send_t = type { i64, i32 }
%struct.nicvf = type { i32*, i32, i32, %struct.nicvf* }
%struct.skb_shared_hwtstamps = type { i32 }

@CQ_TX_ERROP_TSTMP_TIMEOUT = common dso_local global i64 0, align 8
@CQ_TX_ERROP_TSTMP_CONFLICT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cqe_send_t*)* @nicvf_snd_ptp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_snd_ptp_handler(%struct.net_device* %0, %struct.cqe_send_t* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cqe_send_t*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.skb_shared_hwtstamps, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cqe_send_t* %1, %struct.cqe_send_t** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.nicvf* @netdev_priv(%struct.net_device* %8)
  store %struct.nicvf* %9, %struct.nicvf** %5, align 8
  %10 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 3
  %12 = load %struct.nicvf*, %struct.nicvf** %11, align 8
  store %struct.nicvf* %12, %struct.nicvf** %5, align 8
  %13 = call i32 (...) @smp_rmb()
  %14 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 2
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %18 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.cqe_send_t*, %struct.cqe_send_t** %4, align 8
  %24 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CQ_TX_ERROP_TSTMP_TIMEOUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.cqe_send_t*, %struct.cqe_send_t** %4, align 8
  %30 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CQ_TX_ERROP_TSTMP_CONFLICT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %51

35:                                               ; preds = %28
  %36 = call i32 @memset(%struct.skb_shared_hwtstamps* %6, i32 0, i32 4)
  %37 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %38 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cqe_send_t*, %struct.cqe_send_t** %4, align 8
  %41 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cavium_ptp_tstamp2time(i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ns_to_ktime(i32 %44)
  %46 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %48 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @skb_tstamp_tx(i32* %49, %struct.skb_shared_hwtstamps* %6)
  br label %51

51:                                               ; preds = %35, %34
  %52 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %53 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @dev_kfree_skb_any(i32* %54)
  %56 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %57 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = call i32 (...) @smp_wmb()
  br label %59

59:                                               ; preds = %51, %21
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @cavium_ptp_tstamp2time(i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @skb_tstamp_tx(i32*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
