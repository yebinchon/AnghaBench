; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_init_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_init_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@pf_loading = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PF is not ready - Deferring probe\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"PF is not responsive, skipping initialization\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Sending reset\0A\00", align 1
@MLX4_COMM_CMD_RESET = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_NA_OP = common dso_local global i32 0, align 4
@MLX4_COMM_TIME = common dso_local global i32 0, align 4
@MLX4_DELAY_RESET_SLAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"slave is currently in the middle of FLR - Deferring probe\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"slave driver version is not supported by the master\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Sending vhcr0\0A\00", align 1
@MLX4_COMM_CMD_VHCR0 = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_VHCR1 = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_VHCR2 = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_VHCR_EN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_init_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_slave(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %4, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = call i64 @atomic_read(i32* @pf_loading)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = call i32 @mlx4_warn(%struct.mlx4_dev* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EPROBE_DEFER, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %137

22:                                               ; preds = %1
  %23 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %31 = call i64 @mlx4_comm_check_offline(%struct.mlx4_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %35 = call i32 @mlx4_err(%struct.mlx4_dev* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %130

36:                                               ; preds = %22
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %38 = call i32 @mlx4_reset_vf_support(%struct.mlx4_dev* %37)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = call i32 @mlx4_warn(%struct.mlx4_dev* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %42 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %43 = load i32, i32* @MLX4_COMM_CMD_NA_OP, align 4
  %44 = load i32, i32* @MLX4_COMM_TIME, align 4
  %45 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %41, i32 %42, i32 0, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %36
  %49 = load i32, i32* @MLX4_DELAY_RESET_SLAVE, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %54 = call i32 @mlx4_warn(%struct.mlx4_dev* %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @EPROBE_DEFER, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %137

61:                                               ; preds = %48
  br label %125

62:                                               ; preds = %36
  %63 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @readl(i32* %67)
  %69 = call i32 @swab32(i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = call i32 (...) @mlx4_comm_get_version()
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @MLX4_COMM_GET_IF_REV(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @MLX4_COMM_GET_IF_REV(i32 %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %78 = call i32 @mlx4_err(%struct.mlx4_dev* %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %125

79:                                               ; preds = %62
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = call i32 @mlx4_warn(%struct.mlx4_dev* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %83 = load i32, i32* @MLX4_COMM_CMD_VHCR0, align 4
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 48
  %86 = load i32, i32* @MLX4_COMM_CMD_NA_OP, align 4
  %87 = load i32, i32* @MLX4_COMM_TIME, align 4
  %88 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %82, i32 %83, i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %125

91:                                               ; preds = %79
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %93 = load i32, i32* @MLX4_COMM_CMD_VHCR1, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 32
  %96 = load i32, i32* @MLX4_COMM_CMD_NA_OP, align 4
  %97 = load i32, i32* @MLX4_COMM_TIME, align 4
  %98 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %92, i32 %93, i32 %95, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %125

101:                                              ; preds = %91
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %103 = load i32, i32* @MLX4_COMM_CMD_VHCR2, align 4
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, 16
  %106 = load i32, i32* @MLX4_COMM_CMD_NA_OP, align 4
  %107 = load i32, i32* @MLX4_COMM_TIME, align 4
  %108 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %102, i32 %103, i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %125

111:                                              ; preds = %101
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %113 = load i32, i32* @MLX4_COMM_CMD_VHCR_EN, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @MLX4_COMM_CMD_NA_OP, align 4
  %116 = load i32, i32* @MLX4_COMM_TIME, align 4
  %117 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %125

120:                                              ; preds = %111
  %121 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %122 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  store i32 0, i32* %2, align 4
  br label %137

125:                                              ; preds = %119, %110, %100, %90, %76, %61
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %127 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %128 = load i32, i32* @MLX4_COMM_CMD_NA_OP, align 4
  %129 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %126, i32 %127, i32 0, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %125, %33
  %131 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %132 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %130, %120, %52, %17
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mlx4_comm_check_offline(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_reset_vf_support(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_comm_cmd(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @mlx4_comm_get_version(...) #1

declare dso_local i64 @MLX4_COMM_GET_IF_REV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
