; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_create_msg_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_create_msg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { %struct.cmd_msg_cache* }
%struct.cmd_msg_cache = type { i32, i32, i32, i32 }
%struct.mlx5_cmd_msg = type { i32, %struct.cmd_msg_cache* }

@MLX5_NUM_COMMAND_CACHES = common dso_local global i32 0, align 4
@cmd_cache_num_ent = common dso_local global i32* null, align 8
@cmd_cache_ent_size = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @create_msg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_msg_cache(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_cmd*, align 8
  %4 = alloca %struct.cmd_msg_cache*, align 8
  %5 = alloca %struct.mlx5_cmd_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  store %struct.mlx5_cmd* %9, %struct.mlx5_cmd** %3, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %73, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MLX5_NUM_COMMAND_CACHES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %15, i32 0, i32 0
  %17 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %17, i64 %19
  store %struct.cmd_msg_cache* %20, %struct.cmd_msg_cache** %4, align 8
  %21 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %22 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %21, i32 0, i32 3
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %25 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32*, i32** @cmd_cache_num_ent, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %33 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** @cmd_cache_ent_size, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %40 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %69, %14
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %44 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load i32, i32* @__GFP_NOWARN, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %53 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev* %48, i32 %51, i32 %54, i32 0)
  store %struct.mlx5_cmd_msg* %55, %struct.mlx5_cmd_msg** %5, align 8
  %56 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %57 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %72

60:                                               ; preds = %47
  %61 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %62 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %62, i32 0, i32 1
  store %struct.cmd_msg_cache* %61, %struct.cmd_msg_cache** %63, align 8
  %64 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %64, i32 0, i32 0
  %66 = load %struct.cmd_msg_cache*, %struct.cmd_msg_cache** %4, align 8
  %67 = getelementptr inbounds %struct.cmd_msg_cache, %struct.cmd_msg_cache* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %41

72:                                               ; preds = %59, %41
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %10

76:                                               ; preds = %10
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
