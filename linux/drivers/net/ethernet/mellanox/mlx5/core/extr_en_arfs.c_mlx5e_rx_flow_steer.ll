; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_mlx5e_rx_flow_steer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_mlx5e_rx_flow_steer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mlx5e_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5e_arfs_tables }
%struct.mlx5e_arfs_tables = type { i32, i32 }
%struct.arfs_table = type { i32 }
%struct.arfs_rule = type { i32, i32, i32 }
%struct.flow_keys = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_rx_flow_steer(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_priv*, align 8
  %11 = alloca %struct.mlx5e_arfs_tables*, align 8
  %12 = alloca %struct.arfs_table*, align 8
  %13 = alloca %struct.arfs_rule*, align 8
  %14 = alloca %struct.flow_keys, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.mlx5e_priv* %16, %struct.mlx5e_priv** %10, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.mlx5e_arfs_tables* %19, %struct.mlx5e_arfs_tables** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i32 @skb_flow_dissect_flow_keys(%struct.sk_buff* %20, %struct.flow_keys* %14, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTONOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %120

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %14, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_IP, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %14, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_P_IPV6, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EPROTONOSUPPORT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %120

43:                                               ; preds = %33, %26
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EPROTONOSUPPORT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %120

51:                                               ; preds = %43
  %52 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %11, align 8
  %53 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %14, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %14, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.arfs_table* @arfs_get_table(%struct.mlx5e_arfs_tables* %52, i32 %55, i64 %58)
  store %struct.arfs_table* %59, %struct.arfs_table** %12, align 8
  %60 = load %struct.arfs_table*, %struct.arfs_table** %12, align 8
  %61 = icmp ne %struct.arfs_table* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @EPROTONOSUPPORT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %120

65:                                               ; preds = %51
  %66 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %11, align 8
  %67 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.arfs_table*, %struct.arfs_table** %12, align 8
  %70 = call %struct.arfs_rule* @arfs_find_rule(%struct.arfs_table* %69, %struct.flow_keys* %14)
  store %struct.arfs_rule* %70, %struct.arfs_rule** %13, align 8
  %71 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %72 = icmp ne %struct.arfs_rule* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %75 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %11, align 8
  %81 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %84 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %120

86:                                               ; preds = %73
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %89 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %105

90:                                               ; preds = %65
  %91 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %92 = load %struct.arfs_table*, %struct.arfs_table** %12, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.arfs_rule* @arfs_alloc_rule(%struct.mlx5e_priv* %91, %struct.arfs_table* %92, %struct.flow_keys* %14, i32 %93, i32 %94)
  store %struct.arfs_rule* %95, %struct.arfs_rule** %13, align 8
  %96 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %97 = icmp ne %struct.arfs_rule* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %11, align 8
  %100 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock_bh(i32* %100)
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %120

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %107 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %112 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %111, i32 0, i32 1
  %113 = call i32 @queue_work(i32 %110, i32* %112)
  %114 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %11, align 8
  %115 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock_bh(i32* %115)
  %117 = load %struct.arfs_rule*, %struct.arfs_rule** %13, align 8
  %118 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %105, %98, %79, %62, %48, %40, %23
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_flow_dissect_flow_keys(%struct.sk_buff*, %struct.flow_keys*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.arfs_table* @arfs_get_table(%struct.mlx5e_arfs_tables*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.arfs_rule* @arfs_find_rule(%struct.arfs_table*, %struct.flow_keys*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.arfs_rule* @arfs_alloc_rule(%struct.mlx5e_priv*, %struct.arfs_table*, %struct.flow_keys*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
