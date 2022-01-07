; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_gen_tdls_peer_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_gen_tdls_peer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tdls_peer_update_cmd_arg = type { i32, i32, i32 }
%struct.wmi_tdls_peer_capab_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.wmi_channel_arg = type { i32 }
%struct.wmi_10_4_tdls_peer_update_cmd = type { %struct.wmi_tdls_peer_capabilities, i8*, %struct.TYPE_2__, i8* }
%struct.wmi_tdls_peer_capabilities = type { i32*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_channel = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TDLS_MAX_SUPP_OPER_CLASSES = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"wmi tdls peer update vdev %i state %d n_chans %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_channel_arg*)* @ath10k_wmi_10_4_gen_tdls_peer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_4_gen_tdls_peer_update(%struct.ath10k* %0, %struct.wmi_tdls_peer_update_cmd_arg* %1, %struct.wmi_tdls_peer_capab_arg* %2, %struct.wmi_channel_arg* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.wmi_tdls_peer_update_cmd_arg*, align 8
  %8 = alloca %struct.wmi_tdls_peer_capab_arg*, align 8
  %9 = alloca %struct.wmi_channel_arg*, align 8
  %10 = alloca %struct.wmi_10_4_tdls_peer_update_cmd*, align 8
  %11 = alloca %struct.wmi_tdls_peer_capabilities*, align 8
  %12 = alloca %struct.wmi_channel*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.wmi_tdls_peer_update_cmd_arg* %1, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  store %struct.wmi_tdls_peer_capab_arg* %2, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  store %struct.wmi_channel_arg* %3, %struct.wmi_channel_arg** %9, align 8
  %18 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %19 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %24 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %26, %22 ], [ 0, %27 ]
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 120, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.sk_buff* @ERR_PTR(i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %5, align 8
  br label %199

44:                                               ; preds = %28
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memset(i64 %47, i32 0, i32 120)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.wmi_10_4_tdls_peer_update_cmd*
  store %struct.wmi_10_4_tdls_peer_update_cmd* %52, %struct.wmi_10_4_tdls_peer_update_cmd** %10, align 8
  %53 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %54 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @__cpu_to_le32(i32 %55)
  %57 = load %struct.wmi_10_4_tdls_peer_update_cmd*, %struct.wmi_10_4_tdls_peer_update_cmd** %10, align 8
  %58 = getelementptr inbounds %struct.wmi_10_4_tdls_peer_update_cmd, %struct.wmi_10_4_tdls_peer_update_cmd* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.wmi_10_4_tdls_peer_update_cmd*, %struct.wmi_10_4_tdls_peer_update_cmd** %10, align 8
  %60 = getelementptr inbounds %struct.wmi_10_4_tdls_peer_update_cmd, %struct.wmi_10_4_tdls_peer_update_cmd* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %64 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ether_addr_copy(i32 %62, i32 %65)
  %67 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %68 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @__cpu_to_le32(i32 %69)
  %71 = load %struct.wmi_10_4_tdls_peer_update_cmd*, %struct.wmi_10_4_tdls_peer_update_cmd** %10, align 8
  %72 = getelementptr inbounds %struct.wmi_10_4_tdls_peer_update_cmd, %struct.wmi_10_4_tdls_peer_update_cmd* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %74 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %77 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ath10k_wmi_prepare_peer_qos(i32 %75, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.wmi_10_4_tdls_peer_update_cmd*, %struct.wmi_10_4_tdls_peer_update_cmd** %10, align 8
  %81 = getelementptr inbounds %struct.wmi_10_4_tdls_peer_update_cmd, %struct.wmi_10_4_tdls_peer_update_cmd* %80, i32 0, i32 0
  store %struct.wmi_tdls_peer_capabilities* %81, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i8* @__cpu_to_le32(i32 %82)
  %84 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %85 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  %86 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %87 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @__cpu_to_le32(i32 %88)
  %90 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %91 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %90, i32 0, i32 10
  store i8* %89, i8** %91, align 8
  %92 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %93 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @__cpu_to_le32(i32 %94)
  %96 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %97 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %99 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @__cpu_to_le32(i32 %100)
  %102 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %103 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %102, i32 0, i32 8
  store i8* %101, i8** %103, align 8
  %104 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %105 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @__cpu_to_le32(i32 %106)
  %108 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %109 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %111 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @__cpu_to_le32(i32 %112)
  %114 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %115 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %117 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @__cpu_to_le32(i32 %118)
  %120 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %121 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %140, %44
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @WMI_TDLS_MAX_SUPP_OPER_CLASSES, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %128 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %135 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %122

143:                                              ; preds = %122
  %144 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %145 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @__cpu_to_le32(i32 %146)
  %148 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %149 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %151 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @__cpu_to_le32(i32 %152)
  %154 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %155 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %157 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @__cpu_to_le32(i32 %158)
  %160 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %161 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %182, %143
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %165 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %162
  %169 = load %struct.wmi_tdls_peer_capabilities*, %struct.wmi_tdls_peer_capabilities** %11, align 8
  %170 = getelementptr inbounds %struct.wmi_tdls_peer_capabilities, %struct.wmi_tdls_peer_capabilities* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = bitcast i32* %174 to %struct.wmi_channel*
  store %struct.wmi_channel* %175, %struct.wmi_channel** %12, align 8
  %176 = load %struct.wmi_channel*, %struct.wmi_channel** %12, align 8
  %177 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %177, i64 %179
  %181 = call i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel* %176, %struct.wmi_channel_arg* %180)
  br label %182

182:                                              ; preds = %168
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %17, align 4
  br label %162

185:                                              ; preds = %162
  %186 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %187 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %188 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %189 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.wmi_tdls_peer_update_cmd_arg*, %struct.wmi_tdls_peer_update_cmd_arg** %7, align 8
  %192 = getelementptr inbounds %struct.wmi_tdls_peer_update_cmd_arg, %struct.wmi_tdls_peer_update_cmd_arg* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.wmi_tdls_peer_capab_arg*, %struct.wmi_tdls_peer_capab_arg** %8, align 8
  %195 = getelementptr inbounds %struct.wmi_tdls_peer_capab_arg, %struct.wmi_tdls_peer_capab_arg* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @ath10k_dbg(%struct.ath10k* %186, i32 %187, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %193, i32 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %198, %struct.sk_buff** %5, align 8
  br label %199

199:                                              ; preds = %185, %40
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %200
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath10k_wmi_prepare_peer_qos(i32, i32) #1

declare dso_local i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel*, %struct.wmi_channel_arg*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
