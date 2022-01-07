; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_fs_mode_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_fs_mode_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%union.devlink_param_value = type { i8* }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dmfs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"smfs\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Software managed steering is not supported by current device\00", align 1
@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Software managed steering is not supported when eswitch offloads enabled.\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Bad parameter: supported values are [\22dmfs\22, \22smfs\22]\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, i8*, %struct.netlink_ext_ack*)* @mlx5_devlink_fs_mode_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_devlink_fs_mode_validate(%struct.devlink* %0, i32 %1, i8* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.devlink_param_value, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %6, i32 0, i32 0
  store i8* %2, i8** %15, align 8
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load %struct.devlink*, %struct.devlink** %7, align 8
  %17 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %16)
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %10, align 8
  %18 = bitcast %union.devlink_param_value* %6 to i8**
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %24
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @mlx5_eswitch_mode(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %35 = call i32 @mlx5_fs_dr_is_supported(%struct.mlx5_core_dev* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %53

43:                                               ; preds = %28
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @MLX5_ESWITCH_OFFLOADS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %49 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %38
  br label %59

54:                                               ; preds = %24
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %56 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %55, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %53
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %23
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @mlx5_eswitch_mode(i32) #1

declare dso_local i32 @mlx5_fs_dr_is_supported(%struct.mlx5_core_dev*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
