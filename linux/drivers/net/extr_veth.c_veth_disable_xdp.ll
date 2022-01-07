; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_disable_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_disable_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_priv = type { %struct.veth_rq* }
%struct.veth_rq = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @veth_disable_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_disable_xdp(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.veth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.veth_rq*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.veth_priv* %7, %struct.veth_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.veth_priv*, %struct.veth_priv** %3, align 8
  %16 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %15, i32 0, i32 0
  %17 = load %struct.veth_rq*, %struct.veth_rq** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %17, i64 %19
  %21 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rcu_assign_pointer(i32 %22, i32* null)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @veth_napi_del(%struct.net_device* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %52, %27
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.veth_priv*, %struct.veth_priv** %3, align 8
  %38 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %37, i32 0, i32 0
  %39 = load %struct.veth_rq*, %struct.veth_rq** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %39, i64 %41
  store %struct.veth_rq* %42, %struct.veth_rq** %5, align 8
  %43 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %44 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %47 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %50 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %49, i32 0, i32 0
  %51 = call i32 @xdp_rxq_info_unreg(%struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %30

55:                                               ; preds = %30
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @veth_napi_del(%struct.net_device*) #1

declare dso_local i32 @xdp_rxq_info_unreg(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
