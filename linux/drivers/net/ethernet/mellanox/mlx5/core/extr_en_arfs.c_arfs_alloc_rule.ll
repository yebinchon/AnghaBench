; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_alloc_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_alloc_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arfs_rule = type { i32, i32, i32, %struct.arfs_tuple, i32, i32, %struct.mlx5e_priv* }
%struct.arfs_tuple = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5e_priv = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.arfs_table = type { i32 }
%struct.flow_keys = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@arfs_handle_work = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@RPS_NO_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arfs_rule* (%struct.mlx5e_priv*, %struct.arfs_table*, %struct.flow_keys*, i32, i32)* @arfs_alloc_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arfs_rule* @arfs_alloc_rule(%struct.mlx5e_priv* %0, %struct.arfs_table* %1, %struct.flow_keys* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.arfs_rule*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.arfs_table*, align 8
  %9 = alloca %struct.flow_keys*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.arfs_rule*, align 8
  %13 = alloca %struct.arfs_tuple*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.arfs_table* %1, %struct.arfs_table** %8, align 8
  store %struct.flow_keys* %2, %struct.flow_keys** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.arfs_rule* @kzalloc(i32 72, i32 %14)
  store %struct.arfs_rule* %15, %struct.arfs_rule** %12, align 8
  %16 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %17 = icmp ne %struct.arfs_rule* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.arfs_rule* null, %struct.arfs_rule** %6, align 8
  br label %118

19:                                               ; preds = %5
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %21 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %22 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %21, i32 0, i32 6
  store %struct.mlx5e_priv* %20, %struct.mlx5e_priv** %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %25 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %27 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %26, i32 0, i32 4
  %28 = load i32, i32* @arfs_handle_work, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %31 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %30, i32 0, i32 3
  store %struct.arfs_tuple* %31, %struct.arfs_tuple** %13, align 8
  %32 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %33 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %37 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %39 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %43 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %45 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ETH_P_IP, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %19
  %51 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %52 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %57 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %59 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %64 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  br label %80

65:                                               ; preds = %19
  %66 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %67 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %66, i32 0, i32 4
  %68 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %69 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = call i32 @memcpy(i32* %67, i32* %71, i32 4)
  %73 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %74 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %73, i32 0, i32 3
  %75 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %76 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @memcpy(i32* %74, i32* %78, i32 4)
  br label %80

80:                                               ; preds = %65, %50
  %81 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %82 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %86 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %88 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %92 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %95 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %97 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @RPS_NO_FILTER, align 4
  %103 = srem i32 %100, %102
  %104 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %105 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  %107 = getelementptr inbounds %struct.arfs_rule, %struct.arfs_rule* %106, i32 0, i32 1
  %108 = load %struct.arfs_table*, %struct.arfs_table** %8, align 8
  %109 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %110 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.arfs_tuple*, %struct.arfs_tuple** %13, align 8
  %113 = getelementptr inbounds %struct.arfs_tuple, %struct.arfs_tuple* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @arfs_hash_bucket(%struct.arfs_table* %108, i32 %111, i32 %114)
  %116 = call i32 @hlist_add_head(i32* %107, i32 %115)
  %117 = load %struct.arfs_rule*, %struct.arfs_rule** %12, align 8
  store %struct.arfs_rule* %117, %struct.arfs_rule** %6, align 8
  br label %118

118:                                              ; preds = %80, %18
  %119 = load %struct.arfs_rule*, %struct.arfs_rule** %6, align 8
  ret %struct.arfs_rule* %119
}

declare dso_local %struct.arfs_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @arfs_hash_bucket(%struct.arfs_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
