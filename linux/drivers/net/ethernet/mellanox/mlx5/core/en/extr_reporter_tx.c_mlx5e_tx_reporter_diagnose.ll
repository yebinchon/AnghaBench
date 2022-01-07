; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_diagnose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_diagnose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.devlink_fmsg = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_4__, i32, %struct.mlx5e_txqsq** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.mlx5e_channel** }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_channel = type { %struct.mlx5e_txqsq* }
%struct.mlx5e_txqsq = type { i32, i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Common Config\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"stride size\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SQs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)* @mlx5e_tx_reporter_diagnose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tx_reporter_diagnose(%struct.devlink_health_reporter* %0, %struct.devlink_fmsg* %1) #0 {
  %3 = alloca %struct.devlink_health_reporter*, align 8
  %4 = alloca %struct.devlink_fmsg*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_txqsq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_channel*, align 8
  %13 = alloca %struct.mlx5e_txqsq*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %3, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %4, align 8
  %14 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %15 = call %struct.mlx5e_priv* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %5, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 3
  %18 = load %struct.mlx5e_txqsq**, %struct.mlx5e_txqsq*** %17, align 8
  %19 = getelementptr inbounds %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %18, i64 0
  %20 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %19, align 8
  store %struct.mlx5e_txqsq* %20, %struct.mlx5e_txqsq** %6, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 2
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %140

30:                                               ; preds = %2
  %31 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %31, i32 0, i32 1
  %33 = call i32 @mlx5_wq_cyc_get_size(i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %36 = call i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %140

40:                                               ; preds = %30
  %41 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %42 = call i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %140

46:                                               ; preds = %40
  %47 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %140

53:                                               ; preds = %46
  %54 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %140

60:                                               ; preds = %53
  %61 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %61, i32 0, i32 0
  %63 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %64 = call i32 @mlx5e_reporter_cq_common_diagnose(i32* %62, %struct.devlink_fmsg* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %140

68:                                               ; preds = %60
  %69 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %70 = call i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %140

74:                                               ; preds = %68
  %75 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %76 = call i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %140

80:                                               ; preds = %74
  %81 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %82 = call i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %140

86:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %130, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %87
  %95 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %98, i64 %100
  %102 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %101, align 8
  store %struct.mlx5e_channel* %102, %struct.mlx5e_channel** %12, align 8
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %126, %94
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %106 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %104, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %103
  %112 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %113 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %112, i32 0, i32 0
  %114 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %114, i64 %116
  store %struct.mlx5e_txqsq* %117, %struct.mlx5e_txqsq** %13, align 8
  %118 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %119 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %13, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @mlx5e_tx_reporter_build_diagnose_output(%struct.devlink_fmsg* %118, %struct.mlx5e_txqsq* %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %140

125:                                              ; preds = %111
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %103

129:                                              ; preds = %103
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %87

133:                                              ; preds = %87
  %134 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %135 = call i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %140

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %138, %124, %85, %79, %73, %67, %59, %52, %45, %39, %29
  %141 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %142 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local %struct.mlx5e_priv* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5_wq_cyc_get_size(i32*) #1

declare dso_local i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @mlx5e_reporter_cq_common_diagnose(i32*, %struct.devlink_fmsg*) #1

declare dso_local i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @mlx5e_tx_reporter_build_diagnose_output(%struct.devlink_fmsg*, %struct.mlx5e_txqsq*, i32) #1

declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
