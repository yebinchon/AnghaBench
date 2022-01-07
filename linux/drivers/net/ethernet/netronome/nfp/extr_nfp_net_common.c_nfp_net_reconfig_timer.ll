; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, i64, i64 }
%struct.timer_list = type { i32 }

@reconfig_timer = common dso_local global i32 0, align 4
@nn = common dso_local global %struct.nfp_net* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @nfp_net_reconfig_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_reconfig_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.nfp_net*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %5 = ptrtoint %struct.nfp_net* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @reconfig_timer, align 4
  %8 = call %struct.nfp_net* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.nfp_net* %8, %struct.nfp_net** %3, align 8
  %9 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %21 = call i32 @nfp_net_reconfig_check_done(%struct.nfp_net* %20, i32 1)
  %22 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %28 = call i32 @nfp_net_reconfig_start_async(%struct.nfp_net* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  ret void
}

declare dso_local %struct.nfp_net* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nfp_net_reconfig_check_done(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_reconfig_start_async(%struct.nfp_net*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
