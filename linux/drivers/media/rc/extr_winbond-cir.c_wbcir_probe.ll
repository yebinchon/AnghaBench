; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.wbcir_data = type { i64, i64, i64, i32, %struct.TYPE_14__, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_12__, %struct.wbcir_data*, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.device* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@EHFUNC_IOMEM_LEN = common dso_local global i64 0, align 8
@WAKEUP_IOMEM_LEN = common dso_local global i64 0, align 8
@SP_IOMEM_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Invalid resources\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Found device (w: 0x%lX, e: 0x%lX, s: 0x%lX, i: %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cir::activity\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rc-feedback\00", align 1
@wbcir_led_brightness_set = common dso_local global i32 0, align 4
@wbcir_led_brightness_get = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@WBCIR_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"wbcir/cir0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_WINBOND = common dso_local global i32 0, align 4
@WBCIR_ID_FAMILY = common dso_local global i32 0, align 4
@WBCIR_ID_CHIP = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4
@wbcir_idle_rx = common dso_local global i32 0, align 4
@wbcir_set_carrier_report = common dso_local global i32 0, align 4
@wbcir_txmask = common dso_local global i32 0, align 4
@wbcir_txcarrier = common dso_local global i32 0, align 4
@wbcir_tx = common dso_local global i32 0, align 4
@IR_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NECX = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC32 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_0 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_20 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_24 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_32 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@RC_PROTO_RC6_MCE = common dso_local global i32 0, align 4
@wbcir_set_wakeup_filter = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@wbcir_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to claim IRQ %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @wbcir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wbcir_data*, align 8
  %8 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %12 = call i64 @pnp_port_len(%struct.pnp_dev* %11, i32 0)
  %13 = load i64, i64* @EHFUNC_IOMEM_LEN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %17 = call i64 @pnp_port_len(%struct.pnp_dev* %16, i32 1)
  %18 = load i64, i64* @WAKEUP_IOMEM_LEN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %22 = call i64 @pnp_port_len(%struct.pnp_dev* %21, i32 2)
  %23 = load i64, i64* @SP_IOMEM_LEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %15, %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %423

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.wbcir_data* @kzalloc(i32 72, i32 %31)
  store %struct.wbcir_data* %32, %struct.wbcir_data** %7, align 8
  %33 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %34 = icmp ne %struct.wbcir_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %421

38:                                               ; preds = %30
  %39 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %40 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %41 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %39, %struct.wbcir_data* %40)
  %42 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %43 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %42, i32 0, i32 6
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %46 = call i8* @pnp_port_start(%struct.pnp_dev* %45, i32 0)
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %49 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %51 = call i8* @pnp_port_start(%struct.pnp_dev* %50, i32 1)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %54 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %56 = call i8* @pnp_port_start(%struct.pnp_dev* %55, i32 2)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %59 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %61 = call i32 @pnp_irq(%struct.pnp_dev* %60, i32 0)
  %62 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %63 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %65 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %38
  %69 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %70 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %75 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %80 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %73, %68, %38
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %416

88:                                               ; preds = %78
  %89 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %90 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %89, i32 0, i32 0
  %91 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %92 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %95 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %98 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %101 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %93, i64 %96, i64 %99, i32 %102)
  %104 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %105 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %106, align 8
  %107 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %108 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %109, align 8
  %110 = load i32, i32* @wbcir_led_brightness_set, align 4
  %111 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %112 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @wbcir_led_brightness_get, align 4
  %115 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %116 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %118, i32 0, i32 0
  %120 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %121 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %120, i32 0, i32 4
  %122 = call i32 @led_classdev_register(%struct.device* %119, %struct.TYPE_14__* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %88
  br label %416

126:                                              ; preds = %88
  %127 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %128 = call %struct.TYPE_13__* @rc_allocate_device(i32 %127)
  %129 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %130 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %129, i32 0, i32 5
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %130, align 8
  %131 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %132 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %131, i32 0, i32 5
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = icmp ne %struct.TYPE_13__* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %412

138:                                              ; preds = %126
  %139 = load i32, i32* @DRVNAME, align 4
  %140 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %141 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %140, i32 0, i32 5
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 20
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* @WBCIR_NAME, align 4
  %145 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %146 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %145, i32 0, i32 5
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 19
  store i32 %144, i32* %148, align 8
  %149 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %150 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %149, i32 0, i32 5
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %152, align 8
  %153 = load i32, i32* @BUS_HOST, align 4
  %154 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %155 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %154, i32 0, i32 5
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 18
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* @PCI_VENDOR_ID_WINBOND, align 4
  %160 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %161 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %160, i32 0, i32 5
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 18
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  store i32 %159, i32* %164, align 8
  %165 = load i32, i32* @WBCIR_ID_FAMILY, align 4
  %166 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %167 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %166, i32 0, i32 5
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 18
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* @WBCIR_ID_CHIP, align 4
  %172 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %173 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %172, i32 0, i32 5
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 18
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i32 %171, i32* %176, align 8
  %177 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %178 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %179 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %178, i32 0, i32 5
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 17
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* @wbcir_idle_rx, align 4
  %183 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %184 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %183, i32 0, i32 5
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 16
  store i32 %182, i32* %186, align 8
  %187 = load i32, i32* @wbcir_set_carrier_report, align 4
  %188 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %189 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %188, i32 0, i32 5
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 15
  store i32 %187, i32* %191, align 4
  %192 = load i32, i32* @wbcir_txmask, align 4
  %193 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %194 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %193, i32 0, i32 5
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 14
  store i32 %192, i32* %196, align 8
  %197 = load i32, i32* @wbcir_txcarrier, align 4
  %198 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %199 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %198, i32 0, i32 5
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 13
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* @wbcir_tx, align 4
  %203 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %204 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %203, i32 0, i32 5
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 12
  store i32 %202, i32* %206, align 8
  %207 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %208 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %209 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %208, i32 0, i32 5
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 11
  store %struct.wbcir_data* %207, %struct.wbcir_data** %211, align 8
  %212 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %213 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %212, i32 0, i32 0
  %214 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %215 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %214, i32 0, i32 5
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 10
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  store %struct.device* %213, %struct.device** %218, align 8
  %219 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %220 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %219, i32 0, i32 5
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  store i32 1, i32* %222, align 8
  %223 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %224 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %225 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %224, i32 0, i32 5
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %229 = mul nsw i32 10, %228
  %230 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %231 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %230, i32 0, i32 5
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 3
  store i32 %229, i32* %233, align 8
  %234 = call i32 @US_TO_NS(i32 2)
  %235 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %236 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %235, i32 0, i32 5
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 9
  store i32 %234, i32* %238, align 4
  %239 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %240 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %241 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %240, i32 0, i32 5
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 8
  store i32 %239, i32* %243, align 8
  %244 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %245 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @RC_PROTO_BIT_NEC32, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @RC_PROTO_BIT_RC6_0, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @RC_PROTO_BIT_RC6_6A_20, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @RC_PROTO_BIT_RC6_6A_24, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @RC_PROTO_BIT_RC6_6A_32, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %262 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %261, i32 0, i32 5
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 4
  store i32 %260, i32* %264, align 4
  %265 = load i32, i32* @RC_PROTO_RC6_MCE, align 4
  %266 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %267 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %266, i32 0, i32 5
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 7
  store i32 %265, i32* %269, align 4
  %270 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %271 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %270, i32 0, i32 5
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 6
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  store i32 -2146499572, i32* %274, align 4
  %275 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %276 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %275, i32 0, i32 5
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  store i32 -32769, i32* %279, align 4
  %280 = load i32, i32* @wbcir_set_wakeup_filter, align 4
  %281 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %282 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %281, i32 0, i32 5
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 5
  store i32 %280, i32* %284, align 8
  %285 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %286 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %285, i32 0, i32 5
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %286, align 8
  %288 = call i32 @rc_register_device(%struct.TYPE_13__* %287)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %138
  br label %407

292:                                              ; preds = %138
  %293 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %294 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @WAKEUP_IOMEM_LEN, align 8
  %297 = load i32, i32* @DRVNAME, align 4
  %298 = call i32 @request_region(i64 %295, i64 %296, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %314, label %300

300:                                              ; preds = %292
  %301 = load %struct.device*, %struct.device** %6, align 8
  %302 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %303 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %306 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @WAKEUP_IOMEM_LEN, align 8
  %309 = add nsw i64 %307, %308
  %310 = sub nsw i64 %309, 1
  %311 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %301, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %304, i64 %310)
  %312 = load i32, i32* @EBUSY, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %8, align 4
  br label %400

314:                                              ; preds = %292
  %315 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %316 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @EHFUNC_IOMEM_LEN, align 8
  %319 = load i32, i32* @DRVNAME, align 4
  %320 = call i32 @request_region(i64 %317, i64 %318, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %336, label %322

322:                                              ; preds = %314
  %323 = load %struct.device*, %struct.device** %6, align 8
  %324 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %325 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %328 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @EHFUNC_IOMEM_LEN, align 8
  %331 = add nsw i64 %329, %330
  %332 = sub nsw i64 %331, 1
  %333 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %323, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %326, i64 %332)
  %334 = load i32, i32* @EBUSY, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %8, align 4
  br label %394

336:                                              ; preds = %314
  %337 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %338 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @SP_IOMEM_LEN, align 8
  %341 = load i32, i32* @DRVNAME, align 4
  %342 = call i32 @request_region(i64 %339, i64 %340, i32 %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %358, label %344

344:                                              ; preds = %336
  %345 = load %struct.device*, %struct.device** %6, align 8
  %346 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %347 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %350 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @SP_IOMEM_LEN, align 8
  %353 = add nsw i64 %351, %352
  %354 = sub nsw i64 %353, 1
  %355 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %345, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %348, i64 %354)
  %356 = load i32, i32* @EBUSY, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %8, align 4
  br label %388

358:                                              ; preds = %336
  %359 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %360 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @wbcir_irq_handler, align 4
  %363 = load i32, i32* @DRVNAME, align 4
  %364 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %365 = call i32 @request_irq(i32 %361, i32 %362, i32 0, i32 %363, %struct.pnp_dev* %364)
  store i32 %365, i32* %8, align 4
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %358
  %369 = load %struct.device*, %struct.device** %6, align 8
  %370 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %371 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %369, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %372)
  %374 = load i32, i32* @EBUSY, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %8, align 4
  br label %382

376:                                              ; preds = %358
  %377 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %378 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %377, i32 0, i32 0
  %379 = call i32 @device_init_wakeup(%struct.device* %378, i32 1)
  %380 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %381 = call i32 @wbcir_init_hw(%struct.wbcir_data* %380)
  store i32 0, i32* %3, align 4
  br label %423

382:                                              ; preds = %368
  %383 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %384 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @SP_IOMEM_LEN, align 8
  %387 = call i32 @release_region(i64 %385, i64 %386)
  br label %388

388:                                              ; preds = %382, %344
  %389 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %390 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @EHFUNC_IOMEM_LEN, align 8
  %393 = call i32 @release_region(i64 %391, i64 %392)
  br label %394

394:                                              ; preds = %388, %322
  %395 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %396 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @WAKEUP_IOMEM_LEN, align 8
  %399 = call i32 @release_region(i64 %397, i64 %398)
  br label %400

400:                                              ; preds = %394, %300
  %401 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %402 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %401, i32 0, i32 5
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %402, align 8
  %404 = call i32 @rc_unregister_device(%struct.TYPE_13__* %403)
  %405 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %406 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %405, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %406, align 8
  br label %407

407:                                              ; preds = %400, %291
  %408 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %409 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %408, i32 0, i32 5
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %409, align 8
  %411 = call i32 @rc_free_device(%struct.TYPE_13__* %410)
  br label %412

412:                                              ; preds = %407, %135
  %413 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %414 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %413, i32 0, i32 4
  %415 = call i32 @led_classdev_unregister(%struct.TYPE_14__* %414)
  br label %416

416:                                              ; preds = %412, %125, %83
  %417 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %418 = call i32 @kfree(%struct.wbcir_data* %417)
  %419 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %420 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %419, %struct.wbcir_data* null)
  br label %421

421:                                              ; preds = %416, %35
  %422 = load i32, i32* %8, align 4
  store i32 %422, i32* %3, align 4
  br label %423

423:                                              ; preds = %421, %376, %25
  %424 = load i32, i32* %3, align 4
  ret i32 %424
}

declare dso_local i64 @pnp_port_len(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.wbcir_data* @kzalloc(i32, i32) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.wbcir_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @rc_allocate_device(i32) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @rc_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @request_region(i64, i64, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pnp_dev*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @wbcir_init_hw(%struct.wbcir_data*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @rc_unregister_device(%struct.TYPE_13__*) #1

declare dso_local i32 @rc_free_device(%struct.TYPE_13__*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.wbcir_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
