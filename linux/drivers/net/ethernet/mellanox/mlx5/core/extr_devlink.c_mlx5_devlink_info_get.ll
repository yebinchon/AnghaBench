; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_info_req = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@DEVLINK_FW_STRING_LEN = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fw.psid\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%d.%d.%04d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fw.version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)* @mlx5_devlink_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_devlink_info_get(%struct.devlink* %0, %struct.devlink_info_req* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_info_req*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_info_req* %1, %struct.devlink_info_req** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %15 = load %struct.devlink*, %struct.devlink** %5, align 8
  %16 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %15)
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %8, align 8
  %17 = load i32, i32* @DEVLINK_FW_STRING_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %22 = load i32, i32* @DRIVER_NAME, align 4
  %23 = call i32 @devlink_info_driver_name_put(%struct.devlink_info_req* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %81

28:                                               ; preds = %3
  %29 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @devlink_info_version_fixed_put(%struct.devlink_info_req* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %81

38:                                               ; preds = %28
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %40 = call i32 @mlx5_fw_version_query(%struct.mlx5_core_dev* %39, i64* %11, i64* %12)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %81

45:                                               ; preds = %38
  %46 = trunc i64 %18 to i32
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @mlx5_fw_ver_major(i64 %47)
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @mlx5_fw_ver_minor(i64 %49)
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @mlx5_fw_ver_subminor(i64 %51)
  %53 = call i32 @snprintf(i8* %20, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50, i32 %52)
  %54 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %55 = call i32 @devlink_info_version_running_put(%struct.devlink_info_req* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %81

60:                                               ; preds = %45
  %61 = load i64, i64* %12, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = trunc i64 %18 to i32
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @mlx5_fw_ver_major(i64 %67)
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @mlx5_fw_ver_minor(i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @mlx5_fw_ver_subminor(i64 %71)
  %73 = call i32 @snprintf(i8* %20, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70, i32 %72)
  %74 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %75 = call i32 @devlink_info_version_stored_put(%struct.devlink_info_req* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %81

80:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %78, %58, %43, %36, %26
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @devlink_info_driver_name_put(%struct.devlink_info_req*, i32) #1

declare dso_local i32 @devlink_info_version_fixed_put(%struct.devlink_info_req*, i8*, i32) #1

declare dso_local i32 @mlx5_fw_version_query(%struct.mlx5_core_dev*, i64*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx5_fw_ver_major(i64) #1

declare dso_local i32 @mlx5_fw_ver_minor(i64) #1

declare dso_local i32 @mlx5_fw_ver_subminor(i64) #1

declare dso_local i32 @devlink_info_version_running_put(%struct.devlink_info_req*, i8*, i8*) #1

declare dso_local i32 @devlink_info_version_stored_put(%struct.devlink_info_req*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
