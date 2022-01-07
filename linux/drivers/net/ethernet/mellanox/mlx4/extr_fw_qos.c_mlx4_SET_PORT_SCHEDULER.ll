; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw_qos.c_mlx4_SET_PORT_SCHEDULER.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw_qos.c_mlx4_SET_PORT_SCHEDULER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_scheduler_context* }
%struct.mlx4_set_port_scheduler_context = type { %struct.mlx4_port_scheduler_tc_cfg_be* }
%struct.mlx4_port_scheduler_tc_cfg_be = type { i8*, i8*, i8*, i8* }

@MLX4_NUM_TC = common dso_local global i32 0, align 4
@MLX4_MAX_100M_UNITS_VAL = common dso_local global i32 0, align 4
@MLX4_RATELIMIT_100M_UNITS = common dso_local global i32 0, align 4
@MLX4_RATELIMIT_1G_UNITS = common dso_local global i32 0, align 4
@MLX4_RATELIMIT_DEFAULT = common dso_local global i32 0, align 4
@MLX4_SET_PORT_SCHEDULER = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_SCHEDULER(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_set_port_scheduler_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_port_scheduler_tc_cfg_be*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %20 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %19)
  store %struct.mlx4_cmd_mailbox* %20, %struct.mlx4_cmd_mailbox** %12, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %22 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %25)
  store i32 %26, i32* %6, align 4
  br label %132

27:                                               ; preds = %5
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %29 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %28, i32 0, i32 1
  %30 = load %struct.mlx4_set_port_scheduler_context*, %struct.mlx4_set_port_scheduler_context** %29, align 8
  store %struct.mlx4_set_port_scheduler_context* %30, %struct.mlx4_set_port_scheduler_context** %13, align 8
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %111, %27
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @MLX4_NUM_TC, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %114

35:                                               ; preds = %31
  %36 = load %struct.mlx4_set_port_scheduler_context*, %struct.mlx4_set_port_scheduler_context** %13, align 8
  %37 = getelementptr inbounds %struct.mlx4_set_port_scheduler_context, %struct.mlx4_set_port_scheduler_context* %36, i32 0, i32 0
  %38 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %38, i64 %40
  store %struct.mlx4_port_scheduler_tc_cfg_be* %41, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %85

44:                                               ; preds = %35
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %44
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MLX4_MAX_100M_UNITS_VAL, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* @MLX4_RATELIMIT_100M_UNITS, align 4
  %66 = call i8* @htons(i32 %65)
  %67 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %68 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %80

69:                                               ; preds = %51
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 10
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* @MLX4_RATELIMIT_1G_UNITS, align 4
  %77 = call i8* @htons(i32 %76)
  %78 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %79 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %69, %59
  %81 = load i32, i32* %18, align 4
  %82 = call i8* @htons(i32 %81)
  %83 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %84 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %94

85:                                               ; preds = %44, %35
  %86 = load i32, i32* @MLX4_RATELIMIT_DEFAULT, align 4
  %87 = call i8* @htons(i32 %86)
  %88 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %89 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @MLX4_RATELIMIT_1G_UNITS, align 4
  %91 = call i8* @htons(i32 %90)
  %92 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %93 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %85, %80
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @htons(i32 %99)
  %101 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %102 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @htons(i32 %107)
  %109 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %110 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %31

114:                                              ; preds = %31
  %115 = load i32, i32* @MLX4_SET_PORT_SCHEDULER, align 4
  %116 = shl i32 %115, 8
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %15, align 4
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %120 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %121 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %125 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %126 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %127 = call i32 @mlx4_cmd(%struct.mlx4_dev* %119, i32 %122, i32 %123, i32 1, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %129 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %130 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %128, %struct.mlx4_cmd_mailbox* %129)
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %114, %24
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
