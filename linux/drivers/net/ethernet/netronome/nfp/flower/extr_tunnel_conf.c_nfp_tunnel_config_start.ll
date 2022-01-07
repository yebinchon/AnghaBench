; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_config_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_config_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@offloaded_macs_params = common dso_local global i32 0, align 4
@nfp_tun_neigh_event_handler = common dso_local global i32 0, align 4
@nfp_check_rhashtable_empty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_tunnel_config_start(%struct.nfp_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.nfp_flower_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  %6 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %6, i32 0, i32 0
  %8 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  store %struct.nfp_flower_priv* %8, %struct.nfp_flower_priv** %4, align 8
  %9 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @rhashtable_init(i32* %11, i32* @offloaded_macs_params)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = call i32 @ida_init(i32* %20)
  %22 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load i32, i32* @nfp_tun_neigh_event_handler, align 4
  %39 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %44 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @register_netevent_notifier(%struct.TYPE_4__* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %17
  %50 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %4, align 8
  %51 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* @nfp_check_rhashtable_empty, align 4
  %54 = call i32 @rhashtable_free_and_destroy(i32* %52, i32 %53, i32* null)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %49, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @register_netevent_notifier(%struct.TYPE_4__*) #1

declare dso_local i32 @rhashtable_free_and_destroy(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
