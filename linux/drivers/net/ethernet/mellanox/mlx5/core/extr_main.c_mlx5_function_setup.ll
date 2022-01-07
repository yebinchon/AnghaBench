; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_function_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_function_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"firmware version: %d.%d.%d\0A\00", align 1
@FW_PRE_INIT_TIMEOUT_MILI = common dso_local global i32 0, align 4
@FW_INIT_WARN_MESSAGE_INTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Firmware over %d MS in pre-initializing state, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed initializing command interface, aborting\0A\00", align 1
@FW_INIT_TIMEOUT_MILI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Firmware over %d MS in initializing state, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"enable hca failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"failed to set issi\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to allocate boot pages\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"set_hca_ctrl failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"set_hca_cap failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to allocate init pages\0A\00", align 1
@sw_owner_id = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"init hca failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"query hca failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @mlx5_function_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_function_setup(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = call i32 @fw_rev_maj(%struct.mlx5_core_dev* %8)
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %11 = call i32 @fw_rev_min(%struct.mlx5_core_dev* %10)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = call i32 @fw_rev_sub(%struct.mlx5_core_dev* %12)
  %14 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11, i32 %13)
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = call i64 @mlx5_core_is_pf(%struct.mlx5_core_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pcie_print_link_status(i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load i32, i32* @FW_PRE_INIT_TIMEOUT_MILI, align 4
  %26 = load i32, i32* @FW_INIT_WARN_MESSAGE_INTERVAL, align 4
  %27 = call i32 @wait_fw_init(%struct.mlx5_core_dev* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = load i32, i32* @FW_PRE_INIT_TIMEOUT_MILI, align 4
  %33 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %138

35:                                               ; preds = %23
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %37 = call i32 @mlx5_cmd_init(%struct.mlx5_core_dev* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %42 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %138

44:                                               ; preds = %35
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %46 = load i32, i32* @FW_INIT_TIMEOUT_MILI, align 4
  %47 = call i32 @wait_fw_init(%struct.mlx5_core_dev* %45, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %52 = load i32, i32* @FW_INIT_TIMEOUT_MILI, align 4
  %53 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %134

54:                                               ; preds = %44
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %56 = call i32 @mlx5_core_enable_hca(%struct.mlx5_core_dev* %55, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %61 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %134

62:                                               ; preds = %54
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %64 = call i32 @mlx5_core_set_issi(%struct.mlx5_core_dev* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %69 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %131

70:                                               ; preds = %62
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %72 = call i32 @mlx5_satisfy_startup_pages(%struct.mlx5_core_dev* %71, i32 1)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %77 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %131

78:                                               ; preds = %70
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %80 = call i32 @set_hca_ctrl(%struct.mlx5_core_dev* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %85 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %128

86:                                               ; preds = %78
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %88 = call i32 @set_hca_cap(%struct.mlx5_core_dev* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %93 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %128

94:                                               ; preds = %86
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %96 = call i32 @mlx5_satisfy_startup_pages(%struct.mlx5_core_dev* %95, i32 0)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %101 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %128

102:                                              ; preds = %94
  %103 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %104 = load i32, i32* @sw_owner_id, align 4
  %105 = call i32 @mlx5_cmd_init_hca(%struct.mlx5_core_dev* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %110 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %128

111:                                              ; preds = %102
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %113 = call i32 @mlx5_set_driver_version(%struct.mlx5_core_dev* %112)
  %114 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %115 = call i32 @mlx5_start_health_poll(%struct.mlx5_core_dev* %114)
  %116 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %117 = call i32 @mlx5_query_hca_caps(%struct.mlx5_core_dev* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %122 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %124

123:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %138

124:                                              ; preds = %120
  %125 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %108, %99, %91, %83
  %129 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %130 = call i32 @mlx5_reclaim_startup_pages(%struct.mlx5_core_dev* %129)
  br label %131

131:                                              ; preds = %128, %75, %67
  %132 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %133 = call i32 @mlx5_core_disable_hca(%struct.mlx5_core_dev* %132, i32 0)
  br label %134

134:                                              ; preds = %131, %59, %50
  %135 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %136 = call i32 @mlx5_cmd_cleanup(%struct.mlx5_core_dev* %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %123, %40, %30
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @fw_rev_maj(%struct.mlx5_core_dev*) #1

declare dso_local i32 @fw_rev_min(%struct.mlx5_core_dev*) #1

declare dso_local i32 @fw_rev_sub(%struct.mlx5_core_dev*) #1

declare dso_local i64 @mlx5_core_is_pf(%struct.mlx5_core_dev*) #1

declare dso_local i32 @pcie_print_link_status(i32) #1

declare dso_local i32 @wait_fw_init(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_cmd_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_enable_hca(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_set_issi(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_satisfy_startup_pages(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @set_hca_ctrl(%struct.mlx5_core_dev*) #1

declare dso_local i32 @set_hca_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_init_hca(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_set_driver_version(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_start_health_poll(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_query_hca_caps(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_reclaim_startup_pages(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_disable_hca(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_cmd_cleanup(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
