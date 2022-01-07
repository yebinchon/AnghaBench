; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_INIT_PORT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_INIT_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@MLX4_CMD_INIT_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@INIT_PORT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_MTU_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@INIT_PORT_VL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT_PORT(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %103

17:                                               ; preds = %2
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %18)
  store %struct.mlx4_cmd_mailbox* %19, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %24)
  store i32 %25, i32* %3, align 4
  br label %118

26:                                               ; preds = %17
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @MLX4_PUT(i32* %54, i32 %55, i32 0)
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 128, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @MLX4_PUT(i32* %66, i32 %67, i32 4)
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %70 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @MLX4_PUT(i32* %77, i32 %78, i32 6)
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @MLX4_PUT(i32* %88, i32 %89, i32 10)
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %92 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %93 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MLX4_CMD_INIT_PORT, align 4
  %97 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %98 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %99 = call i32 @mlx4_cmd(%struct.mlx4_dev* %91, i32 %94, i32 %95, i32 0, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %101 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %102 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %100, %struct.mlx4_cmd_mailbox* %101)
  br label %110

103:                                              ; preds = %2
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MLX4_CMD_INIT_PORT, align 4
  %107 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %108 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %109 = call i32 @mlx4_cmd(%struct.mlx4_dev* %104, i32 0, i32 %105, i32 0, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %103, %26
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %115 = call i32 @mlx4_hca_core_clock_update(%struct.mlx4_dev* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %23
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @MLX4_PUT(i32*, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_hca_core_clock_update(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
