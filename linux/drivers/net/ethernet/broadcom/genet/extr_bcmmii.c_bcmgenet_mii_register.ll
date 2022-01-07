; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.platform_device*, %struct.platform_device* }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.TYPE_2__*, %struct.bcmgenet_platform_data* }
%struct.device_node = type { i32 }
%struct.bcmgenet_platform_data = type { i32 }
%struct.unimac_mdio_pdata = type { i8*, i32, i64, i64, %struct.bcmgenet_priv*, i32 }
%struct.resource = type { i8*, i32, i64, i64, %struct.bcmgenet_priv*, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@bcmgenet_mii_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bcmgenet MII bus\00", align 1
@GENET_UMAC_OFF = common dso_local global i64 0, align 8
@UMAC_MDIO_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@UNIMAC_MDIO_DRV_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_mii_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_mii_register(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.bcmgenet_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.unimac_mdio_pdata, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %13, i32 0, i32 1
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %18, align 8
  store %struct.bcmgenet_platform_data* %19, %struct.bcmgenet_platform_data** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.unimac_mdio_pdata* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  %27 = bitcast %struct.unimac_mdio_pdata* %26 to %struct.resource*
  store %struct.resource* %27, %struct.resource** %9, align 8
  %28 = bitcast %struct.resource* %10 to %struct.unimac_mdio_pdata*
  %29 = call i32 @memset(%struct.unimac_mdio_pdata* %28, i32 0, i32 48)
  %30 = call i32 @memset(%struct.unimac_mdio_pdata* %7, i32 0, i32 48)
  %31 = load i32, i32* @bcmgenet_mii_wait, align 4
  %32 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %7, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %34 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %7, i32 0, i32 4
  store %struct.bcmgenet_priv* %33, %struct.bcmgenet_priv** %34, align 8
  %35 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.resource*, %struct.resource** %9, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GENET_UMAC_OFF, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @UMAC_MDIO_CMD, align 8
  %42 = add nsw i64 %40, %41
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = icmp ne %struct.device_node* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %1
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = call i32 @of_alias_get_id(%struct.device_node* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %11, align 4
  br label %59

55:                                               ; preds = %1
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @UNIMAC_MDIO_DRV_NAME, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.platform_device* @platform_device_alloc(i32 %60, i32 %61)
  store %struct.platform_device* %62, %struct.platform_device** %8, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %64 = icmp ne %struct.platform_device* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %111

68:                                               ; preds = %59
  %69 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %70 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %71 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %70, i32 0, i32 0
  store %struct.platform_device* %69, %struct.platform_device** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store %struct.TYPE_2__* %73, %struct.TYPE_2__** %76, align 8
  %77 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %78 = call %struct.device_node* @bcmgenet_mii_of_find_mdio(%struct.bcmgenet_priv* %77)
  %79 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.device_node* %78, %struct.device_node** %81, align 8
  %82 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %83 = icmp ne %struct.bcmgenet_platform_data* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %86 = call i32 @bcmgenet_mii_pdata_init(%struct.bcmgenet_priv* %85, %struct.unimac_mdio_pdata* %7)
  br label %87

87:                                               ; preds = %84, %68
  %88 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %89 = bitcast %struct.resource* %10 to %struct.unimac_mdio_pdata*
  %90 = call i32 @platform_device_add_resources(%struct.platform_device* %88, %struct.unimac_mdio_pdata* %89, i32 1)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %107

94:                                               ; preds = %87
  %95 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %96 = call i32 @platform_device_add_data(%struct.platform_device* %95, %struct.unimac_mdio_pdata* %7, i32 48)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %107

100:                                              ; preds = %94
  %101 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %102 = call i32 @platform_device_add(%struct.platform_device* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %107

106:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %111

107:                                              ; preds = %105, %99, %93
  %108 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %109 = call i32 @platform_device_put(%struct.platform_device* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %106, %65
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.unimac_mdio_pdata* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @memset(%struct.unimac_mdio_pdata*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local %struct.device_node* @bcmgenet_mii_of_find_mdio(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_mii_pdata_init(%struct.bcmgenet_priv*, %struct.unimac_mdio_pdata*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.unimac_mdio_pdata*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.unimac_mdio_pdata*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
