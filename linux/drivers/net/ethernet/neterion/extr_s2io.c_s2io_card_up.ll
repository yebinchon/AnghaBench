; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_card_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_card_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, %struct.config_param, i32, i32, i64, i64, i64, i32, %struct.mac_info, %struct.net_device* }
%struct.config_param = type { i32, i64, i64 }
%struct.mac_info = type { %struct.ring_info* }
%struct.ring_info = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32 }

@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: H/W initialization failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Out of memory in Open\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Buf in ring:%d is %d:\0A\00", align 1
@MSI_X = common dso_local global i64 0, align 8
@lro_max_pkts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Starting NIC failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@s2io_alarm_handle = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@__S2IO_STATE_CARD_UP = common dso_local global i32 0, align 4
@ENA_ALL_INTRS = common dso_local global i32 0, align 4
@ENABLE_INTRS = common dso_local global i32 0, align 4
@INTA = common dso_local global i64 0, align 8
@TX_TRAFFIC_INTR = common dso_local global i32 0, align 4
@TX_PIC_INTR = common dso_local global i32 0, align 4
@RX_TRAFFIC_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @s2io_card_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_card_up(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_param*, align 8
  %7 = alloca %struct.mac_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ring_info*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 9
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %15 = call i32 @init_nic(%struct.s2io_nic* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load i32, i32* @ERR_DBG, align 4
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %30 = call i32 @s2io_reset(%struct.s2io_nic* %29)
  br label %31

31:                                               ; preds = %28, %18
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %260

33:                                               ; preds = %1
  %34 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %35 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %34, i32 0, i32 1
  store %struct.config_param* %35, %struct.config_param** %6, align 8
  %36 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %37 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %36, i32 0, i32 8
  store %struct.mac_info* %37, %struct.mac_info** %7, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %91, %33
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.config_param*, %struct.config_param** %6, align 8
  %41 = getelementptr inbounds %struct.config_param, %struct.config_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %38
  %45 = load %struct.mac_info*, %struct.mac_info** %7, align 8
  %46 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %45, i32 0, i32 0
  %47 = load %struct.ring_info*, %struct.ring_info** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %47, i64 %49
  store %struct.ring_info* %50, %struct.ring_info** %10, align 8
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %55 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NETIF_F_LRO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %66 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %68 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %69 = call i32 @fill_rx_buffers(%struct.s2io_nic* %67, %struct.ring_info* %68, i32 1)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %44
  %73 = load i32, i32* @ERR_DBG, align 4
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %79 = call i32 @s2io_reset(%struct.s2io_nic* %78)
  %80 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %81 = call i32 @free_rx_buffers(%struct.s2io_nic* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %260

84:                                               ; preds = %44
  %85 = load i32, i32* @INFO_DBG, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %88 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %38

94:                                               ; preds = %38
  %95 = load %struct.config_param*, %struct.config_param** %6, align 8
  %96 = getelementptr inbounds %struct.config_param, %struct.config_param* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load %struct.config_param*, %struct.config_param** %6, align 8
  %101 = getelementptr inbounds %struct.config_param, %struct.config_param* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MSI_X, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %109 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.config_param, %struct.config_param* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %115 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %115, i32 0, i32 0
  %117 = load %struct.ring_info*, %struct.ring_info** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %117, i64 %119
  %121 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %120, i32 0, i32 2
  %122 = call i32 @napi_enable(i32* %121)
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %106

126:                                              ; preds = %106
  br label %131

127:                                              ; preds = %99
  %128 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %129 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %128, i32 0, i32 7
  %130 = call i32 @napi_enable(i32* %129)
  br label %131

131:                                              ; preds = %127, %126
  br label %132

132:                                              ; preds = %131, %94
  %133 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %134 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %139 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %138, i32 0, i32 6
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %142 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %147 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %149 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.net_device*, %struct.net_device** %8, align 8
  %152 = call i32 @s2io_set_multicast(%struct.net_device* %151)
  %153 = load %struct.net_device*, %struct.net_device** %8, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NETIF_F_LRO, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %150
  %160 = load %struct.net_device*, %struct.net_device** %8, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sdiv i32 65535, %162
  %164 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %165 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @lro_max_pkts, align 4
  %167 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %168 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %159
  %172 = load i32, i32* @lro_max_pkts, align 4
  %173 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %174 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %159
  br label %176

176:                                              ; preds = %175, %150
  %177 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %178 = call i64 @start_nic(%struct.s2io_nic* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = load i32, i32* @ERR_DBG, align 4
  %182 = load %struct.net_device*, %struct.net_device** %8, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %187 = call i32 @s2io_reset(%struct.s2io_nic* %186)
  %188 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %189 = call i32 @free_rx_buffers(%struct.s2io_nic* %188)
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %260

192:                                              ; preds = %176
  %193 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %194 = call i64 @s2io_add_isr(%struct.s2io_nic* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %192
  %197 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %198 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.config_param, %struct.config_param* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @MSI_X, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %205 = call i32 @s2io_rem_isr(%struct.s2io_nic* %204)
  br label %206

206:                                              ; preds = %203, %196
  %207 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %208 = call i32 @s2io_reset(%struct.s2io_nic* %207)
  %209 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %210 = call i32 @free_rx_buffers(%struct.s2io_nic* %209)
  %211 = load i32, i32* @ENODEV, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %2, align 4
  br label %260

213:                                              ; preds = %192
  %214 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %215 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %214, i32 0, i32 3
  %216 = load i32, i32* @s2io_alarm_handle, align 4
  %217 = call i32 @timer_setup(i32* %215, i32 %216, i32 0)
  %218 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %219 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %218, i32 0, i32 3
  %220 = load i64, i64* @jiffies, align 8
  %221 = load i32, i32* @HZ, align 4
  %222 = sdiv i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %220, %223
  %225 = call i32 @mod_timer(i32* %219, i64 %224)
  %226 = load i32, i32* @__S2IO_STATE_CARD_UP, align 4
  %227 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %228 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %227, i32 0, i32 2
  %229 = call i32 @set_bit(i32 %226, i32* %228)
  %230 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %231 = load i32, i32* @ENA_ALL_INTRS, align 4
  %232 = load i32, i32* @ENABLE_INTRS, align 4
  %233 = call i32 @en_dis_err_alarms(%struct.s2io_nic* %230, i32 %231, i32 %232)
  %234 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %235 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.config_param, %struct.config_param* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @INTA, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %213
  %241 = load i32, i32* @TX_TRAFFIC_INTR, align 4
  %242 = load i32, i32* @TX_PIC_INTR, align 4
  %243 = or i32 %241, %242
  store i32 %243, i32* %9, align 4
  %244 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @ENABLE_INTRS, align 4
  %247 = call i32 @en_dis_able_nic_intrs(%struct.s2io_nic* %244, i32 %245, i32 %246)
  br label %259

248:                                              ; preds = %213
  %249 = load i32, i32* @TX_TRAFFIC_INTR, align 4
  %250 = load i32, i32* @RX_TRAFFIC_INTR, align 4
  %251 = or i32 %249, %250
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* @TX_PIC_INTR, align 4
  %253 = load i32, i32* %9, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %9, align 4
  %255 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @ENABLE_INTRS, align 4
  %258 = call i32 @en_dis_able_nic_intrs(%struct.s2io_nic* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %248, %240
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %259, %206, %180, %72, %31
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @init_nic(%struct.s2io_nic*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, ...) #1

declare dso_local i32 @s2io_reset(%struct.s2io_nic*) #1

declare dso_local i32 @fill_rx_buffers(%struct.s2io_nic*, %struct.ring_info*, i32) #1

declare dso_local i32 @free_rx_buffers(%struct.s2io_nic*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @s2io_set_multicast(%struct.net_device*) #1

declare dso_local i64 @start_nic(%struct.s2io_nic*) #1

declare dso_local i64 @s2io_add_isr(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_rem_isr(%struct.s2io_nic*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @en_dis_err_alarms(%struct.s2io_nic*, i32, i32) #1

declare dso_local i32 @en_dis_able_nic_intrs(%struct.s2io_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
