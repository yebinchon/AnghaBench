; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_can_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_can_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.mcp251x_platform_data = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.mcp251x_priv = type { i32, %struct.clk*, i8*, i8*, i32, %struct.spi_device*, %struct.clk*, %struct.clk*, %struct.net_device*, %struct.TYPE_5__ }
%struct.clk = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@TX_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcp251x_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@mcp251x_bittiming_const = common dso_local global i32 0, align 4
@mcp251x_do_set_mode = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xceiver\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@SPI_TRANSFER_BUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot initialize MCP%x. Wrong wiring?\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"MCP%x successfully initialized.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Probe failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp251x_can_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_can_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mcp251x_platform_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mcp251x_priv*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = call i8* @device_get_match_data(i32* %12)
  store i8* %13, i8** %4, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 2
  %16 = call %struct.mcp251x_platform_data* @dev_get_platdata(i32* %15)
  store %struct.mcp251x_platform_data* %16, %struct.mcp251x_platform_data** %5, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 2
  %19 = call %struct.clk* @devm_clk_get_optional(i32* %18, i32* null)
  store %struct.clk* %19, %struct.clk** %8, align 8
  %20 = load %struct.clk*, %struct.clk** %8, align 8
  %21 = call i64 @IS_ERR(%struct.clk* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.clk*, %struct.clk** %8, align 8
  %25 = call i32 @PTR_ERR(%struct.clk* %24)
  store i32 %25, i32* %2, align 4
  br label %279

26:                                               ; preds = %1
  %27 = load %struct.clk*, %struct.clk** %8, align 8
  %28 = call i32 @clk_get_rate(%struct.clk* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.mcp251x_platform_data*, %struct.mcp251x_platform_data** %5, align 8
  %33 = icmp ne %struct.mcp251x_platform_data* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.mcp251x_platform_data*, %struct.mcp251x_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.mcp251x_platform_data, %struct.mcp251x_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %31, %26
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 1000000
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 25000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %279

47:                                               ; preds = %41
  %48 = load i32, i32* @TX_ECHO_SKB_MAX, align 4
  %49 = call %struct.net_device* @alloc_candev(i32 96, i32 %48)
  store %struct.net_device* %49, %struct.net_device** %6, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %279

55:                                               ; preds = %47
  %56 = load %struct.clk*, %struct.clk** %8, align 8
  %57 = call i32 @clk_prepare_enable(%struct.clk* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %270

61:                                               ; preds = %55
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  store i32* @mcp251x_netdev_ops, i32** %63, align 8
  %64 = load i32, i32* @IFF_ECHO, align 4
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call %struct.mcp251x_priv* @netdev_priv(%struct.net_device* %69)
  store %struct.mcp251x_priv* %70, %struct.mcp251x_priv** %7, align 8
  %71 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %72 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32* @mcp251x_bittiming_const, i32** %73, align 8
  %74 = load i32, i32* @mcp251x_do_set_mode, align 4
  %75 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 %78, 2
  %80 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %81 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %85 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %90 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %61
  %95 = load i8*, i8** %4, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %98 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %106

99:                                               ; preds = %61
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %100)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %105 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %99, %94
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %109 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %108, i32 0, i32 8
  store %struct.net_device* %107, %struct.net_device** %109, align 8
  %110 = load %struct.clk*, %struct.clk** %8, align 8
  %111 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %112 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %111, i32 0, i32 7
  store %struct.clk* %110, %struct.clk** %112, align 8
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %115 = call i32 @spi_set_drvdata(%struct.spi_device* %113, %struct.mcp251x_priv* %114)
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 0
  store i32 8, i32* %117, align 4
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = call i64 @mcp251x_is_2510(%struct.spi_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %106
  %122 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %128

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %126
  %129 = phi i32 [ %124, %126 ], [ 5000000, %127 ]
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %143

132:                                              ; preds = %106
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %139

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %137
  %140 = phi i32 [ %135, %137 ], [ 10000000, %138 ]
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %128
  %144 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %145 = call i32 @spi_setup(%struct.spi_device* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %267

149:                                              ; preds = %143
  %150 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %151 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %150, i32 0, i32 2
  %152 = call i8* @devm_regulator_get_optional(i32* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %153 = bitcast i8* %152 to %struct.clk*
  %154 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %155 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %154, i32 0, i32 1
  store %struct.clk* %153, %struct.clk** %155, align 8
  %156 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %157 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %156, i32 0, i32 2
  %158 = call i8* @devm_regulator_get_optional(i32* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %159 = bitcast i8* %158 to %struct.clk*
  %160 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %161 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %160, i32 0, i32 6
  store %struct.clk* %159, %struct.clk** %161, align 8
  %162 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %163 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %162, i32 0, i32 1
  %164 = load %struct.clk*, %struct.clk** %163, align 8
  %165 = call i32 @PTR_ERR(%struct.clk* %164)
  %166 = load i32, i32* @EPROBE_DEFER, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %149
  %170 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %171 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %170, i32 0, i32 6
  %172 = load %struct.clk*, %struct.clk** %171, align 8
  %173 = call i32 @PTR_ERR(%struct.clk* %172)
  %174 = load i32, i32* @EPROBE_DEFER, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %169, %149
  %178 = load i32, i32* @EPROBE_DEFER, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %10, align 4
  br label %267

180:                                              ; preds = %169
  %181 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %182 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %181, i32 0, i32 1
  %183 = load %struct.clk*, %struct.clk** %182, align 8
  %184 = call i32 @mcp251x_power_enable(%struct.clk* %183, i32 1)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %267

188:                                              ; preds = %180
  %189 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %190 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %191 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %190, i32 0, i32 5
  store %struct.spi_device* %189, %struct.spi_device** %191, align 8
  %192 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %193 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %192, i32 0, i32 4
  %194 = call i32 @mutex_init(i32* %193)
  %195 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %196 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %195, i32 0, i32 2
  %197 = load i32, i32* @SPI_TRANSFER_BUF_LEN, align 4
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call i8* @devm_kzalloc(i32* %196, i32 %197, i32 %198)
  %200 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %201 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  %202 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %203 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %188
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %10, align 4
  br label %262

209:                                              ; preds = %188
  %210 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %211 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %210, i32 0, i32 2
  %212 = load i32, i32* @SPI_TRANSFER_BUF_LEN, align 4
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = call i8* @devm_kzalloc(i32* %211, i32 %212, i32 %213)
  %215 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %216 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %218 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %209
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %10, align 4
  br label %262

224:                                              ; preds = %209
  %225 = load %struct.net_device*, %struct.net_device** %6, align 8
  %226 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %227 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %226, i32 0, i32 2
  %228 = call i32 @SET_NETDEV_DEV(%struct.net_device* %225, i32* %227)
  %229 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %230 = call i32 @mcp251x_hw_probe(%struct.spi_device* %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %224
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @ENODEV, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %240 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %239, i32 0, i32 2
  %241 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %242 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @dev_err(i32* %240, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %238, %233
  br label %262

246:                                              ; preds = %224
  %247 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %248 = call i32 @mcp251x_hw_sleep(%struct.spi_device* %247)
  %249 = load %struct.net_device*, %struct.net_device** %6, align 8
  %250 = call i32 @register_candev(%struct.net_device* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %246
  br label %262

254:                                              ; preds = %246
  %255 = load %struct.net_device*, %struct.net_device** %6, align 8
  %256 = call i32 @devm_can_led_init(%struct.net_device* %255)
  %257 = load %struct.net_device*, %struct.net_device** %6, align 8
  %258 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %259 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @netdev_info(%struct.net_device* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %260)
  store i32 0, i32* %2, align 4
  br label %279

262:                                              ; preds = %253, %245, %221, %206
  %263 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %264 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %263, i32 0, i32 1
  %265 = load %struct.clk*, %struct.clk** %264, align 8
  %266 = call i32 @mcp251x_power_enable(%struct.clk* %265, i32 0)
  br label %267

267:                                              ; preds = %262, %187, %177, %148
  %268 = load %struct.clk*, %struct.clk** %8, align 8
  %269 = call i32 @clk_disable_unprepare(%struct.clk* %268)
  br label %270

270:                                              ; preds = %267, %60
  %271 = load %struct.net_device*, %struct.net_device** %6, align 8
  %272 = call i32 @free_candev(%struct.net_device* %271)
  %273 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %274 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %273, i32 0, i32 2
  %275 = load i32, i32* %10, align 4
  %276 = sub nsw i32 0, %275
  %277 = call i32 @dev_err(i32* %274, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %10, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %270, %254, %52, %44, %23
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i8* @device_get_match_data(i32*) #1

declare dso_local %struct.mcp251x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.clk* @devm_clk_get_optional(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local %struct.mcp251x_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.mcp251x_priv*) #1

declare dso_local i64 @mcp251x_is_2510(%struct.spi_device*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i8* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @mcp251x_power_enable(%struct.clk*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @mcp251x_hw_probe(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mcp251x_hw_sleep(%struct.spi_device*) #1

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
