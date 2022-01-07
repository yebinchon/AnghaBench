; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_reporter_cq_common_diagnose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_reporter_cq_common_diagnose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_cq = type { i32 }
%struct.devlink_fmsg = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"CQ\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stride size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_reporter_cq_common_diagnose(%struct.mlx5e_cq* %0, %struct.devlink_fmsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_cq*, align 8
  %5 = alloca %struct.devlink_fmsg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %4, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %5, align 8
  %9 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %9, i32 0, i32 0
  %11 = call i32 @mlx5_cqwq_get_size(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %12, i32 0, i32 0
  %14 = call i32 @mlx5_cqwq_get_log_stride_size(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %16 = call i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = call i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %21
  %31 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %40 = call i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %36, %28, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mlx5_cqwq_get_size(i32*) #1

declare dso_local i32 @mlx5_cqwq_get_log_stride_size(i32*) #1

declare dso_local i32 @mlx5e_reporter_named_obj_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @devlink_fmsg_u64_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @mlx5e_reporter_named_obj_nest_end(%struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
