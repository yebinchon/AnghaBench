; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_rss_steer_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_rss_steer_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i64*, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_mac_entry = type { i64*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_EN_MAC_HASH_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_set_rss_steer_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_rss_steer_rules(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx4_mac_entry*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 0
  store i32* %9, i32** %6, align 8
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @mlx4_en_uc_steer_add(%struct.mlx4_en_priv* %10, i64* %15, i32* %16, i32* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %1
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 3
  %33 = call i32 @mlx4_en_tunnel_steer_add(%struct.mlx4_en_priv* %23, i64* %28, i32 %30, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %94

37:                                               ; preds = %22
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mlx4_mac_entry* @kmalloc(i32 16, i32 %38)
  store %struct.mlx4_mac_entry* %39, %struct.mlx4_mac_entry** %7, align 8
  %40 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %7, align 8
  %41 = icmp ne %struct.mlx4_mac_entry* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %78

45:                                               ; preds = %37
  %46 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 @memcpy(i64* %48, i64* %53, i32 8)
  %55 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = call i32 @memcpy(i64* %57, i64* %60, i32 8)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %7, align 8
  %66 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %65, i32 0, i32 1
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %7, align 8
  %71 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @MLX4_EN_MAC_HASH_IDX, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = call i32 @hlist_add_head_rcu(i32* %66, i32* %76)
  store i32 0, i32* %2, align 4
  br label %106

78:                                               ; preds = %42
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %84, i32 0, i32 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mlx4_flow_detach(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %83, %78
  br label %94

94:                                               ; preds = %93, %36
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @mlx4_en_uc_steer_release(%struct.mlx4_en_priv* %95, i64* %100, i32 %102, i32 %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %94, %45, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @mlx4_en_uc_steer_add(%struct.mlx4_en_priv*, i64*, i32*, i32*) #1

declare dso_local i32 @mlx4_en_tunnel_steer_add(%struct.mlx4_en_priv*, i64*, i32, i32*) #1

declare dso_local %struct.mlx4_mac_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @mlx4_flow_detach(i32, i32) #1

declare dso_local i32 @mlx4_en_uc_steer_release(%struct.mlx4_en_priv*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
