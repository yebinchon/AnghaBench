; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fza_private = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@FZA_EVENT_CMD_DONE = common dso_local global i32 0, align 4
@FZA_EVENT_TX_DONE = common dso_local global i32 0, align 4
@FZA_EVENT_RX_POLL = common dso_local global i32 0, align 4
@FZA_EVENT_SMT_TX_POLL = common dso_local global i32 0, align 4
@FZA_EVENT_FLUSH_TX = common dso_local global i32 0, align 4
@FZA_EVENT_LINK_ST_CHG = common dso_local global i32 0, align 4
@FZA_LINK_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s: link available\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: link unavailable\0A\00", align 1
@FZA_EVENT_UNS_POLL = common dso_local global i32 0, align 4
@FZA_EVENT_STATE_CHG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: state change: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: OK\0A\00", align 1
@FZA_RING_CMD_INIT = common dso_local global i32 0, align 4
@FZA_RING_CMD_PARAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: queue woken\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: queue stopped\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: halted, reason: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: resetting the board...\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: undefined state: %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fza_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fza_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.fza_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.fza_private* @netdev_priv(%struct.net_device* %14)
  store %struct.fza_private* %15, %struct.fza_private** %7, align 8
  %16 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %17 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %16, i32 0, i32 17
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @readw_o(i32* %19)
  %21 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %22 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %293

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %32 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %31, i32 0, i32 17
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @writew_u(i32 %30, i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @FZA_EVENT_CMD_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %29
  %41 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %42 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %41, i32 0, i32 26
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %46 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %45, i32 0, i32 5
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %49 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %51 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %50, i32 0, i32 25
  %52 = call i32 @wake_up(i32* %51)
  %53 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %54 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %53, i32 0, i32 5
  %55 = call i32 @spin_unlock(i32* %54)
  br label %56

56:                                               ; preds = %40, %29
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @FZA_EVENT_TX_DONE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %63 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %62, i32 0, i32 24
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i32 @fza_tx(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %61, %56
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @FZA_EVENT_RX_POLL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %75 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %74, i32 0, i32 23
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = call i32 @fza_rx(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @FZA_EVENT_SMT_TX_POLL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %87 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %86, i32 0, i32 22
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = call i32 @fza_tx_smt(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @FZA_EVENT_FLUSH_TX, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %99 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %98, i32 0, i32 21
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = call i32 @fza_tx_flush(%struct.net_device* %102)
  br label %104

104:                                              ; preds = %97, %92
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @FZA_EVENT_LINK_ST_CHG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %111 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %115 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %114, i32 0, i32 17
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @readw_u(i32* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @FZA_STATUS_GET_LINK(i32 %119)
  %121 = load i64, i64* @FZA_LINK_ON, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %109
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = call i32 @netif_carrier_on(%struct.net_device* %124)
  %126 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %127 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %128)
  br label %137

130:                                              ; preds = %109
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @netif_carrier_off(%struct.net_device* %131)
  %133 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %134 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %104
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @FZA_EVENT_UNS_POLL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %145 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %144, i32 0, i32 19
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = call i32 @fza_uns(%struct.net_device* %148)
  br label %150

150:                                              ; preds = %143, %138
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @FZA_EVENT_STATE_CHG, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %291

155:                                              ; preds = %150
  %156 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %157 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %156, i32 0, i32 18
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %161 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %160, i32 0, i32 17
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = call i32 @readw_u(i32* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @FZA_STATUS_GET_STATE(i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %168 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* %11, align 4
  switch i32 %172, label %273 [
    i32 130, label %173
    i32 128, label %174
    i32 132, label %208
    i32 129, label %221
    i32 131, label %221
    i32 133, label %235
  ]

173:                                              ; preds = %155
  br label %279

174:                                              ; preds = %155
  %175 = load %struct.net_device*, %struct.net_device** %6, align 8
  %176 = call i32 @netif_carrier_off(%struct.net_device* %175)
  %177 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %178 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %177, i32 0, i32 8
  %179 = call i32 @del_timer_sync(%struct.TYPE_5__* %178)
  %180 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %181 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %180, i32 0, i32 16
  store i32 0, i32* %181, align 8
  %182 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %183 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %182, i32 0, i32 15
  store i32 0, i32* %183, align 4
  %184 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %185 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %184, i32 0, i32 14
  store i32 0, i32* %185, align 8
  %186 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %187 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %186, i32 0, i32 13
  store i32 0, i32* %187, align 4
  %188 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %189 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %188, i32 0, i32 12
  store i32 0, i32* %189, align 8
  %190 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %191 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %190, i32 0, i32 11
  store i32 0, i32* %191, align 4
  %192 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %193 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %192, i32 0, i32 10
  store i32 0, i32* %193, align 8
  %194 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %195 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %174
  %200 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %201 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = load %struct.net_device*, %struct.net_device** %6, align 8
  %205 = load i32, i32* @FZA_RING_CMD_INIT, align 4
  %206 = call i32 @fza_cmd_send(%struct.net_device* %204, i32 %205)
  br label %207

207:                                              ; preds = %199, %174
  br label %279

208:                                              ; preds = %155
  %209 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %210 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load %struct.net_device*, %struct.net_device** %6, align 8
  %216 = call i32 @fza_set_rx_mode(%struct.net_device* %215)
  %217 = load %struct.net_device*, %struct.net_device** %6, align 8
  %218 = load i32, i32* @FZA_RING_CMD_PARAM, align 4
  %219 = call i32 @fza_cmd_send(%struct.net_device* %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %208
  br label %279

221:                                              ; preds = %155, %155
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %224 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %226 = call i32 @fza_rx_init(%struct.fza_private* %225)
  %227 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %228 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %227, i32 0, i32 3
  store i32 1, i32* %228, align 4
  %229 = load %struct.net_device*, %struct.net_device** %6, align 8
  %230 = call i32 @netif_wake_queue(%struct.net_device* %229)
  %231 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %232 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %233)
  br label %279

235:                                              ; preds = %155
  %236 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %237 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %236, i32 0, i32 3
  store i32 0, i32* %237, align 4
  %238 = load %struct.net_device*, %struct.net_device** %6, align 8
  %239 = call i32 @netif_stop_queue(%struct.net_device* %238)
  %240 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %241 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  %244 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %245 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %244, i32 0, i32 8
  %246 = call i32 @del_timer_sync(%struct.TYPE_5__* %245)
  %247 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %248 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @FZA_STATUS_GET_HALT(i32 %250)
  %252 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %249, i32 %251)
  %253 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %254 = call i32 @fza_regs_dump(%struct.fza_private* %253)
  %255 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %256 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %257)
  %259 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %260 = call i32 @fza_do_reset(%struct.fza_private* %259)
  %261 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %262 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %261, i32 0, i32 9
  store i32 0, i32* %262, align 4
  %263 = load i32, i32* @jiffies, align 4
  %264 = load i32, i32* @HZ, align 4
  %265 = mul nsw i32 45, %264
  %266 = add nsw i32 %263, %265
  %267 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %268 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %267, i32 0, i32 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  %270 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %271 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %270, i32 0, i32 8
  %272 = call i32 @add_timer(%struct.TYPE_5__* %271)
  br label %279

273:                                              ; preds = %155
  %274 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %275 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %273, %235, %221, %220, %207, %173
  %280 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %281 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %280, i32 0, i32 5
  %282 = call i32 @spin_lock(i32* %281)
  %283 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %284 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %283, i32 0, i32 4
  store i32 1, i32* %284, align 8
  %285 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %286 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %285, i32 0, i32 6
  %287 = call i32 @wake_up(i32* %286)
  %288 = load %struct.fza_private*, %struct.fza_private** %7, align 8
  %289 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %288, i32 0, i32 5
  %290 = call i32 @spin_unlock(i32* %289)
  br label %291

291:                                              ; preds = %279, %150
  %292 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %291, %27
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readw_o(i32*) #1

declare dso_local i32 @writew_u(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fza_tx(%struct.net_device*) #1

declare dso_local i32 @fza_rx(%struct.net_device*) #1

declare dso_local i32 @fza_tx_smt(%struct.net_device*) #1

declare dso_local i32 @fza_tx_flush(%struct.net_device*) #1

declare dso_local i32 @readw_u(i32*) #1

declare dso_local i64 @FZA_STATUS_GET_LINK(i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @fza_uns(%struct.net_device*) #1

declare dso_local i32 @FZA_STATUS_GET_STATE(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @fza_cmd_send(%struct.net_device*, i32) #1

declare dso_local i32 @fza_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @fza_rx_init(%struct.fza_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @FZA_STATUS_GET_HALT(i32) #1

declare dso_local i32 @fza_regs_dump(%struct.fza_private*) #1

declare dso_local i32 @fza_do_reset(%struct.fza_private*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
