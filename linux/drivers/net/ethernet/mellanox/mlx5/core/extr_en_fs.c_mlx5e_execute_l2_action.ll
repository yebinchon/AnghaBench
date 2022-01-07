; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_execute_l2_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_execute_l2_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32 }
%struct.mlx5e_l2_hash_node = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX5E_FULLMATCH = common dso_local global i32 0, align 4
@MLX5E_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MPFS, failed to %s mac %pM, err(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_l2_hash_node*)* @mlx5e_execute_l2_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_execute_l2_action(%struct.mlx5e_priv* %0, %struct.mlx5e_l2_hash_node* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_l2_hash_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_l2_hash_node* %1, %struct.mlx5e_l2_hash_node** %4, align 8
  %9 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ether_addr_copy(i32* %15, i32 %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %65 [
    i32 129, label %22
    i32 128, label %45
  ]

22:                                               ; preds = %2
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %24 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %24, i32 0, i32 2
  %26 = load i32, i32* @MLX5E_FULLMATCH, align 4
  %27 = call i32 @mlx5e_add_l2_flow_rule(%struct.mlx5e_priv* %23, %struct.TYPE_3__* %25, i32 %26)
  %28 = call i32 @is_multicast_ether_addr(i32* %15)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %22
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5_mpfs_add_mac(i32 %33, i32* %15)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %22
  %42 = load i32, i32* @MLX5E_ACTION_NONE, align 4
  %43 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %65

45:                                               ; preds = %2
  %46 = call i32 @is_multicast_ether_addr(i32* %15)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlx5_mpfs_del_mac(i32 %56, i32* %15)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %48, %45
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %60 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5e_l2_hash_node, %struct.mlx5e_l2_hash_node* %60, i32 0, i32 2
  %62 = call i32 @mlx5e_del_l2_flow_rule(%struct.mlx5e_priv* %59, %struct.TYPE_3__* %61)
  %63 = load %struct.mlx5e_l2_hash_node*, %struct.mlx5e_l2_hash_node** %4, align 8
  %64 = call i32 @mlx5e_del_l2_from_hash(%struct.mlx5e_l2_hash_node* %63)
  br label %65

65:                                               ; preds = %2, %58, %41
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 129
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @netdev_warn(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %75, i32* %15, i32 %76)
  br label %78

78:                                               ; preds = %68, %65
  %79 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #2

declare dso_local i32 @mlx5e_add_l2_flow_rule(%struct.mlx5e_priv*, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @is_multicast_ether_addr(i32*) #2

declare dso_local i32 @mlx5_mpfs_add_mac(i32, i32*) #2

declare dso_local i32 @mlx5_mpfs_del_mac(i32, i32*) #2

declare dso_local i32 @mlx5e_del_l2_flow_rule(%struct.mlx5e_priv*, %struct.TYPE_3__*) #2

declare dso_local i32 @mlx5e_del_l2_from_hash(%struct.mlx5e_l2_hash_node*) #2

declare dso_local i32 @netdev_warn(i32, i8*, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
