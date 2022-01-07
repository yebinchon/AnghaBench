; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-unimac.c_unimac_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-unimac.c_unimac_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node*, %struct.unimac_mdio_pdata* }
%struct.device_node = type { i32 }
%struct.unimac_mdio_pdata = type { i8*, i32, %struct.unimac_mdio_priv*, i32 }
%struct.unimac_mdio_priv = type { i32*, i32, %struct.unimac_mdio_priv*, %struct.mii_bus*, i64, i32 }
%struct.mii_bus = type { i8*, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.unimac_mdio_priv* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to remap register\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unimac MII bus\00", align 1
@unimac_mdio_poll = common dso_local global i32 0, align 4
@unimac_mdio_read = common dso_local global i32 0, align 4
@unimac_mdio_write = common dso_local global i32 0, align 4
@unimac_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"MDIO bus registration failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Broadcom UniMAC MDIO bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @unimac_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unimac_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.unimac_mdio_pdata*, align 8
  %5 = alloca %struct.unimac_mdio_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %12, align 8
  store %struct.unimac_mdio_pdata* %13, %struct.unimac_mdio_pdata** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.unimac_mdio_priv* @devm_kzalloc(%struct.TYPE_6__* %19, i32 48, i32 %20)
  store %struct.unimac_mdio_priv* %21, %struct.unimac_mdio_priv** %5, align 8
  %22 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %23 = icmp ne %struct.unimac_mdio_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %199

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %8, align 8
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = icmp ne %struct.resource* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %199

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 2
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = call i32 @resource_size(%struct.resource* %42)
  %44 = call i32 @devm_ioremap(%struct.TYPE_6__* %38, i32 %41, i32 %43)
  %45 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %46 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %48 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %36
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 2
  %54 = call i32 @dev_err(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %199

57:                                               ; preds = %36
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 2
  %60 = call i32* @devm_clk_get(%struct.TYPE_6__* %59, i32* null)
  %61 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %62 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %64 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %72 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @PTR_ERR(i32* %73)
  store i32 %74, i32* %2, align 4
  br label %199

75:                                               ; preds = %57
  %76 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %77 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %80 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @clk_prepare_enable(i32* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %199

87:                                               ; preds = %78
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %90 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %89, i32 0, i32 4
  %91 = call i64 @of_property_read_u32(%struct.device_node* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %95 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %87
  %97 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %98 = call i32 @unimac_mdio_clk_set(%struct.unimac_mdio_priv* %97)
  %99 = call %struct.mii_bus* (...) @mdiobus_alloc()
  %100 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %101 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %100, i32 0, i32 3
  store %struct.mii_bus* %99, %struct.mii_bus** %101, align 8
  %102 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %103 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %102, i32 0, i32 3
  %104 = load %struct.mii_bus*, %struct.mii_bus** %103, align 8
  %105 = icmp ne %struct.mii_bus* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %9, align 4
  br label %193

109:                                              ; preds = %96
  %110 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %111 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %110, i32 0, i32 3
  %112 = load %struct.mii_bus*, %struct.mii_bus** %111, align 8
  store %struct.mii_bus* %112, %struct.mii_bus** %7, align 8
  %113 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %114 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %115 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %114, i32 0, i32 7
  store %struct.unimac_mdio_priv* %113, %struct.unimac_mdio_priv** %115, align 8
  %116 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %117 = icmp ne %struct.unimac_mdio_pdata* %116, null
  br i1 %117, label %118, label %140

118:                                              ; preds = %109
  %119 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %120 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %123 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %125 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %128 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %130 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %129, i32 0, i32 2
  %131 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %130, align 8
  %132 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %133 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %132, i32 0, i32 2
  store %struct.unimac_mdio_priv* %131, %struct.unimac_mdio_priv** %133, align 8
  %134 = load %struct.unimac_mdio_pdata*, %struct.unimac_mdio_pdata** %4, align 8
  %135 = getelementptr inbounds %struct.unimac_mdio_pdata, %struct.unimac_mdio_pdata* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = xor i32 %136, -1
  %138 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %139 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  br label %149

140:                                              ; preds = %109
  %141 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %142 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %144 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %145 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %144, i32 0, i32 2
  store %struct.unimac_mdio_priv* %143, %struct.unimac_mdio_priv** %145, align 8
  %146 = load i32, i32* @unimac_mdio_poll, align 4
  %147 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %148 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %140, %118
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 2
  %152 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %153 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %152, i32 0, i32 5
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %153, align 8
  %154 = load i32, i32* @unimac_mdio_read, align 4
  %155 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %156 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @unimac_mdio_write, align 4
  %158 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %159 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @unimac_mdio_reset, align 4
  %161 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %162 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %164 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @snprintf(i32 %165, i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %169, i32 %172)
  %174 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %175 = load %struct.device_node*, %struct.device_node** %6, align 8
  %176 = call i32 @of_mdiobus_register(%struct.mii_bus* %174, %struct.device_node* %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %149
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 2
  %182 = call i32 @dev_err(%struct.TYPE_6__* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %190

183:                                              ; preds = %149
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %186 = call i32 @platform_set_drvdata(%struct.platform_device* %184, %struct.unimac_mdio_priv* %185)
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 2
  %189 = call i32 @dev_info(%struct.TYPE_6__* %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %199

190:                                              ; preds = %179
  %191 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %192 = call i32 @mdiobus_free(%struct.mii_bus* %191)
  br label %193

193:                                              ; preds = %190, %106
  %194 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %5, align 8
  %195 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @clk_disable_unprepare(i32* %196)
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %193, %183, %85, %70, %51, %33, %24
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.unimac_mdio_priv* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @unimac_mdio_clk_set(%struct.unimac_mdio_priv*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.unimac_mdio_priv*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
