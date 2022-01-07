; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_get_phys_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_get_phys_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.mlx4_cmd_mailbox = type { i64*, i32 }

@MLX4_CMD_MOD_STAT_CFG = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fail to get port %d uplink guid\0A\00", align 1
@MOD_STAT_CFG_GUID_H = common dso_local global i32 0, align 4
@MOD_STAT_CFG_GUID_L = common dso_local global i32 0, align 4
@MOD_STAT_CFG_PORT_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_phys_port_id(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %12)
  store %struct.mlx4_cmd_mailbox* %13, %struct.mlx4_cmd_mailbox** %6, align 8
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %15 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %18)
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %5, align 8
  store i64 1, i64* %4, align 8
  br label %24

24:                                               ; preds = %70, %20
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %25, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = shl i64 %32, 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %35 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @MLX4_CMD_MOD_STAT_CFG, align 4
  %40 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %41 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %42 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %34, i32 0, i32 %37, i64 %38, i32 2, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @mlx4_err(%struct.mlx4_dev* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %11, align 4
  br label %69

50:                                               ; preds = %31
  %51 = load i64, i64* %8, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = call i32 @MLX4_GET(i64 %51, i64* %52, i32 20)
  %54 = load i64, i64* %9, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = call i32 @MLX4_GET(i64 %54, i64* %55, i32 28)
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %60, 32
  %62 = or i32 %58, %61
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %50, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %75 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %76 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %74, %struct.mlx4_cmd_mailbox* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @MLX4_GET(i64, i64*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
