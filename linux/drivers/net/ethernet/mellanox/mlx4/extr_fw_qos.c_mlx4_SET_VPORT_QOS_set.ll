; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw_qos.c_mlx4_SET_VPORT_QOS_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw_qos.c_mlx4_SET_VPORT_QOS_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vport_qos_param = type { i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_vport_context* }
%struct.mlx4_set_vport_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@MLX4_NUM_UP = common dso_local global i32 0, align 4
@MLX4_SET_VPORT_QOS_SET = common dso_local global i32 0, align 4
@MLX4_CMD_SET_VPORT_QOS = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_VPORT_QOS_set(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.mlx4_vport_qos_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vport_qos_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_set_vport_context*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_vport_qos_param* %3, %struct.mlx4_vport_qos_param** %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %14)
  store %struct.mlx4_cmd_mailbox* %15, %struct.mlx4_cmd_mailbox** %12, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %17 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %21 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %20)
  store i32 %21, i32* %5, align 4
  br label %95

22:                                               ; preds = %4
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 1
  %25 = load %struct.mlx4_set_vport_context*, %struct.mlx4_set_vport_context** %24, align 8
  store %struct.mlx4_set_vport_context* %25, %struct.mlx4_set_vport_context** %13, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %74, %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MLX4_NUM_UP, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load %struct.mlx4_vport_qos_param*, %struct.mlx4_vport_qos_param** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %31, i64 %33
  %35 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.mlx4_set_vport_context*, %struct.mlx4_set_vport_context** %13, align 8
  %39 = getelementptr inbounds %struct.mlx4_set_vport_context, %struct.mlx4_set_vport_context* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %37, i8** %44, align 8
  %45 = load %struct.mlx4_vport_qos_param*, %struct.mlx4_vport_qos_param** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %45, i64 %47
  %49 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.mlx4_set_vport_context*, %struct.mlx4_set_vport_context** %13, align 8
  %53 = getelementptr inbounds %struct.mlx4_set_vport_context, %struct.mlx4_set_vport_context* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %51, i8** %58, align 8
  %59 = load %struct.mlx4_vport_qos_param*, %struct.mlx4_vport_qos_param** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %59, i64 %61
  %63 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 31
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load %struct.mlx4_set_vport_context*, %struct.mlx4_set_vport_context** %13, align 8
  %68 = getelementptr inbounds %struct.mlx4_set_vport_context, %struct.mlx4_set_vport_context* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %66, i8** %73, align 8
  br label %74

74:                                               ; preds = %30
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %26

77:                                               ; preds = %26
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %80 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 8
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MLX4_SET_VPORT_QOS_SET, align 4
  %87 = load i32, i32* @MLX4_CMD_SET_VPORT_QOS, align 4
  %88 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %89 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %90 = call i32 @mlx4_cmd(%struct.mlx4_dev* %78, i32 %81, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %92 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %93 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %91, %struct.mlx4_cmd_mailbox* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %77, %19
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
