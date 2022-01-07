; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i32, i64 }
%struct.veth_priv = type { i32 }
%struct.veth_rq_stats = type { i64, i64, i32 }
%struct.pcpu_lstats = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @veth_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.veth_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.veth_rq_stats, align 8
  %8 = alloca %struct.pcpu_lstats, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.veth_priv* %10, %struct.veth_priv** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @veth_stats_tx(%struct.pcpu_lstats* %8, %struct.net_device* %11)
  %13 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %14 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %13, i32 0, i32 5
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %8, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @veth_stats_rx(%struct.veth_rq_stats* %7, %struct.net_device* %23)
  %25 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %7, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %28 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %39 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.net_device* @rcu_dereference(i32 %40)
  store %struct.net_device* %41, %struct.net_device** %6, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %2
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = call i64 @veth_stats_tx(%struct.pcpu_lstats* %8, %struct.net_device* %45)
  %47 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %48 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @veth_stats_rx(%struct.veth_rq_stats* %7, %struct.net_device* %65)
  %67 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %70 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %7, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %76 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %44, %2
  %80 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @veth_stats_tx(%struct.pcpu_lstats*, %struct.net_device*) #1

declare dso_local i32 @veth_stats_rx(%struct.veth_rq_stats*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
