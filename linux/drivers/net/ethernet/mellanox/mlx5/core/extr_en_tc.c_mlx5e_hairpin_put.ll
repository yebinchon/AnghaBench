; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5e_hairpin_entry = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"del hairpin: peer %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_hairpin_entry*)* @mlx5e_hairpin_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hairpin_put(%struct.mlx5e_priv* %0, %struct.mlx5e_hairpin_entry* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_hairpin_entry*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_hairpin_entry* %1, %struct.mlx5e_hairpin_entry** %4, align 8
  %5 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_hairpin_entry, %struct.mlx5e_hairpin_entry* %5, i32 0, i32 3
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = call i32 @refcount_dec_and_mutex_lock(i32* %6, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_hairpin_entry, %struct.mlx5e_hairpin_entry* %15, i32 0, i32 2
  %17 = call i32 @hash_del(i32* %16)
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_hairpin_entry, %struct.mlx5e_hairpin_entry* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_11__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %14
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_hairpin_entry, %struct.mlx5e_hairpin_entry* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_name(i32 %40)
  %42 = call i32 @netdev_dbg(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5e_hairpin_entry, %struct.mlx5e_hairpin_entry* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = call i32 @mlx5e_hairpin_destroy(%struct.TYPE_11__* %45)
  br label %47

47:                                               ; preds = %28, %14
  %48 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5e_hairpin_entry, %struct.mlx5e_hairpin_entry* %48, i32 0, i32 0
  %50 = call i32 @list_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.mlx5e_hairpin_entry*, %struct.mlx5e_hairpin_entry** %4, align 8
  %56 = call i32 @kfree(%struct.mlx5e_hairpin_entry* %55)
  br label %57

57:                                               ; preds = %47, %13
  ret void
}

declare dso_local i32 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_11__*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @mlx5e_hairpin_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5e_hairpin_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
