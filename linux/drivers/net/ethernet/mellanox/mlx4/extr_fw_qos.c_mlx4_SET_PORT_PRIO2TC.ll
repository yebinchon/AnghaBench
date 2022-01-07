; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw_qos.c_mlx4_SET_PORT_PRIO2TC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw_qos.c_mlx4_SET_PORT_PRIO2TC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_prio2tc_context* }
%struct.mlx4_set_port_prio2tc_context = type { i32* }

@MLX4_NUM_UP = common dso_local global i32 0, align 4
@MLX4_SET_PORT_PRIO2TC = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_PRIO2TC(%struct.mlx4_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_set_port_prio2tc_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %8, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 1
  %24 = load %struct.mlx4_set_port_prio2tc_context*, %struct.mlx4_set_port_prio2tc_context** %23, align 8
  store %struct.mlx4_set_port_prio2tc_context* %24, %struct.mlx4_set_port_prio2tc_context** %9, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %50, %21
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @MLX4_NUM_UP, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %35, %41
  %43 = load %struct.mlx4_set_port_prio2tc_context*, %struct.mlx4_set_port_prio2tc_context** %9, align 8
  %44 = getelementptr inbounds %struct.mlx4_set_port_prio2tc_context, %struct.mlx4_set_port_prio2tc_context* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = ashr i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %12, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* @MLX4_SET_PORT_PRIO2TC, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %59 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %64 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %65 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %66 = call i32 @mlx4_cmd(%struct.mlx4_dev* %58, i32 %61, i32 %62, i32 1, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %68 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %69 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %67, %struct.mlx4_cmd_mailbox* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %53, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
