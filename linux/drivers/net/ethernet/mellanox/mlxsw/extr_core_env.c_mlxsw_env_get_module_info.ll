; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_env.c_mlxsw_env_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_env.c_mlxsw_env_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.ethtool_modinfo = type { i32, i8* }

@MLXSW_REG_MCIA_EEPROM_MODULE_INFO_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID = common dso_local global i64 0, align 8
@MLXSW_REG_MCIA_EEPROM_MODULE_INFO_ID = common dso_local global i64 0, align 8
@ETH_MODULE_SFF_8436 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8436_LEN = common dso_local global i8* null, align 8
@MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID_8636 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8636_LEN = common dso_local global i32 0, align 4
@SFP_DIAGMON = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_env_get_module_info(%struct.mlxsw_core* %0, i32 %1, %struct.ethtool_modinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_modinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_modinfo* %2, %struct.ethtool_modinfo** %7, align 8
  %17 = load i32, i32* @MLXSW_REG_MCIA_EEPROM_MODULE_INFO_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MLXSW_REG_MCIA_EEPROM_MODULE_INFO_SIZE, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @mlxsw_env_query_module_eeprom(%struct.mlxsw_core* %22, i32 %23, i32 0, i32 %24, i32* %20, i32* %14)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

30:                                               ; preds = %3
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

37:                                               ; preds = %30
  %38 = load i64, i64* @MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID, align 8
  %39 = getelementptr inbounds i32, i32* %20, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i64, i64* @MLXSW_REG_MCIA_EEPROM_MODULE_INFO_ID, align 8
  %42 = getelementptr inbounds i32, i32* %20, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %107 [
    i32 131, label %45
    i32 129, label %53
    i32 130, label %53
    i32 128, label %76
  ]

45:                                               ; preds = %37
  %46 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %47 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %48 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %52 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %110

53:                                               ; preds = %37, %37
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID_8636, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %53
  %61 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %62 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %63 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @ETH_MODULE_SFF_8636_LEN, align 4
  %65 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %66 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %75

67:                                               ; preds = %56
  %68 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %69 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %70 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %74 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %67, %60
  br label %110

76:                                               ; preds = %37
  %77 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @SFP_DIAGMON, align 4
  %80 = call i32 @mlxsw_env_query_module_eeprom(%struct.mlxsw_core* %77, i32 %78, i32 %79, i32 1, i32* %13, i32* %14)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

85:                                               ; preds = %76
  %86 = load i32, i32* %14, align 4
  %87 = icmp ult i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

91:                                               ; preds = %85
  %92 = load i8*, i8** @ETH_MODULE_SFF_8472, align 8
  %93 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %94 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %99 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %100 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %106

101:                                              ; preds = %91
  %102 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %103 = sdiv i32 %102, 2
  %104 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %7, align 8
  %105 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %97
  br label %110

107:                                              ; preds = %37
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

110:                                              ; preds = %106, %75, %45
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %107, %88, %83, %34, %28
  %112 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_env_query_module_eeprom(%struct.mlxsw_core*, i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
