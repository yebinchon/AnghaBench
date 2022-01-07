; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rc_dev = type { i32, i8*, i32, i32, i32, i32, %struct.st_rc_device*, i32, i32 }
%struct.st_rc_device = type { i32, i32, i64, %struct.rc_dev*, %struct.device*, i64, i64, i64 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rx-mode\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uhf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"infrared\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported rx mode [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"System clock not found\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@MAX_SYMB_TIME = common dso_local global i32 0, align 4
@st_rc_open = common dso_local global i32 0, align 4
@st_rc_close = common dso_local global i32 0, align 4
@IR_ST_NAME = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"ST Remote Control Receiver\00", align 1
@st_rc_rx_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"IRQ %d register failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"setup in %s mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"UHF\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unable to register device (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_rc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.st_rc_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.st_rc_device* @devm_kzalloc(%struct.device* %19, i32 56, i32 %20)
  store %struct.st_rc_device* %21, %struct.st_rc_device** %8, align 8
  %22 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %23 = icmp ne %struct.st_rc_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %240

27:                                               ; preds = %1
  %28 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %29 = call %struct.rc_dev* @rc_allocate_device(i32 %28)
  store %struct.rc_dev* %29, %struct.rc_dev** %5, align 8
  %30 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %31 = icmp ne %struct.rc_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %240

35:                                               ; preds = %27
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.device_node*, %struct.device_node** %9, align 8
  %40 = call i32 @of_property_read_string(%struct.device_node* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %48 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %61

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %55 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %233

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %46
  br label %63

62:                                               ; preds = %38, %35
  br label %233

63:                                               ; preds = %61
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i64 @devm_clk_get(%struct.device* %64, i32* null)
  %66 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %67 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %69 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %77 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @PTR_ERR(i64 %78)
  store i32 %79, i32* %4, align 4
  br label %233

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call i32 @platform_get_irq(%struct.platform_device* %81, i32 0)
  %83 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %84 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %86 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %91 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %4, align 4
  br label %233

93:                                               ; preds = %80
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load i32, i32* @IORESOURCE_MEM, align 4
  %96 = call %struct.resource* @platform_get_resource(%struct.platform_device* %94, i32 %95, i32 0)
  store %struct.resource* %96, %struct.resource** %7, align 8
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load %struct.resource*, %struct.resource** %7, align 8
  %99 = call i64 @devm_ioremap_resource(%struct.device* %97, %struct.resource* %98)
  %100 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %101 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %100, i32 0, i32 6
  store i64 %99, i64* %101, align 8
  %102 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %103 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @IS_ERR(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %93
  %108 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %109 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @PTR_ERR(i64 %110)
  store i32 %111, i32* %4, align 4
  br label %233

112:                                              ; preds = %93
  %113 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %114 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %119 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 64
  %122 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %123 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  br label %130

124:                                              ; preds = %112
  %125 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %126 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %129 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %128, i32 0, i32 7
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %117
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i64 @reset_control_get_optional_exclusive(%struct.device* %131, i32* null)
  %133 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %134 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  %135 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %136 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @IS_ERR(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %142 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @PTR_ERR(i64 %143)
  store i32 %144, i32* %4, align 4
  br label %233

145:                                              ; preds = %130
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %148 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %147, i32 0, i32 4
  store %struct.device* %146, %struct.device** %148, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %151 = call i32 @platform_set_drvdata(%struct.platform_device* %149, %struct.st_rc_device* %150)
  %152 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %153 = call i32 @st_rc_hardware_init(%struct.st_rc_device* %152)
  %154 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %155 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %156 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 4
  %157 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %158 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %157, i32 0, i32 0
  store i32 100, i32* %158, align 8
  %159 = load i32, i32* @MAX_SYMB_TIME, align 4
  %160 = call i32 @US_TO_NS(i32 %159)
  %161 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %162 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %164 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %165 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %164, i32 0, i32 6
  store %struct.st_rc_device* %163, %struct.st_rc_device** %165, align 8
  %166 = load i32, i32* @st_rc_open, align 4
  %167 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %168 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @st_rc_close, align 4
  %170 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %171 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @IR_ST_NAME, align 4
  %173 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %174 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @RC_MAP_EMPTY, align 4
  %176 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %177 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %179 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %178, i32 0, i32 1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %179, align 8
  %180 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %181 = call i32 @rc_register_device(%struct.rc_dev* %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %145
  br label %228

185:                                              ; preds = %145
  %186 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %187 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %188 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %187, i32 0, i32 3
  store %struct.rc_dev* %186, %struct.rc_dev** %188, align 8
  %189 = load %struct.device*, %struct.device** %6, align 8
  %190 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %191 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @st_rc_rx_interrupt, align 4
  %194 = load i32, i32* @IR_ST_NAME, align 4
  %195 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %196 = call i64 @devm_request_irq(%struct.device* %189, i32 %192, i32 %193, i32 0, i32 %194, %struct.st_rc_device* %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %185
  %199 = load %struct.device*, %struct.device** %6, align 8
  %200 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %201 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %225

206:                                              ; preds = %185
  %207 = load %struct.device*, %struct.device** %6, align 8
  %208 = call i32 @device_init_wakeup(%struct.device* %207, i32 1)
  %209 = load %struct.device*, %struct.device** %6, align 8
  %210 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %211 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dev_pm_set_wake_irq(%struct.device* %209, i32 %212)
  %214 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %215 = call i32 @st_rc_send_lirc_timeout(%struct.rc_dev* %214)
  %216 = load %struct.device*, %struct.device** %6, align 8
  %217 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %218 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %223 = call i32 @dev_info(%struct.device* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %222)
  %224 = load i32, i32* %4, align 4
  store i32 %224, i32* %2, align 4
  br label %240

225:                                              ; preds = %198
  %226 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %227 = call i32 @rc_unregister_device(%struct.rc_dev* %226)
  store %struct.rc_dev* null, %struct.rc_dev** %5, align 8
  br label %228

228:                                              ; preds = %225, %184
  %229 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %230 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @clk_disable_unprepare(i64 %231)
  br label %233

233:                                              ; preds = %228, %140, %107, %89, %73, %62, %56
  %234 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %235 = call i32 @rc_free_device(%struct.rc_dev* %234)
  %236 = load %struct.device*, %struct.device** %6, align 8
  %237 = load i32, i32* %4, align 4
  %238 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %236, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %4, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %233, %206, %32, %24
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.st_rc_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @reset_control_get_optional_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.st_rc_device*) #1

declare dso_local i32 @st_rc_hardware_init(%struct.st_rc_device*) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i64 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.st_rc_device*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_set_wake_irq(%struct.device*, i32) #1

declare dso_local i32 @st_rc_send_lirc_timeout(%struct.rc_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @rc_unregister_device(%struct.rc_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
