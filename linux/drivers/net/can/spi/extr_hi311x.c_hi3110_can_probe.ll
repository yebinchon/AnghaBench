; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_can_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_can_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.of_device_id = type { i64 }
%struct.net_device = type { i32, i32* }
%struct.hi3110_priv = type { i32, %struct.clk*, i8*, i8*, i32, %struct.spi_device*, %struct.clk*, %struct.clk*, %struct.net_device*, %struct.TYPE_5__ }
%struct.clk = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@hi3110_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no CAN clock source defined\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@HI3110_TX_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hi3110_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@hi3110_bittiming_const = common dso_local global i32 0, align 4
@hi3110_do_set_mode = common dso_local global i32 0, align 4
@hi3110_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"xceiver\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@HI3110_RX_BUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot initialize %x. Wrong wiring?\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%x successfully initialized.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Probe failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hi3110_can_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_can_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hi3110_priv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load i32, i32* @hi3110_of_match, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, i32* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = call %struct.clk* @devm_clk_get(i32* %15, i32* null)
  store %struct.clk* %16, %struct.clk** %7, align 8
  %17 = load %struct.clk*, %struct.clk** %7, align 8
  %18 = call i64 @IS_ERR(%struct.clk* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.clk*, %struct.clk** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.clk* %24)
  store i32 %25, i32* %2, align 4
  br label %258

26:                                               ; preds = %1
  %27 = load %struct.clk*, %struct.clk** %7, align 8
  %28 = call i32 @clk_get_rate(%struct.clk* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 40000000
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %258

34:                                               ; preds = %26
  %35 = load i32, i32* @HI3110_TX_ECHO_SKB_MAX, align 4
  %36 = call %struct.net_device* @alloc_candev(i32 96, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %5, align 8
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %258

42:                                               ; preds = %34
  %43 = load %struct.clk*, %struct.clk** %7, align 8
  %44 = call i64 @IS_ERR(%struct.clk* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.clk*, %struct.clk** %7, align 8
  %48 = call i32 @clk_prepare_enable(%struct.clk* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %249

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  store i32* @hi3110_netdev_ops, i32** %55, align 8
  %56 = load i32, i32* @IFF_ECHO, align 4
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call %struct.hi3110_priv* @netdev_priv(%struct.net_device* %61)
  store %struct.hi3110_priv* %62, %struct.hi3110_priv** %6, align 8
  %63 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %64 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i32* @hi3110_bittiming_const, i32** %65, align 8
  %66 = load i32, i32* @hi3110_do_set_mode, align 4
  %67 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %68 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @hi3110_get_berr_counter, align 4
  %71 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %72 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, 2
  %76 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %77 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %81 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %88 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %91 = icmp ne %struct.of_device_id* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %53
  %93 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %94 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %98 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %106

99:                                               ; preds = %53
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %100)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %105 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %109 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %108, i32 0, i32 8
  store %struct.net_device* %107, %struct.net_device** %109, align 8
  %110 = load %struct.clk*, %struct.clk** %7, align 8
  %111 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %112 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %111, i32 0, i32 7
  store %struct.clk* %110, %struct.clk** %112, align 8
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %115 = call i32 @spi_set_drvdata(%struct.spi_device* %113, %struct.hi3110_priv* %114)
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 0
  store i32 8, i32* %117, align 4
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = call i32 @spi_setup(%struct.spi_device* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %106
  br label %241

123:                                              ; preds = %106
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 1
  %126 = call i8* @devm_regulator_get_optional(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %127 = bitcast i8* %126 to %struct.clk*
  %128 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %129 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %128, i32 0, i32 1
  store %struct.clk* %127, %struct.clk** %129, align 8
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 1
  %132 = call i8* @devm_regulator_get_optional(i32* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %133 = bitcast i8* %132 to %struct.clk*
  %134 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %135 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %134, i32 0, i32 6
  store %struct.clk* %133, %struct.clk** %135, align 8
  %136 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %137 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %136, i32 0, i32 1
  %138 = load %struct.clk*, %struct.clk** %137, align 8
  %139 = call i32 @PTR_ERR(%struct.clk* %138)
  %140 = load i32, i32* @EPROBE_DEFER, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %123
  %144 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %145 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %144, i32 0, i32 6
  %146 = load %struct.clk*, %struct.clk** %145, align 8
  %147 = call i32 @PTR_ERR(%struct.clk* %146)
  %148 = load i32, i32* @EPROBE_DEFER, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %143, %123
  %152 = load i32, i32* @EPROBE_DEFER, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %9, align 4
  br label %241

154:                                              ; preds = %143
  %155 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %156 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %155, i32 0, i32 1
  %157 = load %struct.clk*, %struct.clk** %156, align 8
  %158 = call i32 @hi3110_power_enable(%struct.clk* %157, i32 1)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %241

162:                                              ; preds = %154
  %163 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %164 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %165 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %164, i32 0, i32 5
  store %struct.spi_device* %163, %struct.spi_device** %165, align 8
  %166 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %167 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %166, i32 0, i32 4
  %168 = call i32 @mutex_init(i32* %167)
  %169 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %170 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %169, i32 0, i32 1
  %171 = load i32, i32* @HI3110_RX_BUF_LEN, align 4
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @devm_kzalloc(i32* %170, i32 %171, i32 %172)
  %174 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %175 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %177 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %162
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %9, align 4
  br label %236

183:                                              ; preds = %162
  %184 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %185 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %184, i32 0, i32 1
  %186 = load i32, i32* @HI3110_RX_BUF_LEN, align 4
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call i8* @devm_kzalloc(i32* %185, i32 %186, i32 %187)
  %189 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %190 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %192 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %183
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %9, align 4
  br label %236

198:                                              ; preds = %183
  %199 = load %struct.net_device*, %struct.net_device** %5, align 8
  %200 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %201 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %200, i32 0, i32 1
  %202 = call i32 @SET_NETDEV_DEV(%struct.net_device* %199, i32* %201)
  %203 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %204 = call i32 @hi3110_hw_probe(%struct.spi_device* %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %198
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %214 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %213, i32 0, i32 1
  %215 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %216 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32*, i8*, ...) @dev_err(i32* %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %212, %207
  br label %236

220:                                              ; preds = %198
  %221 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %222 = call i32 @hi3110_hw_sleep(%struct.spi_device* %221)
  %223 = load %struct.net_device*, %struct.net_device** %5, align 8
  %224 = call i32 @register_candev(%struct.net_device* %223)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %236

228:                                              ; preds = %220
  %229 = load %struct.net_device*, %struct.net_device** %5, align 8
  %230 = call i32 @devm_can_led_init(%struct.net_device* %229)
  %231 = load %struct.net_device*, %struct.net_device** %5, align 8
  %232 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %233 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @netdev_info(%struct.net_device* %231, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  store i32 0, i32* %2, align 4
  br label %258

236:                                              ; preds = %227, %219, %195, %180
  %237 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %238 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %237, i32 0, i32 1
  %239 = load %struct.clk*, %struct.clk** %238, align 8
  %240 = call i32 @hi3110_power_enable(%struct.clk* %239, i32 0)
  br label %241

241:                                              ; preds = %236, %161, %151, %122
  %242 = load %struct.clk*, %struct.clk** %7, align 8
  %243 = call i64 @IS_ERR(%struct.clk* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load %struct.clk*, %struct.clk** %7, align 8
  %247 = call i32 @clk_disable_unprepare(%struct.clk* %246)
  br label %248

248:                                              ; preds = %245, %241
  br label %249

249:                                              ; preds = %248, %51
  %250 = load %struct.net_device*, %struct.net_device** %5, align 8
  %251 = call i32 @free_candev(%struct.net_device* %250)
  %252 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %253 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %252, i32 0, i32 1
  %254 = load i32, i32* %9, align 4
  %255 = sub nsw i32 0, %254
  %256 = call i32 (i32*, i8*, ...) @dev_err(i32* %253, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %9, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %249, %228, %39, %31, %20
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local %struct.hi3110_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.hi3110_priv*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i8* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @hi3110_power_enable(%struct.clk*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @hi3110_hw_probe(%struct.spi_device*) #1

declare dso_local i32 @hi3110_hw_sleep(%struct.spi_device*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @devm_can_led_init(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
