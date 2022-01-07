; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_free_internal_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_free_internal_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.net_device*)* @nfp_flower_free_internal_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_free_internal_port_id(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_flower_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %7, i32 0, i32 0
  %9 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  store %struct.nfp_flower_priv* %9, %struct.nfp_flower_priv** %5, align 8
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @nfp_flower_lookup_internal_port_id(%struct.nfp_flower_priv* %10, %struct.net_device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @idr_remove(i32* %23, i32 %24)
  %26 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  br label %30

30:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @nfp_flower_lookup_internal_port_id(%struct.nfp_flower_priv*, %struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
