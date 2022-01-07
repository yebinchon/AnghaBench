; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_info_req = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLXSW_REG_MGIR_FW_INFO_PSID_SIZE = common dso_local global i32 0, align 4
@MLXSW_REG_MGIR_LEN = common dso_local global i32 0, align 4
@mgir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hw.revision\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fw.psid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fw.version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)* @mlxsw_devlink_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_info_get(%struct.devlink* %0, %struct.devlink_info_req* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_info_req*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_core*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_info_req* %1, %struct.devlink_info_req** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %19 = load %struct.devlink*, %struct.devlink** %5, align 8
  %20 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %19)
  store %struct.mlxsw_core* %20, %struct.mlxsw_core** %8, align 8
  %21 = load i32, i32* @MLXSW_REG_MGIR_FW_INFO_PSID_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* @MLXSW_REG_MGIR_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %29 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @devlink_info_driver_name_put(%struct.devlink_info_req* %28, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %82

39:                                               ; preds = %3
  %40 = call i32 @mlxsw_reg_mgir_pack(i8* %27)
  %41 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %42 = load i32, i32* @mgir, align 4
  %43 = call i32 @MLXSW_REG(i32 %42)
  %44 = call i32 @mlxsw_reg_query(%struct.mlxsw_core* %41, i32 %43, i8* %27)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %82

49:                                               ; preds = %39
  %50 = call i32 @mlxsw_reg_mgir_unpack(i8* %27, i32* %11, i8* %24, i32* %12, i32* %13, i32* %14)
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %56 = call i32 @devlink_info_version_fixed_put(%struct.devlink_info_req* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %82

61:                                               ; preds = %49
  %62 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %63 = call i32 @devlink_info_version_fixed_put(%struct.devlink_info_req* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %82

68:                                               ; preds = %61
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  %74 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %76 = call i32 @devlink_info_version_running_put(%struct.devlink_info_req* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %82

81:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %82

82:                                               ; preds = %81, %79, %66, %59, %47, %37
  %83 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @devlink_info_driver_name_put(%struct.devlink_info_req*, i32) #1

declare dso_local i32 @mlxsw_reg_mgir_pack(i8*) #1

declare dso_local i32 @mlxsw_reg_query(%struct.mlxsw_core*, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @mlxsw_reg_mgir_unpack(i8*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @devlink_info_version_fixed_put(%struct.devlink_info_req*, i8*, i8*) #1

declare dso_local i32 @devlink_info_version_running_put(%struct.devlink_info_req*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
