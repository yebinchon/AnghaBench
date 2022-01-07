; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_stats_rlim_request_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_stats_rlim_request_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.nfp_reprs = type { i32, i32* }
%struct.net_device = type { i32 }
%struct.nfp_repr = type { %struct.nfp_flower_repr_priv* }
%struct.nfp_flower_repr_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFP_REPR_TYPE_VF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_priv*)* @nfp_flower_stats_rlim_request_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_stats_rlim_request_all(%struct.nfp_flower_priv* %0) #0 {
  %2 = alloca %struct.nfp_flower_priv*, align 8
  %3 = alloca %struct.nfp_reprs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_repr*, align 8
  %7 = alloca %struct.nfp_flower_repr_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_flower_priv* %0, %struct.nfp_flower_priv** %2, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NFP_REPR_TYPE_VF, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @rcu_dereference(i32 %17)
  %19 = bitcast i8* %18 to %struct.nfp_reprs*
  store %struct.nfp_reprs* %19, %struct.nfp_reprs** %3, align 8
  %20 = load %struct.nfp_reprs*, %struct.nfp_reprs** %3, align 8
  %21 = icmp ne %struct.nfp_reprs* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %64

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.nfp_reprs*, %struct.nfp_reprs** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.nfp_reprs*, %struct.nfp_reprs** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rcu_dereference(i32 %37)
  %39 = bitcast i8* %38 to %struct.net_device*
  store %struct.net_device* %39, %struct.net_device** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %30
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %43)
  store %struct.nfp_repr* %44, %struct.nfp_repr** %6, align 8
  %45 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %46 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %45, i32 0, i32 0
  %47 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %46, align 8
  store %struct.nfp_flower_repr_priv* %47, %struct.nfp_flower_repr_priv** %7, align 8
  %48 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %7, align 8
  %49 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %60

55:                                               ; preds = %42
  %56 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %2, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @nfp_flower_stats_rlim_request(%struct.nfp_flower_priv* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %30
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %24

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %63, %22
  %65 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_flower_stats_rlim_request(%struct.nfp_flower_priv*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
