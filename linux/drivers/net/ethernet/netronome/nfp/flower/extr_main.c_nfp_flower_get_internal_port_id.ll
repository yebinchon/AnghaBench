; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_get_internal_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_get_internal_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFP_MIN_INT_PORT_ID = common dso_local global i32 0, align 4
@NFP_MAX_INT_PORT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*)* @nfp_flower_get_internal_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_get_internal_port_id(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %6, align 8
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 @nfp_flower_lookup_internal_port_id(%struct.nfp_flower_priv* %11, %struct.net_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i32 @idr_preload(i32 %19)
  %21 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load i32, i32* @NFP_MIN_INT_PORT_ID, align 4
  %30 = load i32, i32* @NFP_MAX_INT_PORT_ID, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i32 @idr_alloc(i32* %27, %struct.net_device* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = call i32 (...) @idr_preload_end()
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @nfp_flower_lookup_internal_port_id(%struct.nfp_flower_priv*, %struct.net_device*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
