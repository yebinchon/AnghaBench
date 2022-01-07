; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to register with devcom (0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"query board id failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to initialize irq table\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to initialize eq\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to initialize events\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to init rate limiting\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to init l2 table %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to init sriov %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to init eswitch %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to init fpga device %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to init device memory%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_init_once(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = call i32 @mlx5_devcom_register_device(%struct.mlx5_core_dev* %5)
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = call i32 @mlx5_query_board_id(%struct.mlx5_core_dev* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %30 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %178

31:                                               ; preds = %23
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = call i32 @mlx5_irq_table_init(%struct.mlx5_core_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %38 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %178

39:                                               ; preds = %31
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %41 = call i32 @mlx5_eq_table_init(%struct.mlx5_core_dev* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %46 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %175

47:                                               ; preds = %39
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = call i32 @mlx5_events_init(%struct.mlx5_core_dev* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %172

55:                                               ; preds = %47
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %57 = call i32 @mlx5_cq_debugfs_init(%struct.mlx5_core_dev* %56)
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %59 = call i32 @mlx5_init_qp_table(%struct.mlx5_core_dev* %58)
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %61 = call i32 @mlx5_init_mkey_table(%struct.mlx5_core_dev* %60)
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %63 = call i32 @mlx5_init_reserved_gids(%struct.mlx5_core_dev* %62)
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %65 = call i32 @mlx5_init_clock(%struct.mlx5_core_dev* %64)
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %67 = call i32 @mlx5_vxlan_create(%struct.mlx5_core_dev* %66)
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %71 = call i32 @mlx5_geneve_create(%struct.mlx5_core_dev* %70)
  %72 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = call i32 @mlx5_init_rl_table(%struct.mlx5_core_dev* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %55
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %80 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %155

81:                                               ; preds = %55
  %82 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %83 = call i32 @mlx5_mpfs_init(%struct.mlx5_core_dev* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %152

90:                                               ; preds = %81
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %92 = call i32 @mlx5_sriov_init(%struct.mlx5_core_dev* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  br label %149

99:                                               ; preds = %90
  %100 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %101 = call i32 @mlx5_eswitch_init(%struct.mlx5_core_dev* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  br label %146

108:                                              ; preds = %99
  %109 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %110 = call i32 @mlx5_fpga_init(%struct.mlx5_core_dev* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  br label %140

117:                                              ; preds = %108
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %119 = call i32 @mlx5_dm_create(%struct.mlx5_core_dev* %118)
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %121 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %123 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @IS_ERR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %117
  %132 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %133 = call i32 @mlx5_fw_tracer_create(%struct.mlx5_core_dev* %132)
  %134 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %135 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %137 = call i32 @mlx5_hv_vhca_create(%struct.mlx5_core_dev* %136)
  %138 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %2, align 4
  br label %185

140:                                              ; preds = %113
  %141 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %142 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mlx5_eswitch_cleanup(i32 %144)
  br label %146

146:                                              ; preds = %140, %104
  %147 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %148 = call i32 @mlx5_sriov_cleanup(%struct.mlx5_core_dev* %147)
  br label %149

149:                                              ; preds = %146, %95
  %150 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %151 = call i32 @mlx5_mpfs_cleanup(%struct.mlx5_core_dev* %150)
  br label %152

152:                                              ; preds = %149, %86
  %153 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %154 = call i32 @mlx5_cleanup_rl_table(%struct.mlx5_core_dev* %153)
  br label %155

155:                                              ; preds = %152, %78
  %156 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %157 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @mlx5_geneve_destroy(i32 %158)
  %160 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %161 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @mlx5_vxlan_destroy(i32 %162)
  %164 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %165 = call i32 @mlx5_cleanup_mkey_table(%struct.mlx5_core_dev* %164)
  %166 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %167 = call i32 @mlx5_cleanup_qp_table(%struct.mlx5_core_dev* %166)
  %168 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %169 = call i32 @mlx5_cq_debugfs_cleanup(%struct.mlx5_core_dev* %168)
  %170 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %171 = call i32 @mlx5_events_cleanup(%struct.mlx5_core_dev* %170)
  br label %172

172:                                              ; preds = %155, %52
  %173 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %174 = call i32 @mlx5_eq_table_cleanup(%struct.mlx5_core_dev* %173)
  br label %175

175:                                              ; preds = %172, %44
  %176 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %177 = call i32 @mlx5_irq_table_cleanup(%struct.mlx5_core_dev* %176)
  br label %178

178:                                              ; preds = %175, %36, %28
  %179 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %180 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @mlx5_devcom_unregister_device(i32 %182)
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %178, %131
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @mlx5_devcom_register_device(%struct.mlx5_core_dev*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_query_board_id(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_irq_table_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_table_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_events_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cq_debugfs_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_qp_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_mkey_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_reserved_gids(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_clock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_vxlan_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_geneve_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_rl_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mpfs_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_sriov_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eswitch_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fpga_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_dm_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_fw_tracer_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_hv_vhca_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eswitch_cleanup(i32) #1

declare dso_local i32 @mlx5_sriov_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mpfs_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_rl_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_geneve_destroy(i32) #1

declare dso_local i32 @mlx5_vxlan_destroy(i32) #1

declare dso_local i32 @mlx5_cleanup_mkey_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_qp_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cq_debugfs_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_events_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_table_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_irq_table_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_devcom_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
