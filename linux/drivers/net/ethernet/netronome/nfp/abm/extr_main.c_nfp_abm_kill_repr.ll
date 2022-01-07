; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_kill_repr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_kill_repr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_abm_link = type { i64 }
%struct.net_device = type { i32 }
%struct.nfp_reprs = type { i32* }
%struct.nfp_repr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.nfp_abm_link*, i32)* @nfp_abm_kill_repr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_kill_repr(%struct.nfp_app* %0, %struct.nfp_abm_link* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_abm_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nfp_reprs*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app* %9, i32 %10)
  store %struct.nfp_reprs* %11, %struct.nfp_reprs** %8, align 8
  %12 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %13 = load %struct.nfp_reprs*, %struct.nfp_reprs** %8, align 8
  %14 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app* %12, %struct.nfp_reprs* %13, i64 %16)
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %38

21:                                               ; preds = %3
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.nfp_reprs*, %struct.nfp_reprs** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rcu_assign_pointer(i32 %30, i32* null)
  %32 = call i32 (...) @rtnl_unlock()
  %33 = call i32 (...) @synchronize_rcu()
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call i64 @netdev_priv(%struct.net_device* %34)
  %36 = inttoptr i64 %35 to %struct.nfp_repr*
  %37 = call i32 @nfp_repr_clean_and_free(%struct.nfp_repr* %36)
  br label %38

38:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app*, i32) #1

declare dso_local %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app*, %struct.nfp_reprs*, i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @nfp_repr_clean_and_free(%struct.nfp_repr*) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
