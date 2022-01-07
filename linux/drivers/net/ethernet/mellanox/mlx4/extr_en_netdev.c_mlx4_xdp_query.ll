; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_xdp_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_xdp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_3__**, i32*, %struct.mlx4_en_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_dev = type { i32 }
%struct.bpf_prog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TX_XDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx4_xdp_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_xdp_query(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %4, align 8
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 2
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %11, align 8
  store %struct.mlx4_en_dev* %12, %struct.mlx4_en_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @TX_XDP, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %33, i32 0, i32 0
  %35 = call i32 @lockdep_is_held(i32* %34)
  %36 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %32, i32 %35)
  store %struct.bpf_prog* %36, %struct.bpf_prog** %6, align 8
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %38 = icmp ne %struct.bpf_prog* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %22
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %22
  %46 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
