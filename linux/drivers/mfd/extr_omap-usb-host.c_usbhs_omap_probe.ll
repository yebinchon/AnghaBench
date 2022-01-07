; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_omap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_omap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64, %struct.usbhs_omap_platform_data* }
%struct.usbhs_omap_platform_data = type { i64, i32* }
%struct.usbhs_hcd_omap = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8*, i8*, %struct.usbhs_omap_platform_data* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAP3_HS_USB_PORTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Too many num_ports <%d> in platform_data. Max %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@OMAP_UHH_REVISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"USB HOST Rev:0x%x not recognized, assuming %d ports\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"usbhost_120m_fck\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"usbhost_120m_fck failed:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"utmi_p1_gfclk\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"utmi_p1_gfclk failed error:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"utmi_p2_gfclk\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"utmi_p2_gfclk failed error:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"refclk_60m_ext_p1\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"refclk_60m_ext_p1 failed error:%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"refclk_60m_ext_p2\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"refclk_60m_ext_p2 failed error:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"refclk_60m_int\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"refclk_60m_int failed error:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"usb_host_hs_utmi_p%d_clk\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to get clock : %s : %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"usb_host_hs_hsic480m_p%d_clk\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic60m_p%d_clk\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"xclk60mhsp1_ck set parent failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"P0 init_60m_fclk set parent failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"xclk60mhsp2_ck set parent failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"P1 init_60m_fclk set parent failed: %d\0A\00", align 1
@usbhs_child_match_table = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [34 x i8] c"Failed to create DT children: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"omap_usbhs_alloc_children failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbhs_omap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_omap_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usbhs_omap_platform_data*, align 8
  %6 = alloca %struct.usbhs_hcd_omap*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [30 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.usbhs_omap_platform_data* @dev_get_platdata(%struct.device* %14)
  store %struct.usbhs_omap_platform_data* %15, %struct.usbhs_omap_platform_data** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.device* %21, i32 16, i32 %22)
  %24 = bitcast i8* %23 to %struct.usbhs_omap_platform_data*
  store %struct.usbhs_omap_platform_data* %24, %struct.usbhs_omap_platform_data** %5, align 8
  %25 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %26 = icmp ne %struct.usbhs_omap_platform_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %686

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %33 = call i32 @usbhs_omap_get_dt_pdata(%struct.device* %31, %struct.usbhs_omap_platform_data* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %686

38:                                               ; preds = %30
  %39 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 1
  store %struct.usbhs_omap_platform_data* %39, %struct.usbhs_omap_platform_data** %41, align 8
  br label %42

42:                                               ; preds = %38, %1
  %43 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %44 = icmp ne %struct.usbhs_omap_platform_data* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %686

50:                                               ; preds = %42
  %51 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OMAP3_HS_USB_PORTS, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @OMAP3_HS_USB_PORTS, align 8
  %62 = call i32 @dev_info(%struct.device* %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %686

65:                                               ; preds = %50
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @devm_kzalloc(%struct.device* %66, i32 104, i32 %67)
  %69 = bitcast i8* %68 to %struct.usbhs_hcd_omap*
  store %struct.usbhs_hcd_omap* %69, %struct.usbhs_hcd_omap** %6, align 8
  %70 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %71 = icmp ne %struct.usbhs_hcd_omap* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %686

77:                                               ; preds = %65
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load i32, i32* @IORESOURCE_MEM, align 4
  %80 = call %struct.resource* @platform_get_resource(%struct.platform_device* %78, i32 %79, i32 0)
  store %struct.resource* %80, %struct.resource** %7, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = call i8* @devm_ioremap_resource(%struct.device* %81, %struct.resource* %82)
  %84 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %85 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  %86 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %87 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %86, i32 0, i32 11
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %93 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %92, i32 0, i32 11
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PTR_ERR(i8* %94)
  store i32 %95, i32* %2, align 4
  br label %686

96:                                               ; preds = %77
  %97 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %98 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %99 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %98, i32 0, i32 12
  store %struct.usbhs_omap_platform_data* %97, %struct.usbhs_omap_platform_data** %99, align 8
  %100 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %101 = call i32 @omap_tll_init(%struct.usbhs_omap_platform_data* %100)
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 @pm_runtime_enable(%struct.device* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %106 = call i32 @platform_set_drvdata(%struct.platform_device* %104, %struct.usbhs_hcd_omap* %105)
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @pm_runtime_get_sync(%struct.device* %107)
  %109 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %110 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %109, i32 0, i32 11
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @OMAP_UHH_REVISION, align 4
  %113 = call i32 @usbhs_read(i8* %111, i32 %112)
  %114 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %115 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @pm_runtime_put_sync(%struct.device* %116)
  %118 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %119 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %96
  %123 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %124 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %127 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %157

128:                                              ; preds = %96
  %129 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %130 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %138 [
    i32 129, label %132
    i32 128, label %135
  ]

132:                                              ; preds = %128
  %133 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %134 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %133, i32 0, i32 1
  store i64 3, i64* %134, align 8
  br label %151

135:                                              ; preds = %128
  %136 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %137 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %136, i32 0, i32 1
  store i64 2, i64* %137, align 8
  br label %151

138:                                              ; preds = %128
  %139 = load i64, i64* @OMAP3_HS_USB_PORTS, align 8
  %140 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %141 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %144 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %147 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @dev_dbg(%struct.device* %142, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %138, %135, %132
  %152 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %153 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %156 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %151, %122
  %158 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %159 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = mul i64 8, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %9, align 4
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i8* @devm_kzalloc(%struct.device* %163, i32 %164, i32 %165)
  %167 = bitcast i8* %166 to i8**
  %168 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %169 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %168, i32 0, i32 9
  store i8** %167, i8*** %169, align 8
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @devm_kzalloc(%struct.device* %170, i32 %171, i32 %172)
  %174 = bitcast i8* %173 to i8**
  %175 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %176 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %175, i32 0, i32 8
  store i8** %174, i8*** %176, align 8
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = call i8* @devm_kzalloc(%struct.device* %177, i32 %178, i32 %179)
  %181 = bitcast i8* %180 to i8**
  %182 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %183 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %182, i32 0, i32 7
  store i8** %181, i8*** %183, align 8
  %184 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %185 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %184, i32 0, i32 9
  %186 = load i8**, i8*** %185, align 8
  %187 = icmp ne i8** %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %157
  %189 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %190 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %189, i32 0, i32 8
  %191 = load i8**, i8*** %190, align 8
  %192 = icmp ne i8** %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %195 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %194, i32 0, i32 7
  %196 = load i8**, i8*** %195, align 8
  %197 = icmp ne i8** %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %193, %188, %157
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %8, align 4
  br label %682

203:                                              ; preds = %193
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  %206 = call i8* @ERR_PTR(i32 %205)
  %207 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %208 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %207, i32 0, i32 10
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  %211 = call i8* @ERR_PTR(i32 %210)
  %212 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %213 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  %216 = call i8* @ERR_PTR(i32 %215)
  %217 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %218 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %217, i32 0, i32 5
  store i8* %216, i8** %218, align 8
  %219 = load i32, i32* @ENODEV, align 4
  %220 = sub nsw i32 0, %219
  %221 = call i8* @ERR_PTR(i32 %220)
  %222 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %223 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  %226 = call i8* @ERR_PTR(i32 %225)
  %227 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %228 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %227, i32 0, i32 6
  store i8* %226, i8** %228, align 8
  %229 = load i32, i32* @ENODEV, align 4
  %230 = sub nsw i32 0, %229
  %231 = call i8* @ERR_PTR(i32 %230)
  %232 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %233 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %232, i32 0, i32 4
  store i8* %231, i8** %233, align 8
  store i32 0, i32* %9, align 4
  br label %234

234:                                              ; preds = %269, %203
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %238 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp slt i64 %236, %239
  br i1 %240, label %241, label %272

241:                                              ; preds = %234
  %242 = load i32, i32* @ENODEV, align 4
  %243 = sub nsw i32 0, %242
  %244 = call i8* @ERR_PTR(i32 %243)
  %245 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %246 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %245, i32 0, i32 9
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* %244, i8** %250, align 8
  %251 = load i32, i32* @ENODEV, align 4
  %252 = sub nsw i32 0, %251
  %253 = call i8* @ERR_PTR(i32 %252)
  %254 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %255 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %254, i32 0, i32 8
  %256 = load i8**, i8*** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  store i8* %253, i8** %259, align 8
  %260 = load i32, i32* @ENODEV, align 4
  %261 = sub nsw i32 0, %260
  %262 = call i8* @ERR_PTR(i32 %261)
  %263 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %264 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %263, i32 0, i32 7
  %265 = load i8**, i8*** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  store i8* %262, i8** %268, align 8
  br label %269

269:                                              ; preds = %241
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %234

272:                                              ; preds = %234
  %273 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %274 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 129
  br i1 %276, label %277, label %345

277:                                              ; preds = %272
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %278

278:                                              ; preds = %319, %277
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %282 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp slt i64 %280, %283
  br i1 %284, label %285, label %322

285:                                              ; preds = %278
  %286 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %287 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @is_ehci_phy_mode(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %315, label %295

295:                                              ; preds = %285
  %296 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %297 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @is_ehci_tll_mode(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %315, label %305

305:                                              ; preds = %295
  %306 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %307 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i64 @is_ehci_hsic_mode(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %305, %295, %285
  %316 = load i32, i32* %10, align 4
  %317 = or i32 %316, 1
  store i32 %317, i32* %10, align 4
  br label %318

318:                                              ; preds = %315, %305
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  br label %278

322:                                              ; preds = %278
  %323 = load i32, i32* %10, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %344

325:                                              ; preds = %322
  %326 = load %struct.device*, %struct.device** %4, align 8
  %327 = call i8* @devm_clk_get(%struct.device* %326, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %328 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %329 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %328, i32 0, i32 10
  store i8* %327, i8** %329, align 8
  %330 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %331 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %330, i32 0, i32 10
  %332 = load i8*, i8** %331, align 8
  %333 = call i64 @IS_ERR(i8* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %325
  %336 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %337 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %336, i32 0, i32 10
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @PTR_ERR(i8* %338)
  store i32 %339, i32* %8, align 4
  %340 = load %struct.device*, %struct.device** %4, align 8
  %341 = load i32, i32* %8, align 4
  %342 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %340, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %341)
  br label %682

343:                                              ; preds = %325
  br label %344

344:                                              ; preds = %343, %322
  br label %650

345:                                              ; preds = %272
  %346 = load %struct.device*, %struct.device** %4, align 8
  %347 = call i8* @devm_clk_get(%struct.device* %346, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %348 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %349 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %348, i32 0, i32 5
  store i8* %347, i8** %349, align 8
  %350 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %351 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %350, i32 0, i32 5
  %352 = load i8*, i8** %351, align 8
  %353 = call i64 @IS_ERR(i8* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %345
  %356 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %357 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %356, i32 0, i32 5
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @PTR_ERR(i8* %358)
  store i32 %359, i32* %8, align 4
  %360 = load %struct.device*, %struct.device** %4, align 8
  %361 = load i32, i32* %8, align 4
  %362 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %360, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %361)
  br label %682

363:                                              ; preds = %345
  %364 = load %struct.device*, %struct.device** %4, align 8
  %365 = call i8* @devm_clk_get(%struct.device* %364, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %366 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %367 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %366, i32 0, i32 3
  store i8* %365, i8** %367, align 8
  %368 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %369 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %368, i32 0, i32 3
  %370 = load i8*, i8** %369, align 8
  %371 = call i64 @IS_ERR(i8* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %363
  %374 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %375 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @PTR_ERR(i8* %376)
  store i32 %377, i32* %8, align 4
  %378 = load %struct.device*, %struct.device** %4, align 8
  %379 = load i32, i32* %8, align 4
  %380 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %378, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %379)
  br label %682

381:                                              ; preds = %363
  %382 = load %struct.device*, %struct.device** %4, align 8
  %383 = call i8* @devm_clk_get(%struct.device* %382, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %384 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %385 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %384, i32 0, i32 6
  store i8* %383, i8** %385, align 8
  %386 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %387 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %386, i32 0, i32 6
  %388 = load i8*, i8** %387, align 8
  %389 = call i64 @IS_ERR(i8* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %399

391:                                              ; preds = %381
  %392 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %393 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %392, i32 0, i32 6
  %394 = load i8*, i8** %393, align 8
  %395 = call i32 @PTR_ERR(i8* %394)
  store i32 %395, i32* %8, align 4
  %396 = load %struct.device*, %struct.device** %4, align 8
  %397 = load i32, i32* %8, align 4
  %398 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %396, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %397)
  br label %682

399:                                              ; preds = %381
  %400 = load %struct.device*, %struct.device** %4, align 8
  %401 = call i8* @devm_clk_get(%struct.device* %400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %402 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %403 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %402, i32 0, i32 4
  store i8* %401, i8** %403, align 8
  %404 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %405 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %404, i32 0, i32 4
  %406 = load i8*, i8** %405, align 8
  %407 = call i64 @IS_ERR(i8* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %399
  %410 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %411 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %410, i32 0, i32 4
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 @PTR_ERR(i8* %412)
  store i32 %413, i32* %8, align 4
  %414 = load %struct.device*, %struct.device** %4, align 8
  %415 = load i32, i32* %8, align 4
  %416 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %414, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %415)
  br label %682

417:                                              ; preds = %399
  %418 = load %struct.device*, %struct.device** %4, align 8
  %419 = call i8* @devm_clk_get(%struct.device* %418, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %420 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %421 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %420, i32 0, i32 2
  store i8* %419, i8** %421, align 8
  %422 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %423 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %422, i32 0, i32 2
  %424 = load i8*, i8** %423, align 8
  %425 = call i64 @IS_ERR(i8* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %435

427:                                              ; preds = %417
  %428 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %429 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %428, i32 0, i32 2
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 @PTR_ERR(i8* %430)
  store i32 %431, i32* %8, align 4
  %432 = load %struct.device*, %struct.device** %4, align 8
  %433 = load i32, i32* %8, align 4
  %434 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %432, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %433)
  br label %682

435:                                              ; preds = %417
  store i32 0, i32* %9, align 4
  br label %436

436:                                              ; preds = %552, %435
  %437 = load i32, i32* %9, align 4
  %438 = sext i32 %437 to i64
  %439 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %440 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = icmp slt i64 %438, %441
  br i1 %442, label %443, label %555

443:                                              ; preds = %436
  %444 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 1
  %447 = call i32 @snprintf(i8* %444, i32 30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %446)
  %448 = load %struct.device*, %struct.device** %4, align 8
  %449 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %450 = call i8* @devm_clk_get(%struct.device* %448, i8* %449)
  %451 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %452 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %451, i32 0, i32 9
  %453 = load i8**, i8*** %452, align 8
  %454 = load i32, i32* %9, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %453, i64 %455
  store i8* %450, i8** %456, align 8
  %457 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %458 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %457, i32 0, i32 9
  %459 = load i8**, i8*** %458, align 8
  %460 = load i32, i32* %9, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8*, i8** %459, i64 %461
  %463 = load i8*, i8** %462, align 8
  %464 = call i64 @IS_ERR(i8* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %479

466:                                              ; preds = %443
  %467 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %468 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %467, i32 0, i32 9
  %469 = load i8**, i8*** %468, align 8
  %470 = load i32, i32* %9, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %469, i64 %471
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 @PTR_ERR(i8* %473)
  store i32 %474, i32* %8, align 4
  %475 = load %struct.device*, %struct.device** %4, align 8
  %476 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %477 = load i32, i32* %8, align 4
  %478 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %475, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %476, i32 %477)
  br label %682

479:                                              ; preds = %443
  %480 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %481 = load i32, i32* %9, align 4
  %482 = add nsw i32 %481, 1
  %483 = call i32 @snprintf(i8* %480, i32 30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %482)
  %484 = load %struct.device*, %struct.device** %4, align 8
  %485 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %486 = call i8* @devm_clk_get(%struct.device* %484, i8* %485)
  %487 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %488 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %487, i32 0, i32 8
  %489 = load i8**, i8*** %488, align 8
  %490 = load i32, i32* %9, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8*, i8** %489, i64 %491
  store i8* %486, i8** %492, align 8
  %493 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %494 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %493, i32 0, i32 8
  %495 = load i8**, i8*** %494, align 8
  %496 = load i32, i32* %9, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8*, i8** %495, i64 %497
  %499 = load i8*, i8** %498, align 8
  %500 = call i64 @IS_ERR(i8* %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %515

502:                                              ; preds = %479
  %503 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %504 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %503, i32 0, i32 8
  %505 = load i8**, i8*** %504, align 8
  %506 = load i32, i32* %9, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8*, i8** %505, i64 %507
  %509 = load i8*, i8** %508, align 8
  %510 = call i32 @PTR_ERR(i8* %509)
  store i32 %510, i32* %8, align 4
  %511 = load %struct.device*, %struct.device** %4, align 8
  %512 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %513 = load i32, i32* %8, align 4
  %514 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %511, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %512, i32 %513)
  br label %682

515:                                              ; preds = %479
  %516 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %517 = load i32, i32* %9, align 4
  %518 = add nsw i32 %517, 1
  %519 = call i32 @snprintf(i8* %516, i32 30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %518)
  %520 = load %struct.device*, %struct.device** %4, align 8
  %521 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %522 = call i8* @devm_clk_get(%struct.device* %520, i8* %521)
  %523 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %524 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %523, i32 0, i32 7
  %525 = load i8**, i8*** %524, align 8
  %526 = load i32, i32* %9, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8*, i8** %525, i64 %527
  store i8* %522, i8** %528, align 8
  %529 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %530 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %529, i32 0, i32 7
  %531 = load i8**, i8*** %530, align 8
  %532 = load i32, i32* %9, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8*, i8** %531, i64 %533
  %535 = load i8*, i8** %534, align 8
  %536 = call i64 @IS_ERR(i8* %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %551

538:                                              ; preds = %515
  %539 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %540 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %539, i32 0, i32 7
  %541 = load i8**, i8*** %540, align 8
  %542 = load i32, i32* %9, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8*, i8** %541, i64 %543
  %545 = load i8*, i8** %544, align 8
  %546 = call i32 @PTR_ERR(i8* %545)
  store i32 %546, i32* %8, align 4
  %547 = load %struct.device*, %struct.device** %4, align 8
  %548 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %549 = load i32, i32* %8, align 4
  %550 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %547, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %548, i32 %549)
  br label %682

551:                                              ; preds = %515
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %9, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %9, align 4
  br label %436

555:                                              ; preds = %436
  %556 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %557 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %556, i32 0, i32 1
  %558 = load i32*, i32** %557, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 0
  %560 = load i32, i32* %559, align 4
  %561 = call i64 @is_ehci_phy_mode(i32 %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %578

563:                                              ; preds = %555
  %564 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %565 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %564, i32 0, i32 5
  %566 = load i8*, i8** %565, align 8
  %567 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %568 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %567, i32 0, i32 6
  %569 = load i8*, i8** %568, align 8
  %570 = call i32 @clk_set_parent(i8* %566, i8* %569)
  store i32 %570, i32* %8, align 4
  %571 = load i32, i32* %8, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %577

573:                                              ; preds = %563
  %574 = load %struct.device*, %struct.device** %4, align 8
  %575 = load i32, i32* %8, align 4
  %576 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %574, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %575)
  br label %682

577:                                              ; preds = %563
  br label %602

578:                                              ; preds = %555
  %579 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %580 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %579, i32 0, i32 1
  %581 = load i32*, i32** %580, align 8
  %582 = getelementptr inbounds i32, i32* %581, i64 0
  %583 = load i32, i32* %582, align 4
  %584 = call i64 @is_ehci_tll_mode(i32 %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %601

586:                                              ; preds = %578
  %587 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %588 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %587, i32 0, i32 5
  %589 = load i8*, i8** %588, align 8
  %590 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %591 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %590, i32 0, i32 2
  %592 = load i8*, i8** %591, align 8
  %593 = call i32 @clk_set_parent(i8* %589, i8* %592)
  store i32 %593, i32* %8, align 4
  %594 = load i32, i32* %8, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %600

596:                                              ; preds = %586
  %597 = load %struct.device*, %struct.device** %4, align 8
  %598 = load i32, i32* %8, align 4
  %599 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %597, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i32 %598)
  br label %682

600:                                              ; preds = %586
  br label %601

601:                                              ; preds = %600, %578
  br label %602

602:                                              ; preds = %601, %577
  %603 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %604 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %603, i32 0, i32 1
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 1
  %607 = load i32, i32* %606, align 4
  %608 = call i64 @is_ehci_phy_mode(i32 %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %625

610:                                              ; preds = %602
  %611 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %612 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %611, i32 0, i32 3
  %613 = load i8*, i8** %612, align 8
  %614 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %615 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %614, i32 0, i32 4
  %616 = load i8*, i8** %615, align 8
  %617 = call i32 @clk_set_parent(i8* %613, i8* %616)
  store i32 %617, i32* %8, align 4
  %618 = load i32, i32* %8, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %624

620:                                              ; preds = %610
  %621 = load %struct.device*, %struct.device** %4, align 8
  %622 = load i32, i32* %8, align 4
  %623 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %621, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %622)
  br label %682

624:                                              ; preds = %610
  br label %649

625:                                              ; preds = %602
  %626 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %627 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %626, i32 0, i32 1
  %628 = load i32*, i32** %627, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 1
  %630 = load i32, i32* %629, align 4
  %631 = call i64 @is_ehci_tll_mode(i32 %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %648

633:                                              ; preds = %625
  %634 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %635 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %634, i32 0, i32 3
  %636 = load i8*, i8** %635, align 8
  %637 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %6, align 8
  %638 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %637, i32 0, i32 2
  %639 = load i8*, i8** %638, align 8
  %640 = call i32 @clk_set_parent(i8* %636, i8* %639)
  store i32 %640, i32* %8, align 4
  %641 = load i32, i32* %8, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %633
  %644 = load %struct.device*, %struct.device** %4, align 8
  %645 = load i32, i32* %8, align 4
  %646 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %644, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %645)
  br label %682

647:                                              ; preds = %633
  br label %648

648:                                              ; preds = %647, %625
  br label %649

649:                                              ; preds = %648, %624
  br label %650

650:                                              ; preds = %649, %344
  %651 = load %struct.device*, %struct.device** %4, align 8
  %652 = call i32 @omap_usbhs_init(%struct.device* %651)
  %653 = load %struct.device*, %struct.device** %4, align 8
  %654 = getelementptr inbounds %struct.device, %struct.device* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %671

657:                                              ; preds = %650
  %658 = load %struct.device*, %struct.device** %4, align 8
  %659 = getelementptr inbounds %struct.device, %struct.device* %658, i32 0, i32 0
  %660 = load i64, i64* %659, align 8
  %661 = load i32, i32* @usbhs_child_match_table, align 4
  %662 = load %struct.device*, %struct.device** %4, align 8
  %663 = call i32 @of_platform_populate(i64 %660, i32 %661, i32* null, %struct.device* %662)
  store i32 %663, i32* %8, align 4
  %664 = load i32, i32* %8, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %657
  %667 = load %struct.device*, %struct.device** %4, align 8
  %668 = load i32, i32* %8, align 4
  %669 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %667, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 %668)
  br label %682

670:                                              ; preds = %657
  br label %681

671:                                              ; preds = %650
  %672 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %673 = call i32 @omap_usbhs_alloc_children(%struct.platform_device* %672)
  store i32 %673, i32* %8, align 4
  %674 = load i32, i32* %8, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %680

676:                                              ; preds = %671
  %677 = load %struct.device*, %struct.device** %4, align 8
  %678 = load i32, i32* %8, align 4
  %679 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %677, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i32 %678)
  br label %682

680:                                              ; preds = %671
  br label %681

681:                                              ; preds = %680, %670
  store i32 0, i32* %2, align 4
  br label %686

682:                                              ; preds = %676, %666, %643, %620, %596, %573, %538, %502, %466, %427, %409, %391, %373, %355, %335, %198
  %683 = load %struct.device*, %struct.device** %4, align 8
  %684 = call i32 @pm_runtime_disable(%struct.device* %683)
  %685 = load i32, i32* %8, align 4
  store i32 %685, i32* %2, align 4
  br label %686

686:                                              ; preds = %682, %681, %91, %72, %56, %45, %36, %27
  %687 = load i32, i32* %2, align 4
  ret i32 %687
}

declare dso_local %struct.usbhs_omap_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @usbhs_omap_get_dt_pdata(%struct.device*, %struct.usbhs_omap_platform_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @omap_tll_init(%struct.usbhs_omap_platform_data*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usbhs_hcd_omap*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @usbhs_read(i8*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @is_ehci_phy_mode(i32) #1

declare dso_local i64 @is_ehci_tll_mode(i32) #1

declare dso_local i64 @is_ehci_hsic_mode(i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @clk_set_parent(i8*, i8*) #1

declare dso_local i32 @omap_usbhs_init(%struct.device*) #1

declare dso_local i32 @of_platform_populate(i64, i32, i32*, %struct.device*) #1

declare dso_local i32 @omap_usbhs_alloc_children(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
