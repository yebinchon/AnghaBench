; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_net_reconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_net_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@NFP_NET_POLL_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfp_net_reconfig(%struct.nfp_net* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %7 = call i32 @nfp_net_reconfig_sync_enter(%struct.nfp_net* %6)
  %8 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @nfp_net_reconfig_start(%struct.nfp_net* %8, i32 %9)
  %11 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = load i32, i32* @NFP_NET_POLL_TIMEOUT, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  %18 = call i32 @nfp_net_reconfig_wait(%struct.nfp_net* %11, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %28 = call i32 @nfp_net_reconfig_start_async(%struct.nfp_net* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @nfp_net_reconfig_sync_enter(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_reconfig_start(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_reconfig_wait(%struct.nfp_net*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nfp_net_reconfig_start_async(%struct.nfp_net*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
