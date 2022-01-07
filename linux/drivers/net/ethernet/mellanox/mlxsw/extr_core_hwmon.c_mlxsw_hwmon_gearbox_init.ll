; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_hwmon.c_mlxsw_hwmon_gearbox_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_hwmon.c_mlxsw_hwmon_gearbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_hwmon = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MLXSW_REG_MGPIR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MTMP_LEN = common dso_local global i32 0, align 4
@mgpir = common dso_local global i32 0, align 4
@MLXSW_REG_MTMP_GBOX_INDEX_MIN = common dso_local global i32 0, align 4
@mtmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to setup temp sensor number %d\0A\00", align 1
@MLXSW_HWMON_ATTR_TYPE_TEMP = common dso_local global i32 0, align 4
@MLXSW_HWMON_ATTR_TYPE_TEMP_MAX = common dso_local global i32 0, align 4
@MLXSW_HWMON_ATTR_TYPE_TEMP_RST = common dso_local global i32 0, align 4
@MLXSW_HWMON_ATTR_TYPE_TEMP_GBOX_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_hwmon*)* @mlxsw_hwmon_gearbox_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_hwmon_gearbox_init(%struct.mlxsw_hwmon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_hwmon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_hwmon* %0, %struct.mlxsw_hwmon** %3, align 8
  %13 = load i32, i32* @MLXSW_REG_MGPIR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MLXSW_REG_MTMP_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = call i32 @mlxsw_reg_mgpir_pack(i8* %16)
  %21 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @mgpir, align 4
  %25 = call i32 @MLXSW_REG(i32 %24)
  %26 = call i32 @mlxsw_reg_query(i32 %23, i32 %25, i8* %16)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %100

31:                                               ; preds = %1
  %32 = call i32 @mlxsw_reg_mgpir_unpack(i8* %16, i32* %10, i32* null, i32* null)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %100

36:                                               ; preds = %31
  %37 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %38 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  %40 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %41 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %76, %36
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %52 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = srem i32 %50, %53
  %55 = load i32, i32* @MLXSW_REG_MTMP_GBOX_INDEX_MIN, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @mlxsw_reg_mtmp_pack(i8* %19, i32 %57, i32 1, i32 1)
  %59 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %60 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @mtmp, align 4
  %63 = call i32 @MLXSW_REG(i32 %62)
  %64 = call i32 @mlxsw_reg_write(i32 %61, i32 %63, i8* %19)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %49
  %68 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %69 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %100

76:                                               ; preds = %49
  %77 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %78 = load i32, i32* @MLXSW_HWMON_ATTR_TYPE_TEMP, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @mlxsw_hwmon_attr_add(%struct.mlxsw_hwmon* %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %83 = load i32, i32* @MLXSW_HWMON_ATTR_TYPE_TEMP_MAX, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @mlxsw_hwmon_attr_add(%struct.mlxsw_hwmon* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %88 = load i32, i32* @MLXSW_HWMON_ATTR_TYPE_TEMP_RST, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @mlxsw_hwmon_attr_add(%struct.mlxsw_hwmon* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %3, align 8
  %93 = load i32, i32* @MLXSW_HWMON_ATTR_TYPE_TEMP_GBOX_LABEL, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @mlxsw_hwmon_attr_add(%struct.mlxsw_hwmon* %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %45

99:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %67, %35, %29
  %101 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mgpir_pack(i8*) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_mgpir_unpack(i8*, i32*, i32*, i32*) #2

declare dso_local i32 @mlxsw_reg_mtmp_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @mlxsw_hwmon_attr_add(%struct.mlxsw_hwmon*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
