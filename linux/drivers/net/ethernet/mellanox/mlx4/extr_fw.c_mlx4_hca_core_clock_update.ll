; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_hca_core_clock_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_hca_core_clock_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }

@.str = private unnamed_addr constant [42 x i8] c"hca_core_clock mailbox allocation failed\0A\00", align 1
@MLX4_CMD_QUERY_HCA = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"hca_core_clock update failed\0A\00", align 1
@QUERY_HCA_CORE_CLOCK_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_hca_core_clock_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_hca_core_clock_update(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %7)
  store %struct.mlx4_cmd_mailbox* %8, %struct.mlx4_cmd_mailbox** %4, align 8
  %9 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %10 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %14 = call i32 @mlx4_warn(%struct.mlx4_dev* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %15)
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLX4_CMD_QUERY_HCA, align 4
  %26 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %21, i32 0, i32 %24, i32 0, i32 0, i32 %25, i32 %26, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = call i32 @mlx4_warn(%struct.mlx4_dev* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %46

38:                                               ; preds = %17
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @QUERY_HCA_CORE_CLOCK_OFFSET, align 4
  %45 = call i32 @MLX4_GET(i32 %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %35
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %48 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %49 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %47, %struct.mlx4_cmd_mailbox* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
