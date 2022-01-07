; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_gather_async_events_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_gather_async_events_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_ASYNC_EVENT_MASK = common dso_local global i64 0, align 8
@MLX5_EVENT_TYPE_NIC_VPORT_CHANGE = common dso_local global i64 0, align 8
@general_notification_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_GENERAL_EVENT = common dso_local global i64 0, align 8
@port_module_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_PORT_MODULE_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"port_module_event is not set\0A\00", align 1
@MLX5_EVENT_TYPE_PPS_EVENT = common dso_local global i64 0, align 8
@fpga = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_FPGA_ERROR = common dso_local global i64 0, align 8
@MLX5_EVENT_TYPE_FPGA_QP_ERROR = common dso_local global i64 0, align 8
@dct = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_DCT_DRAINED = common dso_local global i64 0, align 8
@temp_warn_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_TEMP_WARN_EVENT = common dso_local global i64 0, align 8
@tracer_registers = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_DEVICE_TRACER = common dso_local global i64 0, align 8
@max_num_of_monitor_counters = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_MONITOR_COUNTER = common dso_local global i64 0, align 8
@MLX5_EVENT_TYPE_ESW_FUNCTIONS_CHANGED = common dso_local global i64 0, align 8
@event_cap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i64*)* @gather_async_events_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_async_events_mask(%struct.mlx5_core_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* @MLX5_ASYNC_EVENT_MASK, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = call i64 @MLX5_VPORT_MANAGER(%struct.mlx5_core_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* @MLX5_EVENT_TYPE_NIC_VPORT_CHANGE, align 8
  %12 = shl i64 1, %11
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %17 = load i32, i32* @general_notification_event, align 4
  %18 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i64, i64* @MLX5_EVENT_TYPE_GENERAL_EVENT, align 8
  %22 = shl i64 1, %21
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %27 = load i32, i32* @port_module_event, align 4
  %28 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, i64* @MLX5_EVENT_TYPE_PORT_MODULE_EVENT, align 8
  %32 = shl i64 1, %31
  %33 = load i64, i64* %5, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %38

35:                                               ; preds = %25
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %37 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %40 = call i64 @MLX5_PPS_CAP(%struct.mlx5_core_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64, i64* @MLX5_EVENT_TYPE_PPS_EVENT, align 8
  %44 = shl i64 1, %43
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = load i32, i32* @fpga, align 4
  %50 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i64, i64* @MLX5_EVENT_TYPE_FPGA_ERROR, align 8
  %54 = shl i64 1, %53
  %55 = load i64, i64* @MLX5_EVENT_TYPE_FPGA_QP_ERROR, align 8
  %56 = shl i64 1, %55
  %57 = or i64 %54, %56
  %58 = load i64, i64* %5, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %62 = load i32, i32* @dct, align 4
  %63 = call i64 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i64, i64* @MLX5_EVENT_TYPE_DCT_DRAINED, align 8
  %67 = shl i64 1, %66
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %72 = load i32, i32* @temp_warn_event, align 4
  %73 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i64, i64* @MLX5_EVENT_TYPE_TEMP_WARN_EVENT, align 8
  %77 = shl i64 1, %76
  %78 = load i64, i64* %5, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %82 = load i32, i32* @tracer_registers, align 4
  %83 = call i64 @MLX5_CAP_MCAM_REG(%struct.mlx5_core_dev* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64, i64* @MLX5_EVENT_TYPE_DEVICE_TRACER, align 8
  %87 = shl i64 1, %86
  %88 = load i64, i64* %5, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %92 = load i32, i32* @max_num_of_monitor_counters, align 4
  %93 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i64, i64* @MLX5_EVENT_TYPE_MONITOR_COUNTER, align 8
  %97 = shl i64 1, %96
  %98 = load i64, i64* %5, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %102 = call i64 @mlx5_eswitch_is_funcs_handler(%struct.mlx5_core_dev* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i64, i64* @MLX5_EVENT_TYPE_ESW_FUNCTIONS_CHANGED, align 8
  %106 = shl i64 1, %105
  %107 = load i64, i64* %5, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i64, i64* %5, align 8
  %111 = load i64*, i64** %4, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %114 = load i32, i32* @event_cap, align 4
  %115 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %119 = load i64*, i64** %4, align 8
  %120 = call i32 @gather_user_async_events(%struct.mlx5_core_dev* %118, i64* %119)
  br label %121

121:                                              ; preds = %117, %109
  ret void
}

declare dso_local i64 @MLX5_VPORT_MANAGER(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i64 @MLX5_PPS_CAP(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_MCAM_REG(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @mlx5_eswitch_is_funcs_handler(%struct.mlx5_core_dev*) #1

declare dso_local i32 @gather_user_async_events(%struct.mlx5_core_dev*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
