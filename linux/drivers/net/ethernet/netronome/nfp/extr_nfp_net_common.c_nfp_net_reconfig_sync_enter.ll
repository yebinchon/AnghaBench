; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_sync_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_sync_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@NFP_NET_POLL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_reconfig_sync_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_reconfig_sync_enter(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %9 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 3
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %34 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %33, i32 0, i32 2
  %35 = call i32 @del_timer_sync(%struct.TYPE_2__* %34)
  %36 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %37 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %38 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @nfp_net_reconfig_wait(%struct.nfp_net* %36, i64 %40)
  br label %42

42:                                               ; preds = %32, %21
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @nfp_net_reconfig_start(%struct.nfp_net* %46, i64 %47)
  %49 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i32, i32* @HZ, align 4
  %52 = load i32, i32* @NFP_NET_POLL_TIMEOUT, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = call i32 @nfp_net_reconfig_wait(%struct.nfp_net* %49, i64 %55)
  br label %57

57:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_2__*) #1

declare dso_local i32 @nfp_net_reconfig_wait(%struct.nfp_net*, i64) #1

declare dso_local i32 @nfp_net_reconfig_start(%struct.nfp_net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
