; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_alloc_cmd_box.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_alloc_cmd_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_mailbox = type { i32*, i32, i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed allocation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_cmd_mailbox* (%struct.mlx5_core_dev*, i32)* @alloc_cmd_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_cmd_mailbox* @alloc_cmd_box(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_cmd_mailbox*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_cmd_mailbox*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.mlx5_cmd_mailbox* @kmalloc(i32 16, i32 %7)
  store %struct.mlx5_cmd_mailbox* %8, %struct.mlx5_cmd_mailbox** %6, align 8
  %9 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  %10 = icmp ne %struct.mlx5_cmd_mailbox* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mlx5_cmd_mailbox* @ERR_PTR(i32 %13)
  store %struct.mlx5_cmd_mailbox* %14, %struct.mlx5_cmd_mailbox** %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %21, i32 0, i32 2
  %23 = call i32 @dma_pool_zalloc(i32 %19, i32 %20, i32* %22)
  %24 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %15
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  %34 = call i32 @kfree(%struct.mlx5_cmd_mailbox* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.mlx5_cmd_mailbox* @ERR_PTR(i32 %36)
  store %struct.mlx5_cmd_mailbox* %37, %struct.mlx5_cmd_mailbox** %3, align 8
  br label %42

38:                                               ; preds = %15
  %39 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  store %struct.mlx5_cmd_mailbox* %41, %struct.mlx5_cmd_mailbox** %3, align 8
  br label %42

42:                                               ; preds = %38, %30, %11
  %43 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %3, align 8
  ret %struct.mlx5_cmd_mailbox* %43
}

declare dso_local %struct.mlx5_cmd_mailbox* @kmalloc(i32, i32) #1

declare dso_local %struct.mlx5_cmd_mailbox* @ERR_PTR(i32) #1

declare dso_local i32 @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @kfree(%struct.mlx5_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
