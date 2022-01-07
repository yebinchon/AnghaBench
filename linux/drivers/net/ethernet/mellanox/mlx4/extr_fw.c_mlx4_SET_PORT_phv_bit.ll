; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_SET_PORT_phv_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_SET_PORT_phv_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_general_context* }
%struct.mlx4_set_port_general_context = type { i32, i32 }

@MLX4_SET_PORT_GENERAL = common dso_local global i32 0, align 4
@MLX4_SET_PORT_ETH_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@SET_PORT_GEN_PHV_EN = common dso_local global i32 0, align 4
@SET_PORT_GEN_PHV_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32)* @mlx4_SET_PORT_phv_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_SET_PORT_phv_bit(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_set_port_general_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %12)
  store %struct.mlx4_cmd_mailbox* %13, %struct.mlx4_cmd_mailbox** %8, align 8
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %15 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %18)
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 1
  %23 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %22, align 8
  store %struct.mlx4_set_port_general_context* %23, %struct.mlx4_set_port_general_context** %9, align 8
  %24 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %9, align 8
  %25 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 16
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %20
  %36 = load i32, i32* @MLX4_SET_PORT_GENERAL, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %41 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MLX4_SET_PORT_ETH_OPCODE, align 4
  %46 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %47 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %48 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %49 = call i32 @mlx4_cmd(%struct.mlx4_dev* %40, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %51 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %52 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %50, %struct.mlx4_cmd_mailbox* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %35, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
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
