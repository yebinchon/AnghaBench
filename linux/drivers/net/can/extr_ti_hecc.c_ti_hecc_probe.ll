; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i64, i32*, i32 }
%struct.ti_hecc_priv = type { %struct.regulator*, %struct.TYPE_14__, %struct.regulator*, %struct.TYPE_12__, i32, i32, %struct.regulator*, %struct.net_device*, %struct.regulator*, %struct.regulator* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.regulator = type { i32 }
%struct.resource = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xceiver\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@HECC_MAX_TX_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_candev failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"hecc\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can't get IORESOURCE_MEM hecc\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hecc ioremap failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"hecc-ram\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"can't get IORESOURCE_MEM hecc-ram\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"hecc-ram ioremap failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mbx\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"can't get IORESOURCE_MEM mbx\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"mbx ioremap failed\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ti,use-hecc1int\00", align 1
@ti_hecc_bittiming_const = common dso_local global i32 0, align 4
@ti_hecc_do_set_mode = common dso_local global i32 0, align 4
@ti_hecc_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@ti_hecc_netdev_ops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"hecc_ck\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"No clock available\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"clk_prepare_enable() failed\0A\00", align 1
@ti_hecc_mailbox_read = common dso_local global i32 0, align 4
@HECC_RX_FIRST_MBOX = common dso_local global i32 0, align 4
@HECC_RX_LAST_MBOX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"can_rx_offload_add_timestamp() failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"register_candev() failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"device registered (reg_base=%p, irq=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_hecc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_hecc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ti_hecc_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.regulator*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @CONFIG_OF, align 4
  %18 = call i32 @IS_ENABLED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %312

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %29, %struct.regulator** %9, align 8
  %30 = load %struct.regulator*, %struct.regulator** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.regulator* %30)
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %312

38:                                               ; preds = %26
  %39 = load %struct.regulator*, %struct.regulator** %9, align 8
  %40 = call i64 @IS_ERR(%struct.regulator* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.regulator* null, %struct.regulator** %9, align 8
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @HECC_MAX_TX_MBOX, align 4
  %46 = call %struct.net_device* @alloc_candev(i32 96, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_13__* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %312

55:                                               ; preds = %44
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %56)
  store %struct.ti_hecc_priv* %57, %struct.ti_hecc_priv** %5, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %60, %struct.resource** %7, align 8
  %61 = load %struct.resource*, %struct.resource** %7, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_13__* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %312

69:                                               ; preds = %55
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.resource*, %struct.resource** %7, align 8
  %73 = call i8* @devm_ioremap_resource(%struct.TYPE_13__* %71, %struct.resource* %72)
  %74 = bitcast i8* %73 to %struct.regulator*
  %75 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %76 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %75, i32 0, i32 2
  store %struct.regulator* %74, %struct.regulator** %76, align 8
  %77 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %78 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %77, i32 0, i32 2
  %79 = load %struct.regulator*, %struct.regulator** %78, align 8
  %80 = call i64 @IS_ERR(%struct.regulator* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %69
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_13__* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %87 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %86, i32 0, i32 2
  %88 = load %struct.regulator*, %struct.regulator** %87, align 8
  %89 = call i32 @PTR_ERR(%struct.regulator* %88)
  store i32 %89, i32* %2, align 4
  br label %312

90:                                               ; preds = %69
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load i32, i32* @IORESOURCE_MEM, align 4
  %93 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %91, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %93, %struct.resource** %7, align 8
  %94 = load %struct.resource*, %struct.resource** %7, align 8
  %95 = icmp ne %struct.resource* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_13__* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %312

102:                                              ; preds = %90
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.resource*, %struct.resource** %7, align 8
  %106 = call i8* @devm_ioremap_resource(%struct.TYPE_13__* %104, %struct.resource* %105)
  %107 = bitcast i8* %106 to %struct.regulator*
  %108 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %109 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %108, i32 0, i32 9
  store %struct.regulator* %107, %struct.regulator** %109, align 8
  %110 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %111 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %110, i32 0, i32 9
  %112 = load %struct.regulator*, %struct.regulator** %111, align 8
  %113 = call i64 @IS_ERR(%struct.regulator* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %102
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(%struct.TYPE_13__* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %119 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %120 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %119, i32 0, i32 9
  %121 = load %struct.regulator*, %struct.regulator** %120, align 8
  %122 = call i32 @PTR_ERR(%struct.regulator* %121)
  store i32 %122, i32* %2, align 4
  br label %312

123:                                              ; preds = %102
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = load i32, i32* @IORESOURCE_MEM, align 4
  %126 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %124, i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %126, %struct.resource** %7, align 8
  %127 = load %struct.resource*, %struct.resource** %7, align 8
  %128 = icmp ne %struct.resource* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(%struct.TYPE_13__* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %312

135:                                              ; preds = %123
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.resource*, %struct.resource** %7, align 8
  %139 = call i8* @devm_ioremap_resource(%struct.TYPE_13__* %137, %struct.resource* %138)
  %140 = bitcast i8* %139 to %struct.regulator*
  %141 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %142 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %141, i32 0, i32 8
  store %struct.regulator* %140, %struct.regulator** %142, align 8
  %143 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %144 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %143, i32 0, i32 8
  %145 = load %struct.regulator*, %struct.regulator** %144, align 8
  %146 = call i64 @IS_ERR(%struct.regulator* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %135
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_err(%struct.TYPE_13__* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %152 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %153 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %152, i32 0, i32 8
  %154 = load %struct.regulator*, %struct.regulator** %153, align 8
  %155 = call i32 @PTR_ERR(%struct.regulator* %154)
  store i32 %155, i32* %2, align 4
  br label %312

156:                                              ; preds = %135
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load i32, i32* @IORESOURCE_IRQ, align 4
  %159 = call %struct.resource* @platform_get_resource(%struct.platform_device* %157, i32 %158, i32 0)
  store %struct.resource* %159, %struct.resource** %8, align 8
  %160 = load %struct.resource*, %struct.resource** %8, align 8
  %161 = icmp ne %struct.resource* %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 @dev_err(%struct.TYPE_13__* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %310

166:                                              ; preds = %156
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %169 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %168, i32 0, i32 7
  store %struct.net_device* %167, %struct.net_device** %169, align 8
  %170 = load %struct.regulator*, %struct.regulator** %9, align 8
  %171 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %172 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %171, i32 0, i32 6
  store %struct.regulator* %170, %struct.regulator** %172, align 8
  %173 = load %struct.device_node*, %struct.device_node** %6, align 8
  %174 = call i32 @of_property_read_bool(%struct.device_node* %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %175 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %176 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %178 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 4
  store i32* @ti_hecc_bittiming_const, i32** %179, align 8
  %180 = load i32, i32* @ti_hecc_do_set_mode, align 4
  %181 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %182 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @ti_hecc_get_berr_counter, align 4
  %185 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %186 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %189 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %190 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 4
  %192 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %193 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %192, i32 0, i32 4
  %194 = call i32 @spin_lock_init(i32* %193)
  %195 = load %struct.resource*, %struct.resource** %8, align 8
  %196 = getelementptr inbounds %struct.resource, %struct.resource* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.net_device*, %struct.net_device** %4, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load i32, i32* @IFF_ECHO, align 4
  %201 = load %struct.net_device*, %struct.net_device** %4, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load %struct.net_device*, %struct.net_device** %4, align 8
  %207 = call i32 @platform_set_drvdata(%struct.platform_device* %205, %struct.net_device* %206)
  %208 = load %struct.net_device*, %struct.net_device** %4, align 8
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 @SET_NETDEV_DEV(%struct.net_device* %208, %struct.TYPE_13__* %210)
  %212 = load %struct.net_device*, %struct.net_device** %4, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 1
  store i32* @ti_hecc_netdev_ops, i32** %213, align 8
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call %struct.regulator* @clk_get(%struct.TYPE_13__* %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %217 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %218 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %217, i32 0, i32 0
  store %struct.regulator* %216, %struct.regulator** %218, align 8
  %219 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %220 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %219, i32 0, i32 0
  %221 = load %struct.regulator*, %struct.regulator** %220, align 8
  %222 = call i64 @IS_ERR(%struct.regulator* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %166
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @dev_err(%struct.TYPE_13__* %226, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %228 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %229 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %228, i32 0, i32 0
  %230 = load %struct.regulator*, %struct.regulator** %229, align 8
  %231 = call i32 @PTR_ERR(%struct.regulator* %230)
  store i32 %231, i32* %10, align 4
  %232 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %233 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %232, i32 0, i32 0
  store %struct.regulator* null, %struct.regulator** %233, align 8
  br label %307

234:                                              ; preds = %166
  %235 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %236 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %235, i32 0, i32 0
  %237 = load %struct.regulator*, %struct.regulator** %236, align 8
  %238 = call i32 @clk_get_rate(%struct.regulator* %237)
  %239 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %240 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  store i32 %238, i32* %242, align 8
  %243 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %244 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %243, i32 0, i32 0
  %245 = load %struct.regulator*, %struct.regulator** %244, align 8
  %246 = call i32 @clk_prepare_enable(%struct.regulator* %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %234
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 @dev_err(%struct.TYPE_13__* %251, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %302

253:                                              ; preds = %234
  %254 = load i32, i32* @ti_hecc_mailbox_read, align 4
  %255 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %256 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 2
  store i32 %254, i32* %257, align 8
  %258 = load i32, i32* @HECC_RX_FIRST_MBOX, align 4
  %259 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %260 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  store i32 %258, i32* %261, align 4
  %262 = load i32, i32* @HECC_RX_LAST_MBOX, align 4
  %263 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %264 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  store i32 %262, i32* %265, align 8
  %266 = load %struct.net_device*, %struct.net_device** %4, align 8
  %267 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %268 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %267, i32 0, i32 1
  %269 = call i32 @can_rx_offload_add_timestamp(%struct.net_device* %266, %struct.TYPE_14__* %268)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %253
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = call i32 @dev_err(%struct.TYPE_13__* %274, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %302

276:                                              ; preds = %253
  %277 = load %struct.net_device*, %struct.net_device** %4, align 8
  %278 = call i32 @register_candev(%struct.net_device* %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %276
  %282 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %283 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %282, i32 0, i32 0
  %284 = call i32 @dev_err(%struct.TYPE_13__* %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  br label %298

285:                                              ; preds = %276
  %286 = load %struct.net_device*, %struct.net_device** %4, align 8
  %287 = call i32 @devm_can_led_init(%struct.net_device* %286)
  %288 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %289 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %288, i32 0, i32 0
  %290 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %291 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %290, i32 0, i32 2
  %292 = load %struct.regulator*, %struct.regulator** %291, align 8
  %293 = load %struct.net_device*, %struct.net_device** %4, align 8
  %294 = getelementptr inbounds %struct.net_device, %struct.net_device* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = call i32 @dev_info(%struct.TYPE_13__* %289, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), %struct.regulator* %292, i32 %296)
  store i32 0, i32* %2, align 4
  br label %312

298:                                              ; preds = %281
  %299 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %300 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %299, i32 0, i32 1
  %301 = call i32 @can_rx_offload_del(%struct.TYPE_14__* %300)
  br label %302

302:                                              ; preds = %298, %272, %249
  %303 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %5, align 8
  %304 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %303, i32 0, i32 0
  %305 = load %struct.regulator*, %struct.regulator** %304, align 8
  %306 = call i32 @clk_put(%struct.regulator* %305)
  br label %307

307:                                              ; preds = %302, %224
  %308 = load %struct.net_device*, %struct.net_device** %4, align 8
  %309 = call i32 @free_candev(%struct.net_device* %308)
  br label %310

310:                                              ; preds = %307, %162
  %311 = load i32, i32* %10, align 4
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %310, %285, %148, %129, %115, %96, %82, %63, %49, %35, %23
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.regulator* @devm_regulator_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_13__*) #1

declare dso_local %struct.regulator* @clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.regulator*) #1

declare dso_local i32 @clk_prepare_enable(%struct.regulator*) #1

declare dso_local i32 @can_rx_offload_add_timestamp(%struct.net_device*, %struct.TYPE_14__*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @devm_can_led_init(%struct.net_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, %struct.regulator*, i32) #1

declare dso_local i32 @can_rx_offload_del(%struct.TYPE_14__*) #1

declare dso_local i32 @clk_put(%struct.regulator*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
