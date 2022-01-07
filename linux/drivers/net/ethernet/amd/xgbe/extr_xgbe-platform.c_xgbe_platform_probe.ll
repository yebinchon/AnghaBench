; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-platform.c_xgbe_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-platform.c_xgbe_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.platform_device*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, %struct.xgbe_prv_data*, %struct.xgbe_prv_data*, %struct.xgbe_prv_data*, %struct.xgbe_prv_data*, %struct.xgbe_prv_data*, %struct.device*, %struct.platform_device*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unable to obtain phy device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"xgmac ioremap failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"xgmac_regs = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"xpcs ioremap failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"xpcs_regs  = %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"rxtx ioremap failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"rxtx_regs  = %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"sir0 ioremap failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"sir0_regs  = %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"sir1 ioremap failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"sir1_regs  = %p\0A\00", align 1
@XGBE_MAC_ADDR_PROPERTY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"invalid %s property\0A\00", align 1
@XGBE_PHY_MODE_PROPERTY = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@XGBE_DMA_IRQS_PROPERTY = common dso_local global i32 0, align 4
@XGBE_IRQ_MODE_EDGE = common dso_local global i32 0, align 4
@DEV_DMA_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"DMA is not supported\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DEV_DMA_COHERENT = common dso_local global i32 0, align 4
@XGBE_DMA_OS_ARCR = common dso_local global i32 0, align 4
@XGBE_DMA_OS_AWCR = common dso_local global i32 0, align 4
@XGBE_DMA_SYS_ARCR = common dso_local global i32 0, align 4
@XGBE_DMA_SYS_AWCR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"net device enabled\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"net device not enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgbe_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.xgbe_prv_data* @xgbe_alloc_pdata(%struct.device* %18)
  store %struct.xgbe_prv_data* %19, %struct.xgbe_prv_data** %4, align 8
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %21 = call i64 @IS_ERR(%struct.xgbe_prv_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.xgbe_prv_data* %24)
  store i32 %25, i32* %13, align 4
  br label %446

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 9
  store %struct.platform_device* %27, %struct.platform_device** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @ACPI_COMPANION(%struct.device* %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 25
  store i32 %31, i32* %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.xgbe_prv_data* %35)
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %46 = call %struct.TYPE_2__* @xgbe_get_vdata(%struct.xgbe_prv_data* %45)
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 10
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %50 = call %struct.platform_device* @xgbe_get_phy_pdev(%struct.xgbe_prv_data* %49)
  store %struct.platform_device* %50, %struct.platform_device** %6, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %52 = icmp ne %struct.platform_device* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %26
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %443

58:                                               ; preds = %26
  %59 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 24
  store %struct.platform_device* %59, %struct.platform_device** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 23
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %68 = icmp eq %struct.platform_device* %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %58
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load i32, i32* @IORESOURCE_MEM, align 4
  %72 = call i32 @xgbe_resource_count(%struct.platform_device* %70, i32 %71)
  %73 = sub nsw i32 %72, 3
  store i32 %73, i32* %8, align 4
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* @IORESOURCE_IRQ, align 4
  %76 = call i32 @xgbe_resource_count(%struct.platform_device* %74, i32 %75)
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %11, align 4
  br label %83

79:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load i32, i32* @IORESOURCE_IRQ, align 4
  %82 = call i32 @xgbe_resource_count(%struct.platform_device* %80, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %69
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %84, i32 0)
  %86 = bitcast i8* %85 to %struct.xgbe_prv_data*
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 22
  store %struct.xgbe_prv_data* %86, %struct.xgbe_prv_data** %88, align 8
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 22
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %90, align 8
  %92 = call i64 @IS_ERR(%struct.xgbe_prv_data* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %98 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %97, i32 0, i32 22
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.xgbe_prv_data* %99)
  store i32 %100, i32* %13, align 4
  br label %440

101:                                              ; preds = %83
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %103 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %108 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %107, i32 0, i32 22
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %108, align 8
  %110 = call i32 @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.xgbe_prv_data* %109)
  br label %111

111:                                              ; preds = %105, %101
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %112, i32 1)
  %114 = bitcast i8* %113 to %struct.xgbe_prv_data*
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %116 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %115, i32 0, i32 21
  store %struct.xgbe_prv_data* %114, %struct.xgbe_prv_data** %116, align 8
  %117 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %118 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %117, i32 0, i32 21
  %119 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %118, align 8
  %120 = call i64 @IS_ERR(%struct.xgbe_prv_data* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %111
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %126 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %125, i32 0, i32 21
  %127 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.xgbe_prv_data* %127)
  store i32 %128, i32* %13, align 4
  br label %440

129:                                              ; preds = %111
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %131 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %136 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %135, i32 0, i32 21
  %137 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %136, align 8
  %138 = call i32 @dev_dbg(%struct.device* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.xgbe_prv_data* %137)
  br label %139

139:                                              ; preds = %133, %129
  %140 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %140, i32 %141)
  %144 = bitcast i8* %143 to %struct.xgbe_prv_data*
  %145 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %146 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %145, i32 0, i32 20
  store %struct.xgbe_prv_data* %144, %struct.xgbe_prv_data** %146, align 8
  %147 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %148 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %147, i32 0, i32 20
  %149 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %148, align 8
  %150 = call i64 @IS_ERR(%struct.xgbe_prv_data* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %139
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %155 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %156 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %155, i32 0, i32 20
  %157 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.xgbe_prv_data* %157)
  store i32 %158, i32* %13, align 4
  br label %440

159:                                              ; preds = %139
  %160 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %161 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %166 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %165, i32 0, i32 20
  %167 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %166, align 8
  %168 = call i32 @dev_dbg(%struct.device* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.xgbe_prv_data* %167)
  br label %169

169:                                              ; preds = %163, %159
  %170 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %170, i32 %171)
  %174 = bitcast i8* %173 to %struct.xgbe_prv_data*
  %175 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %176 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %175, i32 0, i32 19
  store %struct.xgbe_prv_data* %174, %struct.xgbe_prv_data** %176, align 8
  %177 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %178 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %177, i32 0, i32 19
  %179 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %178, align 8
  %180 = call i64 @IS_ERR(%struct.xgbe_prv_data* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %169
  %183 = load %struct.device*, %struct.device** %5, align 8
  %184 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %185 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %186 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %185, i32 0, i32 19
  %187 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %186, align 8
  %188 = call i32 @PTR_ERR(%struct.xgbe_prv_data* %187)
  store i32 %188, i32* %13, align 4
  br label %440

189:                                              ; preds = %169
  %190 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %191 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.device*, %struct.device** %5, align 8
  %195 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %196 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %195, i32 0, i32 19
  %197 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %196, align 8
  %198 = call i32 @dev_dbg(%struct.device* %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), %struct.xgbe_prv_data* %197)
  br label %199

199:                                              ; preds = %193, %189
  %200 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %8, align 4
  %203 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %200, i32 %201)
  %204 = bitcast i8* %203 to %struct.xgbe_prv_data*
  %205 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %206 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %205, i32 0, i32 18
  store %struct.xgbe_prv_data* %204, %struct.xgbe_prv_data** %206, align 8
  %207 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %208 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %207, i32 0, i32 18
  %209 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %208, align 8
  %210 = call i64 @IS_ERR(%struct.xgbe_prv_data* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %199
  %213 = load %struct.device*, %struct.device** %5, align 8
  %214 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %215 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %216 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %215, i32 0, i32 18
  %217 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %216, align 8
  %218 = call i32 @PTR_ERR(%struct.xgbe_prv_data* %217)
  store i32 %218, i32* %13, align 4
  br label %440

219:                                              ; preds = %199
  %220 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %221 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load %struct.device*, %struct.device** %5, align 8
  %225 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %226 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %225, i32 0, i32 18
  %227 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %226, align 8
  %228 = call i32 @dev_dbg(%struct.device* %224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), %struct.xgbe_prv_data* %227)
  br label %229

229:                                              ; preds = %223, %219
  %230 = load %struct.device*, %struct.device** %5, align 8
  %231 = load i32, i32* @XGBE_MAC_ADDR_PROPERTY, align 4
  %232 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %233 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %232, i32 0, i32 17
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @device_property_read_u8_array(%struct.device* %230, i32 %231, i32 %234, i32 4)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %229
  %239 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %240 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %239, i32 0, i32 17
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @is_valid_ether_addr(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %238, %229
  %245 = load %struct.device*, %struct.device** %5, align 8
  %246 = load i32, i32* @XGBE_MAC_ADDR_PROPERTY, align 4
  %247 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %13, align 4
  br label %253

253:                                              ; preds = %250, %244
  br label %440

254:                                              ; preds = %238
  %255 = load %struct.device*, %struct.device** %5, align 8
  %256 = load i32, i32* @XGBE_PHY_MODE_PROPERTY, align 4
  %257 = call i32 @device_property_read_string(%struct.device* %255, i32 %256, i8** %7)
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load i8*, i8** %7, align 8
  %262 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %263 = call i32 @phy_modes(i32 %262)
  %264 = call i64 @strcmp(i8* %261, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %260, %254
  %267 = load %struct.device*, %struct.device** %5, align 8
  %268 = load i32, i32* @XGBE_PHY_MODE_PROPERTY, align 4
  %269 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %267, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %13, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %266
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %13, align 4
  br label %275

275:                                              ; preds = %272, %266
  br label %440

276:                                              ; preds = %260
  %277 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %278 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %279 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %278, i32 0, i32 16
  store i32 %277, i32* %279, align 4
  %280 = load %struct.device*, %struct.device** %5, align 8
  %281 = load i32, i32* @XGBE_DMA_IRQS_PROPERTY, align 4
  %282 = call i64 @device_property_present(%struct.device* %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %276
  %285 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %286 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %285, i32 0, i32 1
  store i32 1, i32* %286, align 4
  %287 = load i32, i32* @XGBE_IRQ_MODE_EDGE, align 4
  %288 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %289 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %288, i32 0, i32 15
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %284, %276
  %291 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %292 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %297 = call i32 @xgbe_acpi_support(%struct.xgbe_prv_data* %296)
  store i32 %297, i32* %13, align 4
  br label %301

298:                                              ; preds = %290
  %299 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %300 = call i32 @xgbe_of_support(%struct.xgbe_prv_data* %299)
  store i32 %300, i32* %13, align 4
  br label %301

301:                                              ; preds = %298, %295
  %302 = load i32, i32* %13, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  br label %440

305:                                              ; preds = %301
  %306 = load %struct.device*, %struct.device** %5, align 8
  %307 = call i32 @device_get_dma_attr(%struct.device* %306)
  store i32 %307, i32* %12, align 4
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* @DEV_DMA_NOT_SUPPORTED, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %305
  %312 = load %struct.device*, %struct.device** %5, align 8
  %313 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %314 = load i32, i32* @ENODEV, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %13, align 4
  br label %440

316:                                              ; preds = %305
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* @DEV_DMA_COHERENT, align 4
  %319 = icmp eq i32 %317, %318
  %320 = zext i1 %319 to i32
  %321 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %322 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %321, i32 0, i32 2
  store i32 %320, i32* %322, align 8
  %323 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %324 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %316
  %328 = load i32, i32* @XGBE_DMA_OS_ARCR, align 4
  %329 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %330 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %329, i32 0, i32 14
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* @XGBE_DMA_OS_AWCR, align 4
  %332 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %333 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %332, i32 0, i32 13
  store i32 %331, i32* %333, align 8
  br label %341

334:                                              ; preds = %316
  %335 = load i32, i32* @XGBE_DMA_SYS_ARCR, align 4
  %336 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %337 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %336, i32 0, i32 14
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* @XGBE_DMA_SYS_AWCR, align 4
  %339 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %340 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %339, i32 0, i32 13
  store i32 %338, i32* %340, align 8
  br label %341

341:                                              ; preds = %334, %327
  %342 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %343 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %342, i32 0, i32 10
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %348 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %347, i32 0, i32 12
  store i32 %346, i32* %348, align 4
  %349 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %350 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %349, i32 0, i32 10
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %355 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %354, i32 0, i32 11
  store i32 %353, i32* %355, align 8
  %356 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %357 = call i32 @xgbe_set_counts(%struct.xgbe_prv_data* %356)
  %358 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %359 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %358, i32 0, i32 3
  store i32 2, i32* %359, align 4
  %360 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %361 = call i32 @platform_get_irq(%struct.platform_device* %360, i32 0)
  store i32 %361, i32* %13, align 4
  %362 = load i32, i32* %13, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %341
  br label %440

365:                                              ; preds = %341
  %366 = load i32, i32* %13, align 4
  %367 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %368 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %367, i32 0, i32 4
  store i32 %366, i32* %368, align 8
  %369 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %370 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %418

373:                                              ; preds = %365
  %374 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %375 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %374, i32 0, i32 5
  %376 = load i32*, i32** %375, align 8
  %377 = call i32 @ARRAY_SIZE(i32* %376)
  store i32 %377, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %378

378:                                              ; preds = %406, %373
  %379 = load i32, i32* %14, align 4
  %380 = load i32, i32* %15, align 4
  %381 = icmp ult i32 %379, %380
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = load i32, i32* %10, align 4
  %384 = load i32, i32* %11, align 4
  %385 = icmp ult i32 %383, %384
  br label %386

386:                                              ; preds = %382, %378
  %387 = phi i1 [ false, %378 ], [ %385, %382 ]
  br i1 %387, label %388, label %409

388:                                              ; preds = %386
  %389 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %390 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %389, i32 0, i32 9
  %391 = load %struct.platform_device*, %struct.platform_device** %390, align 8
  %392 = load i32, i32* %10, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %10, align 4
  %394 = call i32 @platform_get_irq(%struct.platform_device* %391, i32 %392)
  store i32 %394, i32* %13, align 4
  %395 = load i32, i32* %13, align 4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %388
  br label %440

398:                                              ; preds = %388
  %399 = load i32, i32* %13, align 4
  %400 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %401 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %400, i32 0, i32 5
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %14, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %399, i32* %405, align 4
  br label %406

406:                                              ; preds = %398
  %407 = load i32, i32* %14, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %14, align 4
  br label %378

409:                                              ; preds = %386
  %410 = load i32, i32* %15, align 4
  %411 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %412 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %411, i32 0, i32 6
  store i32 %410, i32* %412, align 8
  %413 = load i32, i32* %15, align 4
  %414 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %415 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = add i32 %416, %413
  store i32 %417, i32* %415, align 4
  br label %418

418:                                              ; preds = %409, %365
  %419 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %420 = load i32, i32* %9, align 4
  %421 = add i32 %420, 1
  store i32 %421, i32* %9, align 4
  %422 = call i32 @platform_get_irq(%struct.platform_device* %419, i32 %420)
  store i32 %422, i32* %13, align 4
  %423 = load i32, i32* %13, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %418
  br label %440

426:                                              ; preds = %418
  %427 = load i32, i32* %13, align 4
  %428 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %429 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %428, i32 0, i32 7
  store i32 %427, i32* %429, align 4
  %430 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %431 = call i32 @xgbe_config_netdev(%struct.xgbe_prv_data* %430)
  store i32 %431, i32* %13, align 4
  %432 = load i32, i32* %13, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %426
  br label %440

435:                                              ; preds = %426
  %436 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %437 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %436, i32 0, i32 8
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @netdev_notice(i32 %438, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %450

440:                                              ; preds = %434, %425, %397, %364, %311, %304, %275, %253, %212, %182, %152, %122, %94
  %441 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %442 = call i32 @platform_device_put(%struct.platform_device* %441)
  br label %443

443:                                              ; preds = %440, %53
  %444 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %445 = call i32 @xgbe_free_pdata(%struct.xgbe_prv_data* %444)
  br label %446

446:                                              ; preds = %443, %23
  %447 = load %struct.device*, %struct.device** %5, align 8
  %448 = call i32 @dev_notice(%struct.device* %447, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %449 = load i32, i32* %13, align 4
  store i32 %449, i32* %2, align 4
  br label %450

450:                                              ; preds = %446, %435
  %451 = load i32, i32* %2, align 4
  ret i32 %451
}

declare dso_local %struct.xgbe_prv_data* @xgbe_alloc_pdata(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.xgbe_prv_data*) #1

declare dso_local i32 @PTR_ERR(%struct.xgbe_prv_data*) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgbe_prv_data*) #1

declare dso_local %struct.TYPE_2__* @xgbe_get_vdata(%struct.xgbe_prv_data*) #1

declare dso_local %struct.platform_device* @xgbe_get_phy_pdev(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @xgbe_resource_count(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.xgbe_prv_data*) #1

declare dso_local i32 @device_property_read_u8_array(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @device_property_read_string(%struct.device*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i64 @device_property_present(%struct.device*, i32) #1

declare dso_local i32 @xgbe_acpi_support(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_of_support(%struct.xgbe_prv_data*) #1

declare dso_local i32 @device_get_dma_attr(%struct.device*) #1

declare dso_local i32 @xgbe_set_counts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @xgbe_config_netdev(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netdev_notice(i32, i8*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @xgbe_free_pdata(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
