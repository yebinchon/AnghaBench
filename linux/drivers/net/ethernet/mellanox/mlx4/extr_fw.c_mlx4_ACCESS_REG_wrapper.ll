; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_ACCESS_REG_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_ACCESS_REG_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_access_reg* }
%struct.mlx4_access_reg = type { i64, i64, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_ptys_reg = type { i32 }

@MLX4_ACCESS_REG_METHOD_MASK = common dso_local global i64 0, align 8
@MLX4_ACCESS_REG_WRITE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@MLX4_REG_ID_PTYS = common dso_local global i64 0, align 8
@MLX4_CMD_ACCESS_REG = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ACCESS_REG_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_access_reg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.mlx4_ptys_reg*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %19 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %18, i32 0, i32 1
  %20 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %19, align 8
  store %struct.mlx4_access_reg* %20, %struct.mlx4_access_reg** %14, align 8
  %21 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %22 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX4_ACCESS_REG_METHOD_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %15, align 8
  %26 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %27 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @be16_to_cpu(i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %32 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %31)
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %6
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @MLX4_ACCESS_REG_WRITE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %73

41:                                               ; preds = %34, %6
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @MLX4_REG_ID_PTYS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %47 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.mlx4_ptys_reg*
  store %struct.mlx4_ptys_reg* %49, %struct.mlx4_ptys_reg** %17, align 8
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.mlx4_ptys_reg*, %struct.mlx4_ptys_reg** %17, align 8
  %53 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %50, i32 %51, i32 %54)
  %56 = load %struct.mlx4_ptys_reg*, %struct.mlx4_ptys_reg** %17, align 8
  %57 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %45, %41
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %60 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %61 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %64 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %67 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MLX4_CMD_ACCESS_REG, align 4
  %70 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %71 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %72 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %59, i32 %62, i32 %65, i32 %68, i32 0, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %58, %38
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
