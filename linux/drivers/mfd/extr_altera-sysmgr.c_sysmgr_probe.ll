; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_altera-sysmgr.c_sysmgr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_altera-sysmgr.c_sysmgr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i64, i32, i32, i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.altr_sysmgr = type { %struct.regmap*, i32* }
%struct.regmap = type { i32 }
%struct.resource = type { i64, i64 }

@altr_sysmgr_regmap_cfg = common dso_local global %struct.regmap_config zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"altr,sys-mgr-s10\00", align 1
@s10_protected_reg_read = common dso_local global i32 0, align 4
@s10_protected_reg_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sysmgr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmgr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altr_sysmgr*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.regmap_config, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = bitcast %struct.regmap_config* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.regmap_config* @altr_sysmgr_regmap_cfg to i8*), i64 24, i1 false)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.altr_sysmgr* @devm_kzalloc(%struct.device* %16, i32 16, i32 %17)
  store %struct.altr_sysmgr* %18, %struct.altr_sysmgr** %4, align 8
  %19 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %20 = icmp ne %struct.altr_sysmgr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %106

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %24
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = call i64 @resource_size(%struct.resource* %34)
  %36 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %35, %37
  %39 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %9, align 8
  %41 = call i64 @of_device_is_compatible(%struct.device_node* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %49 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* @s10_protected_reg_read, align 4
  %51 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @s10_protected_reg_write, align 4
  %53 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %56 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call %struct.regmap* @devm_regmap_init(%struct.device* %54, i32* null, i32* %57, %struct.regmap_config* %7)
  store %struct.regmap* %58, %struct.regmap** %5, align 8
  br label %91

59:                                               ; preds = %33
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.resource*, %struct.resource** %6, align 8
  %65 = call i64 @resource_size(%struct.resource* %64)
  %66 = call i32* @devm_ioremap(%struct.device* %60, i64 %63, i64 %65)
  %67 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %68 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %70 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %106

76:                                               ; preds = %59
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.resource*, %struct.resource** %6, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = sub nsw i64 %83, 3
  %85 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %88 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call %struct.regmap* @devm_regmap_init_mmio(%struct.device* %86, i32* %89, %struct.regmap_config* %7)
  store %struct.regmap* %90, %struct.regmap** %5, align 8
  br label %91

91:                                               ; preds = %76, %43
  %92 = load %struct.regmap*, %struct.regmap** %5, align 8
  %93 = call i64 @IS_ERR(%struct.regmap* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.regmap*, %struct.regmap** %5, align 8
  %98 = call i32 @PTR_ERR(%struct.regmap* %97)
  store i32 %98, i32* %2, align 4
  br label %106

99:                                               ; preds = %91
  %100 = load %struct.regmap*, %struct.regmap** %5, align 8
  %101 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %102 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %101, i32 0, i32 0
  store %struct.regmap* %100, %struct.regmap** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %4, align 8
  %105 = call i32 @platform_set_drvdata(%struct.platform_device* %103, %struct.altr_sysmgr* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %99, %95, %73, %30, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.altr_sysmgr* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i64 @resource_size(%struct.resource*) #2

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #2

declare dso_local %struct.regmap* @devm_regmap_init(%struct.device*, i32*, i32*, %struct.regmap_config*) #2

declare dso_local i32* @devm_ioremap(%struct.device*, i64, i64) #2

declare dso_local %struct.regmap* @devm_regmap_init_mmio(%struct.device*, i32*, %struct.regmap_config*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.altr_sysmgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
