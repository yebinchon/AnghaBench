; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_reprs_resync_phys_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_reprs_resync_phys_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_reprs = type { i32, i32* }
%struct.nfp_repr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@NFP_PORT_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_reprs_resync_phys_ports(%struct.nfp_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_reprs*, align 8
  %6 = alloca %struct.nfp_repr*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %9 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %10 = call %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app* %8, i32 %9)
  store %struct.nfp_reprs* %10, %struct.nfp_reprs** %5, align 8
  %11 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %12 = icmp ne %struct.nfp_reprs* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %23 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app* %22, %struct.nfp_reprs* %23, i32 %24)
  store %struct.net_device* %25, %struct.net_device** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %57

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %30)
  store %struct.nfp_repr* %31, %struct.nfp_repr** %6, align 8
  %32 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %33 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NFP_PORT_INVALID, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %57

40:                                               ; preds = %29
  %41 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @nfp_app_repr_preclean(%struct.nfp_app* %41, %struct.net_device* %42)
  %44 = call i32 (...) @rtnl_lock()
  %45 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %46 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rcu_assign_pointer(i32 %51, i32* null)
  %53 = call i32 (...) @rtnl_unlock()
  %54 = call i32 (...) @synchronize_rcu()
  %55 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %56 = call i32 @nfp_repr_clean(%struct.nfp_repr* %55)
  br label %57

57:                                               ; preds = %40, %39, %28
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %15

60:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app*, i32) #1

declare dso_local %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app*, %struct.nfp_reprs*, i32) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_app_repr_preclean(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @nfp_repr_clean(%struct.nfp_repr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
