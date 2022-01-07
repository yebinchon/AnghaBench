; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_register_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_register_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_FLAG_OLD_REG_MAC = common dso_local global i32 0, align 4
@RES_MAC = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOC_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_register_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %3
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MLX4_FLAG_OLD_REG_MAC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load i32, i32* @RES_MAC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %31 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %32 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %33 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %34 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %23, i32 %24, i32* %8, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %22, %15
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %45 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @set_param_l(i32* %8, i64 %48)
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RES_MAC, align 4
  %53 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %54 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %55 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %56 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %57 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %50, i32 %51, i32* %8, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* @MLX4_FLAG_OLD_REG_MAC, align 4
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %47
  br label %67

67:                                               ; preds = %66, %43, %38, %35
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %67
  %73 = call i32 @get_param_l(i32* %8)
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %3
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @__mlx4_register_mac(%struct.mlx4_dev* %75, i64 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %72, %70
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i64) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_register_mac(%struct.mlx4_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
