; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_choose_steering_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_choose_steering_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_dev_cap = type { i32, i64, i32 }

@mlx4_log_num_mgm_entry_size = common dso_local global i32 0, align 4
@MLX4_DMFS_A0_STEERING = common dso_local global i32 0, align 4
@MLX4_STEERING_DMFS_A0_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"DMFS high rate mode not supported\0A\00", align 1
@MLX4_STEERING_DMFS_A0_STATIC = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_FS_EN = common dso_local global i32 0, align 4
@MLX4_MIN_MGM_LOG_ENTRY_SIZE = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i32 0, align 4
@MLX4_STEERING_DMFS_A0_DISABLE = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG_VEP_UC_STEER = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_VEP_MC_STEER = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_B0 = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_A0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"Must have both UC_STEER and MC_STEER flags set to use B0 steering - falling back to A0 steering mode\0A\00", align 1
@MLX4_DEFAULT_MGM_LOG_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"Steering mode is: %s, oper_log_mgm_entry_size = %d, modparam log_num_mgm_entry_size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_dev_cap*)* @choose_steering_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_steering_mode(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_dev_cap*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %4, align 8
  %5 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %9 = sub nsw i32 0, %8
  %10 = load i32, i32* @MLX4_DMFS_A0_STEERING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLX4_STEERING_DMFS_A0_NOT_SUPPORTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = call i32 @mlx4_err(%struct.mlx4_dev* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %28

23:                                               ; preds = %13
  %24 = load i64, i64* @MLX4_STEERING_DMFS_A0_STATIC, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %20
  br label %29

29:                                               ; preds = %28, %7
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %30
  %34 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FS_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %33
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %42 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = icmp sge i64 %47, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %44, %40
  %56 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @choose_log_fs_mgm_entry_size(i64 %58)
  %60 = load i64, i64* @MLX4_MIN_MGM_LOG_ENTRY_SIZE, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @choose_log_fs_mgm_entry_size(i64 %65)
  %67 = trunc i64 %66 to i32
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 4
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %75 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %78 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %84 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  br label %159

86:                                               ; preds = %55, %44, %33, %30
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MLX4_STEERING_DMFS_A0_NOT_SUPPORTED, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i64, i64* @MLX4_STEERING_DMFS_A0_DISABLE, align 8
  %95 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %96 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %86
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %100 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_UC_STEER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %98
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %108 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_MC_STEER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i32, i32* @MLX4_STEERING_MODE_B0, align 4
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %117 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  br label %143

119:                                              ; preds = %106, %98
  %120 = load i32, i32* @MLX4_STEERING_MODE_A0, align 4
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 4
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %125 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_UC_STEER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %119
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %133 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_MC_STEER, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131, %119
  %140 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %141 = call i32 @mlx4_warn(%struct.mlx4_dev* %140, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %131
  br label %143

143:                                              ; preds = %142, %114
  %144 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  br label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @MLX4_DEFAULT_MGM_LOG_ENTRY_SIZE, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %153 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %155 = call i64 @mlx4_get_qp_per_mgm(%struct.mlx4_dev* %154)
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %157 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i64 %155, i64* %158, align 8
  br label %159

159:                                              ; preds = %150, %62
  %160 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @mlx4_steering_mode_str(i32 %164)
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %167 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %170 = call i32 @mlx4_dbg(%struct.mlx4_dev* %160, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %168, i32 %169)
  ret void
}

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @choose_log_fs_mgm_entry_size(i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_get_qp_per_mgm(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx4_steering_mode_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
