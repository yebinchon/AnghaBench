; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_sec_ind_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_sec_ind_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.htt_security_indication = type { i32, i32 }
%struct.ath10k_peer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"failed to find peer id %d for security indication\00", align 1
@HTT_SECURITY_TYPE = common dso_local global i32 0, align 4
@HTT_SECURITY_IS_UNICAST = common dso_local global i32 0, align 4
@HTT_TXRX_SEC_UCAST = common dso_local global i32 0, align 4
@HTT_TXRX_SEC_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.htt_security_indication*)* @ath10k_htt_rx_sec_ind_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_sec_ind_handler(%struct.ath10k* %0, %struct.htt_security_indication* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.htt_security_indication*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_peer*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.htt_security_indication* %1, %struct.htt_security_indication** %4, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = load %struct.htt_security_indication*, %struct.htt_security_indication** %4, align 8
  %13 = getelementptr inbounds %struct.htt_security_indication, %struct.htt_security_indication* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__le16_to_cpu(i32 %14)
  %16 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %11, i32 %15)
  store %struct.ath10k_peer* %16, %struct.ath10k_peer** %7, align 8
  %17 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %18 = icmp ne %struct.ath10k_peer* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load %struct.htt_security_indication*, %struct.htt_security_indication** %4, align 8
  %22 = getelementptr inbounds %struct.htt_security_indication, %struct.htt_security_indication* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  %25 = call i32 @ath10k_warn(%struct.ath10k* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %68

26:                                               ; preds = %2
  %27 = load %struct.htt_security_indication*, %struct.htt_security_indication** %4, align 8
  %28 = getelementptr inbounds %struct.htt_security_indication, %struct.htt_security_indication* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HTT_SECURITY_TYPE, align 4
  %31 = call i32 @MS(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.htt_security_indication*, %struct.htt_security_indication** %4, align 8
  %33 = getelementptr inbounds %struct.htt_security_indication, %struct.htt_security_indication* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HTT_SECURITY_IS_UNICAST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @HTT_TXRX_SEC_UCAST, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @HTT_TXRX_SEC_MCAST, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %45 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ath10k_htt_rx_pn_len(i32 %51)
  %53 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %54 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 4
  %60 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %61 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memset(i32 %62, i32 0, i32 4)
  %64 = load %struct.ath10k_peer*, %struct.ath10k_peer** %7, align 8
  %65 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memset(i32 %66, i32 0, i32 4)
  br label %68

68:                                               ; preds = %42, %19
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_bh(i32* %70)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath10k_htt_rx_pn_len(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
