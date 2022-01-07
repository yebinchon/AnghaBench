; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_dnld_sleep_confirm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_dnld_sleep_confirm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, %struct.sk_buff*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.mwifiex_adapter.0*, i32, %struct.sk_buff*, i32*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.mwifiex_private = type { i32, i32 }
%struct.mwifiex_opt_sleep_confirm = type { i32, i32, i32, i32, i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\0A\00", align 1
@CMD_D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SLEEP_CFM buffer: \00", align 1
@MWIFIEX_USB = common dso_local global i64 0, align 8
@MWIFIEX_TYPE_LEN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"SLEEP_CFM: dev_alloc_skb failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_USB_TYPE_CMD = common dso_local global i32 0, align 4
@MWIFIEX_USB_EP_CMD_EVENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MWIFIEX_TYPE_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"SLEEP_CFM: failed\0A\00", align 1
@PS_STATE_SLEEP = common dso_local global i32 0, align 4
@PS_STATE_SLEEP_CFM = common dso_local global i32 0, align 4
@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_dnld_sleep_confirm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_dnld_sleep_confirm_cmd(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_opt_sleep_confirm*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 7
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mwifiex_opt_sleep_confirm*
  store %struct.mwifiex_opt_sleep_confirm* %13, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %15 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %16 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %14, i32 %15)
  store %struct.mwifiex_private* %16, %struct.mwifiex_private** %5, align 8
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HostCmd_SET_SEQ_NO_BSS_INFO(i32 %23, i32 %26, i32 %29)
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %33 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %35 = load i32, i32* @CMD, align 4
  %36 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %37 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %41 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %45 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %49 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %34, i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %47, i32 %51)
  %53 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %54 = load i32, i32* @CMD_D, align 4
  %55 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %56 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %57 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = call i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter* %53, i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.mwifiex_opt_sleep_confirm* %55, i32 %59)
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MWIFIEX_USB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %1
  %67 = load i64, i64* @MWIFIEX_TYPE_LEN, align 8
  %68 = add i64 20, %67
  %69 = call %struct.sk_buff* @dev_alloc_skb(i64 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %7, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %74 = load i32, i32* @ERROR, align 4
  %75 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %73, i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %195

78:                                               ; preds = %66
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = load i64, i64* @MWIFIEX_TYPE_LEN, align 8
  %81 = add i64 20, %80
  %82 = call i32 @skb_put(%struct.sk_buff* %79, i64 %81)
  %83 = load i32, i32* @MWIFIEX_USB_TYPE_CMD, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @put_unaligned_le32(i32 %83, i64 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MWIFIEX_TYPE_LEN, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %93, i32 0, i32 7
  %95 = load %struct.sk_buff*, %struct.sk_buff** %94, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @memcpy(i64 %92, i64 %97, i32 20)
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.mwifiex_adapter.0*, i32, %struct.sk_buff*, i32*)*, i32 (%struct.mwifiex_adapter.0*, i32, %struct.sk_buff*, i32*)** %101, align 8
  %103 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %104 = bitcast %struct.mwifiex_adapter* %103 to %struct.mwifiex_adapter.0*
  %105 = load i32, i32* @MWIFIEX_USB_EP_CMD_EVENT, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call i32 %102(%struct.mwifiex_adapter.0* %104, i32 %105, %struct.sk_buff* %106, i32* null)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %78
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %112, %78
  br label %142

116:                                              ; preds = %1
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %117, i32 0, i32 7
  %119 = load %struct.sk_buff*, %struct.sk_buff** %118, align 8
  %120 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @skb_push(%struct.sk_buff* %119, i32 %122)
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32 (%struct.mwifiex_adapter.0*, i32, %struct.sk_buff*, i32*)*, i32 (%struct.mwifiex_adapter.0*, i32, %struct.sk_buff*, i32*)** %126, align 8
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %129 = bitcast %struct.mwifiex_adapter* %128 to %struct.mwifiex_adapter.0*
  %130 = load i32, i32* @MWIFIEX_TYPE_CMD, align 4
  %131 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %131, i32 0, i32 7
  %133 = load %struct.sk_buff*, %struct.sk_buff** %132, align 8
  %134 = call i32 %127(%struct.mwifiex_adapter.0* %129, i32 %130, %struct.sk_buff* %133, i32* null)
  store i32 %134, i32* %4, align 4
  %135 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %135, i32 0, i32 7
  %137 = load %struct.sk_buff*, %struct.sk_buff** %136, align 8
  %138 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @skb_pull(%struct.sk_buff* %137, i32 %140)
  br label %142

142:                                              ; preds = %116, %115
  %143 = load i32, i32* %4, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %147 = load i32, i32* @ERROR, align 4
  %148 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %146, i32 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  store i32 -1, i32* %2, align 4
  br label %195

154:                                              ; preds = %142
  %155 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %156 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le16_to_cpu(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* @PS_STATE_SLEEP, align 4
  %162 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %163 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  br label %168

164:                                              ; preds = %154
  %165 = load i32, i32* @PS_STATE_SLEEP_CFM, align 4
  %166 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %160
  %169 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %6, align 8
  %170 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le16_to_cpu(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %193, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %176 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %177 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %176, i32 0, i32 3
  %178 = call i64 @test_bit(i32 %175, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %174
  %181 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %180
  %187 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %187, i32 0, i32 1
  store i32 1, i32* %188, align 8
  %189 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %190 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %191 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %189, i32 %190)
  %192 = call i32 @mwifiex_hs_activated_event(%struct.mwifiex_private* %191, i32 1)
  br label %193

193:                                              ; preds = %186, %180, %174, %168
  %194 = load i32, i32* %4, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %145, %72
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @HostCmd_SET_SEQ_NO_BSS_INFO(i32, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter*, i32, i8*, %struct.mwifiex_opt_sleep_confirm*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @put_unaligned_le32(i32, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_hs_activated_event(%struct.mwifiex_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
