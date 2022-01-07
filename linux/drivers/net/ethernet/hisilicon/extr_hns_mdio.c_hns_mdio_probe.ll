; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.hns_mdio_device = type { i32*, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mii_bus = type { i32, i32, i32, %struct.TYPE_9__*, %struct.hns_mdio_device*, i32, i32, i32, i32 }
%struct.of_phandle_args = type { i32, i64*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pdev is NULL!\0D\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mdiobus_alloc fail!\0A\00", align 1
@MDIO_BUS_NAME = common dso_local global i32 0, align 4
@hns_mdio_read = common dso_local global i32 0, align 4
@hns_mdio_write = common dso_local global i32 0, align 4
@hns_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mii\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"subctrl-vbase\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"syscon_node_to_regmap error\0A\00", align 1
@MDIO_SC_CLK_EN = common dso_local global i8* null, align 8
@MDIO_SC_CLK_DIS = common dso_local global i8* null, align 8
@MDIO_SC_RESET_REQ = common dso_local global i8* null, align 8
@MDIO_SC_RESET_DREQ = common dso_local global i8* null, align 8
@MDIO_SC_CLK_ST = common dso_local global i8* null, align 8
@MDIO_SC_RESET_ST = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"find syscon ret = %#x\0A\00", align 1
@PHY_POLL = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Can not get cfg data from DT or ACPI\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Cannot register as MDIO bus!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hns_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hns_mdio_device*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_phandle_args, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @dev_err(%struct.TYPE_9__* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %247

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.hns_mdio_device* @devm_kzalloc(%struct.TYPE_9__* %18, i32 64, i32 %19)
  store %struct.hns_mdio_device* %20, %struct.hns_mdio_device** %4, align 8
  %21 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %22 = icmp ne %struct.hns_mdio_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %247

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.mii_bus* @devm_mdiobus_alloc(%struct.TYPE_9__* %28)
  store %struct.mii_bus* %29, %struct.mii_bus** %5, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = icmp ne %struct.mii_bus* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %247

38:                                               ; preds = %26
  %39 = load i32, i32* @MDIO_BUS_NAME, align 4
  %40 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @hns_mdio_read, align 4
  %43 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @hns_mdio_write, align 4
  %46 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %47 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @hns_mdio_reset, align 4
  %49 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %52 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %53 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %52, i32 0, i32 4
  store %struct.hns_mdio_device* %51, %struct.hns_mdio_device** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 3
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %58, i32 0)
  %60 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %61 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %63 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %38
  %68 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %69 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %247

73:                                               ; preds = %38
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.mii_bus* %75)
  %77 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %78 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i8* @dev_name(%struct.TYPE_9__* %82)
  %84 = call i32 @snprintf(i32 %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i64 @dev_of_node(%struct.TYPE_9__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %210

89:                                               ; preds = %73
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @of_parse_phandle_with_fixed_args(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 0, %struct.of_phandle_args* %7)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %196, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32* @syscon_node_to_regmap(i32 %99)
  %101 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %102 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %101, i32 0, i32 0
  store i32* %100, i32** %102, align 8
  %103 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %104 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @IS_ERR(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_warn(%struct.TYPE_9__* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %113 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  br label %195

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %169

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %125 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  store i8* %123, i8** %126, align 8
  %127 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = getelementptr i8, i8* %131, i64 4
  %133 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %134 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  store i8* %132, i8** %135, align 8
  %136 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %142 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  store i8* %140, i8** %143, align 8
  %144 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = getelementptr i8, i8* %148, i64 4
  %150 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %151 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  store i8* %149, i8** %152, align 8
  %153 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 2
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %159 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i8* %157, i8** %160, align 8
  %161 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 3
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %167 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  br label %194

169:                                              ; preds = %114
  %170 = load i8*, i8** @MDIO_SC_CLK_EN, align 8
  %171 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %172 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  store i8* %170, i8** %173, align 8
  %174 = load i8*, i8** @MDIO_SC_CLK_DIS, align 8
  %175 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %176 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  store i8* %174, i8** %177, align 8
  %178 = load i8*, i8** @MDIO_SC_RESET_REQ, align 8
  %179 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %180 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** @MDIO_SC_RESET_DREQ, align 8
  %183 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %184 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store i8* %182, i8** %185, align 8
  %186 = load i8*, i8** @MDIO_SC_CLK_ST, align 8
  %187 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %188 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i8* %186, i8** %189, align 8
  %190 = load i8*, i8** @MDIO_SC_RESET_ST, align 8
  %191 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %192 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i8* %190, i8** %193, align 8
  br label %194

194:                                              ; preds = %169, %118
  br label %195

195:                                              ; preds = %194, %108
  br label %203

196:                                              ; preds = %89
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_warn(%struct.TYPE_9__* %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  %201 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %202 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %201, i32 0, i32 0
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %196, %195
  %204 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @of_mdiobus_register(%struct.mii_bus* %204, i32 %208)
  store i32 %209, i32* %6, align 4
  br label %236

210:                                              ; preds = %73
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @is_acpi_node(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %210
  %218 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %219 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @PHY_POLL, align 4
  %222 = load i32, i32* @PHY_MAX_ADDR, align 4
  %223 = mul nsw i32 4, %222
  %224 = call i32 @memset(i32 %220, i32 %221, i32 %223)
  %225 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %226 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %225, i32 0, i32 0
  store i32 -1, i32* %226, align 8
  %227 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %228 = call i32 @mdiobus_register(%struct.mii_bus* %227)
  store i32 %228, i32* %6, align 4
  br label %235

229:                                              ; preds = %210
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = call i32 @dev_err(%struct.TYPE_9__* %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %233 = load i32, i32* @ENXIO, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %229, %217
  br label %236

236:                                              ; preds = %235, %203
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = call i32 @dev_err(%struct.TYPE_9__* %241, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = call i32 @platform_set_drvdata(%struct.platform_device* %243, %struct.mii_bus* null)
  %245 = load i32, i32* %6, align 4
  store i32 %245, i32* %2, align 4
  br label %247

246:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %239, %67, %32, %23, %12
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.hns_mdio_device* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(%struct.TYPE_9__*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_9__*) #1

declare dso_local i64 @dev_of_node(%struct.TYPE_9__*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i64 @is_acpi_node(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
