; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_diagnose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_diagnose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.devlink_fmsg = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__**, %struct.mlx5e_params }
%struct.TYPE_3__ = type { %struct.mlx5e_rq }
%struct.mlx5e_rq = type { i32 }
%struct.mlx5e_params = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Common config\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RQ\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"stride size\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RQs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)* @mlx5e_rx_reporter_diagnose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_reporter_diagnose(%struct.devlink_health_reporter* %0, %struct.devlink_fmsg* %1) #0 {
  %3 = alloca %struct.devlink_health_reporter*, align 8
  %4 = alloca %struct.devlink_fmsg*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_rq*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %3, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %4, align 8
  %13 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %14 = call %struct.mlx5e_priv* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %13)
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %5, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store %struct.mlx5e_params* %17, %struct.mlx5e_params** %6, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 3
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %138

27:                                               ; preds = %2
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.mlx5e_rq* %34, %struct.mlx5e_rq** %7, align 8
  %35 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %36 = call i32 @mlx5e_rqwq_get_size(%struct.mlx5e_rq* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %41 = call i32 @mlx5e_mpwqe_get_log_stride_size(i32 %39, %struct.mlx5e_params* %40, i32* null)
  %42 = call i32 @BIT(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %44 = call i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %138

48:                                               ; preds = %27
  %49 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %50 = call i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %138

54:                                               ; preds = %48
  %55 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %56 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %138

63:                                               ; preds = %54
  %64 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %138

70:                                               ; preds = %63
  %71 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %138

77:                                               ; preds = %70
  %78 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %79 = call i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %138

83:                                               ; preds = %77
  %84 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %84, i32 0, i32 0
  %86 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %87 = call i32 @mlx5e_reporter_cq_common_diagnose(i32* %85, %struct.devlink_fmsg* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %138

91:                                               ; preds = %83
  %92 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %93 = call i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %138

97:                                               ; preds = %91
  %98 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %99 = call i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %138

103:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %128, %103
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %104
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %115, i64 %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store %struct.mlx5e_rq* %120, %struct.mlx5e_rq** %12, align 8
  %121 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %12, align 8
  %122 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %123 = call i32 @mlx5e_rx_reporter_build_diagnose_output(%struct.mlx5e_rq* %121, %struct.devlink_fmsg* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %111
  br label %138

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %104

131:                                              ; preds = %104
  %132 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %133 = call i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %136, %126, %102, %96, %90, %82, %76, %69, %62, %53, %47, %26
  %139 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %140 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i32, i32* %11, align 4
  ret i32 %142
}

declare dso_local %struct.mlx5e_priv* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_rqwq_get_size(%struct.mlx5e_rq*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_stride_size(i32, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @mlx5e_reporter_cq_common_diagnose(i32*, %struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @mlx5e_rx_reporter_build_diagnose_output(%struct.mlx5e_rq*, %struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
