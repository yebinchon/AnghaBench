; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_repr_netdev_preclean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_repr_netdev_preclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32, %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_repr = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Failed to notify firmware about repr destruction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.net_device*)* @nfp_flower_repr_netdev_preclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_repr_netdev_preclean(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_repr*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %9)
  store %struct.nfp_repr* %10, %struct.nfp_repr** %5, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 1
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %12, align 8
  store %struct.nfp_flower_priv* %13, %struct.nfp_flower_priv** %6, align 8
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %14, i32 0, i32 0
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %19 = call i32 @nfp_flower_cmsg_portreify(%struct.nfp_repr* %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nfp_warn(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @nfp_flower_wait_repr_reify(%struct.nfp_app* %28, i32* %29, i32 1)
  br label %31

31:                                               ; preds = %27, %22
  ret void
}

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nfp_flower_cmsg_portreify(%struct.nfp_repr*, i32) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

declare dso_local i32 @nfp_flower_wait_repr_reify(%struct.nfp_app*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
