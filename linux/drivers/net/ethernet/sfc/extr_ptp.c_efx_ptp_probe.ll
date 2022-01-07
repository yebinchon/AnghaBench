; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.efx_ptp_data = type { i32, i32, i32, i8*, i64, i8*, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, %struct.efx_channel*, %struct.efx_nic* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.efx_channel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_REV_HUNT_A0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"sfc_ptp\00", align 1
@efx_ptp_xmit_skb_queue = common dso_local global i32 0, align 4
@SYNC_EVENTS_QUIESCENT = common dso_local global i32 0, align 4
@efx_ptp_xmit_skb_mc = common dso_local global i32 0, align 4
@efx_ptp_worker = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@MAX_RECEIVE_EVENTS = common dso_local global i32 0, align 4
@MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY = common dso_local global i32 0, align 4
@efx_phc_clock_info = common dso_local global i32 0, align 4
@efx_ptp_pps_worker = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sfc_pps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ptp_probe(%struct.efx_nic* %0, %struct.efx_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_channel*, align 8
  %6 = alloca %struct.efx_ptp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.efx_channel* %1, %struct.efx_channel** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.efx_ptp_data* @kzalloc(i32 120, i32 %9)
  store %struct.efx_ptp_data* %10, %struct.efx_ptp_data** %6, align 8
  %11 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  store %struct.efx_ptp_data* %11, %struct.efx_ptp_data** %13, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %17 = icmp ne %struct.efx_ptp_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %216

21:                                               ; preds = %2
  %22 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %23 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %24 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %23, i32 0, i32 18
  store %struct.efx_nic* %22, %struct.efx_nic** %24, align 8
  %25 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %26 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %27 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %26, i32 0, i32 17
  store %struct.efx_channel* %25, %struct.efx_channel** %27, align 8
  %28 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %29 = call i64 @efx_nic_rev(%struct.efx_nic* %28)
  %30 = load i64, i64* @EFX_REV_HUNT_A0, align 8
  %31 = icmp sge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %34 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %36 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %37 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %36, i32 0, i32 2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %35, i32* %37, i32 4, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %208

43:                                               ; preds = %21
  %44 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %45 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %44, i32 0, i32 16
  %46 = call i32 @skb_queue_head_init(i32* %45)
  %47 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %48 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %47, i32 0, i32 15
  %49 = call i32 @skb_queue_head_init(i32* %48)
  %50 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %52 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %54 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %203

60:                                               ; preds = %43
  %61 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %62 = call i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* @efx_ptp_xmit_skb_queue, align 4
  %66 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %67 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %66, i32 0, i32 14
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @SYNC_EVENTS_QUIESCENT, align 4
  %69 = load %struct.efx_channel*, %struct.efx_channel** %5, align 8
  %70 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @efx_ptp_xmit_skb_mc, align 4
  %73 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %74 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %73, i32 0, i32 14
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %77 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %76, i32 0, i32 13
  %78 = load i32, i32* @efx_ptp_worker, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %81 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %80, i32 0, i32 12
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %84 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %85 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %88 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %89 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %92 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %91, i32 0, i32 11
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %95 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %94, i32 0, i32 8
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %98 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %97, i32 0, i32 10
  %99 = call i32 @spin_lock_init(i32* %98)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %115, %75
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @MAX_RECEIVE_EVENTS, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %106 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %105, i32 0, i32 9
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %113 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %112, i32 0, i32 8
  %114 = call i32 @list_add(i32* %111, i32* %113)
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %100

118:                                              ; preds = %100
  %119 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %120 = call i32 @efx_ptp_get_attributes(%struct.efx_nic* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %196

124:                                              ; preds = %118
  %125 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %126 = call i32 @efx_ptp_get_timestamp_corrections(%struct.efx_nic* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %196

130:                                              ; preds = %124
  %131 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %132 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %186

140:                                              ; preds = %130
  %141 = load i32, i32* @efx_phc_clock_info, align 4
  %142 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %143 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %145 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %144, i32 0, i32 7
  %146 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %147 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = call i64 @ptp_clock_register(i32* %145, i32* %149)
  %151 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %152 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  %153 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %154 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @IS_ERR(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %140
  %159 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %160 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @PTR_ERR(i64 %161)
  store i32 %162, i32* %7, align 4
  br label %196

163:                                              ; preds = %140
  %164 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %165 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %163
  %169 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %170 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %169, i32 0, i32 6
  %171 = load i32, i32* @efx_ptp_pps_worker, align 4
  %172 = call i32 @INIT_WORK(i32* %170, i32 %171)
  %173 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %174 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %175 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  %176 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %177 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %176, i32 0, i32 5
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %168
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  br label %189

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %163
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185, %130
  %187 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %188 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  store i32 0, i32* %3, align 4
  br label %216

189:                                              ; preds = %180
  %190 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %191 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %190, i32 0, i32 0
  %192 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %191, align 8
  %193 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @ptp_clock_unregister(i64 %194)
  br label %196

196:                                              ; preds = %189, %158, %129, %123
  %197 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %198 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %197, i32 0, i32 0
  %199 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %198, align 8
  %200 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @destroy_workqueue(i8* %201)
  br label %203

203:                                              ; preds = %196, %57
  %204 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %205 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %206 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %205, i32 0, i32 2
  %207 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %204, i32* %206)
  br label %208

208:                                              ; preds = %203, %42
  %209 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %210 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %209, i32 0, i32 0
  %211 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %210, align 8
  %212 = call i32 @kfree(%struct.efx_ptp_data* %211)
  %213 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %214 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %213, i32 0, i32 0
  store %struct.efx_ptp_data* null, %struct.efx_ptp_data** %214, align 8
  %215 = load i32, i32* %7, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %208, %186, %18
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.efx_ptp_data* @kzalloc(i32, i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @efx_ptp_get_attributes(%struct.efx_nic*) #1

declare dso_local i32 @efx_ptp_get_timestamp_corrections(%struct.efx_nic*) #1

declare dso_local i64 @ptp_clock_register(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @ptp_clock_unregister(i64) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @kfree(%struct.efx_ptp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
