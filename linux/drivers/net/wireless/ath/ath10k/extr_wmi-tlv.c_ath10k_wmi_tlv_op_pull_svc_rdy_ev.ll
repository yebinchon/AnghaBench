; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_svc_rdy_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_svc_rdy_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, %struct.wlan_host_mem_req* }
%struct.wlan_host_mem_req = type { i32 }
%struct.wmi_svc_rdy_ev_arg = type { i32, %struct.wlan_host_mem_req*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req*, %struct.hal_reg_capabilities*, %struct.wmi_tlv_svc_rdy_ev* }
%struct.hal_reg_capabilities = type { i32, i32, i32 }
%struct.wmi_tlv_svc_rdy_ev = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_tlv_svc_rdy_parse = type { i32, %struct.wlan_host_mem_req*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req*, %struct.hal_reg_capabilities*, %struct.wmi_tlv_svc_rdy_ev* }

@ath10k_wmi_tlv_svc_rdy_parse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"wmi tlv abi 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x, 0x%08x ?= 0x%08x\0A\00", align 1
@WMI_TLV_ABI_VER0 = common dso_local global i64 0, align 8
@WMI_TLV_ABI_VER_NS0 = common dso_local global i64 0, align 8
@WMI_TLV_ABI_VER_NS1 = common dso_local global i64 0, align 8
@WMI_TLV_ABI_VER_NS2 = common dso_local global i64 0, align 8
@WMI_TLV_ABI_VER_NS3 = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ath10k_wmi_tlv_parse_mem_reqs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to parse mem_reqs tlv: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_svc_rdy_ev_arg*)* @ath10k_wmi_tlv_op_pull_svc_rdy_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_svc_rdy_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_svc_rdy_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_svc_rdy_ev_arg*, align 8
  %8 = alloca %struct.hal_reg_capabilities*, align 8
  %9 = alloca %struct.wmi_tlv_svc_rdy_ev*, align 8
  %10 = alloca %struct.wlan_host_mem_req*, align 8
  %11 = alloca %struct.wlan_host_mem_req*, align 8
  %12 = alloca %struct.wmi_tlv_svc_rdy_parse, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_svc_rdy_ev_arg* %2, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %14 = bitcast %struct.wmi_tlv_svc_rdy_parse* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 104, i1 false)
  %15 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ath10k_wmi_tlv_svc_rdy_parse, align 4
  %23 = call i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %15, %struct.wlan_host_mem_req* %18, i32 %21, i32 %22, %struct.wmi_tlv_svc_rdy_parse* %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %4, align 4
  br label %221

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %12, i32 0, i32 18
  %33 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %32, align 8
  store %struct.wmi_tlv_svc_rdy_ev* %33, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %12, i32 0, i32 17
  %35 = load %struct.hal_reg_capabilities*, %struct.hal_reg_capabilities** %34, align 8
  store %struct.hal_reg_capabilities* %35, %struct.hal_reg_capabilities** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %12, i32 0, i32 16
  %37 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %36, align 8
  store %struct.wlan_host_mem_req* %37, %struct.wlan_host_mem_req** %10, align 8
  %38 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_parse, %struct.wmi_tlv_svc_rdy_parse* %12, i32 0, i32 15
  %39 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %38, align 8
  store %struct.wlan_host_mem_req* %39, %struct.wlan_host_mem_req** %11, align 8
  %40 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %41 = icmp ne %struct.wmi_tlv_svc_rdy_ev* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load %struct.hal_reg_capabilities*, %struct.hal_reg_capabilities** %8, align 8
  %44 = icmp ne %struct.hal_reg_capabilities* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %10, align 8
  %47 = icmp ne %struct.wlan_host_mem_req* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %11, align 8
  %50 = icmp ne %struct.wlan_host_mem_req* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48, %45, %42, %31
  %52 = load i32, i32* @EPROTO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %221

54:                                               ; preds = %48
  %55 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %56 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %57 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %58 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @__le32_to_cpu(i32 %60)
  %62 = load i64, i64* @WMI_TLV_ABI_VER0, align 8
  %63 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %64 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @__le32_to_cpu(i32 %66)
  %68 = load i64, i64* @WMI_TLV_ABI_VER_NS0, align 8
  %69 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %70 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @__le32_to_cpu(i32 %72)
  %74 = load i64, i64* @WMI_TLV_ABI_VER_NS1, align 8
  %75 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %76 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @__le32_to_cpu(i32 %78)
  %80 = load i64, i64* @WMI_TLV_ABI_VER_NS2, align 8
  %81 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %82 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @__le32_to_cpu(i32 %84)
  %86 = load i64, i64* @WMI_TLV_ABI_VER_NS3, align 8
  %87 = call i32 @ath10k_dbg(%struct.ath10k* %55, i32 %56, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %62, i64 %67, i64 %68, i64 %73, i64 %74, i64 %79, i64 %80, i64 %85, i64 %86)
  %88 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %89 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @__le32_to_cpu(i32 %91)
  %93 = load i64, i64* @WMI_TLV_ABI_VER0, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %127, label %95

95:                                               ; preds = %54
  %96 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %97 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @__le32_to_cpu(i32 %99)
  %101 = load i64, i64* @WMI_TLV_ABI_VER_NS0, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %127, label %103

103:                                              ; preds = %95
  %104 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %105 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @__le32_to_cpu(i32 %107)
  %109 = load i64, i64* @WMI_TLV_ABI_VER_NS1, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %127, label %111

111:                                              ; preds = %103
  %112 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %113 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @__le32_to_cpu(i32 %115)
  %117 = load i64, i64* @WMI_TLV_ABI_VER_NS2, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %121 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @__le32_to_cpu(i32 %123)
  %125 = load i64, i64* @WMI_TLV_ABI_VER_NS3, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119, %111, %103, %95, %54
  %128 = load i32, i32* @ENOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %221

130:                                              ; preds = %119
  %131 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %132 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %135 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %134, i32 0, i32 14
  store i32 %133, i32* %135, align 8
  %136 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %137 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %140 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %139, i32 0, i32 13
  store i32 %138, i32* %140, align 4
  %141 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %142 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %145 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %144, i32 0, i32 12
  store i32 %143, i32* %145, align 8
  %146 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %147 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %150 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 4
  %151 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %152 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %156 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 8
  %157 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %158 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %162 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %161, i32 0, i32 9
  store i32 %160, i32* %162, align 4
  %163 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %164 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %167 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  %168 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %169 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %172 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %174 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %177 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load %struct.hal_reg_capabilities*, %struct.hal_reg_capabilities** %8, align 8
  %179 = getelementptr inbounds %struct.hal_reg_capabilities, %struct.hal_reg_capabilities* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %182 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load %struct.hal_reg_capabilities*, %struct.hal_reg_capabilities** %8, align 8
  %184 = getelementptr inbounds %struct.hal_reg_capabilities, %struct.hal_reg_capabilities* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %187 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.hal_reg_capabilities*, %struct.hal_reg_capabilities** %8, align 8
  %189 = getelementptr inbounds %struct.hal_reg_capabilities, %struct.hal_reg_capabilities* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %192 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load %struct.wmi_tlv_svc_rdy_ev*, %struct.wmi_tlv_svc_rdy_ev** %9, align 8
  %194 = getelementptr inbounds %struct.wmi_tlv_svc_rdy_ev, %struct.wmi_tlv_svc_rdy_ev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %197 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %10, align 8
  %199 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %200 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %199, i32 0, i32 1
  store %struct.wlan_host_mem_req* %198, %struct.wlan_host_mem_req** %200, align 8
  %201 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %10, align 8
  %202 = call i32 @ath10k_wmi_tlv_len(%struct.wlan_host_mem_req* %201)
  %203 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %204 = getelementptr inbounds %struct.wmi_svc_rdy_ev_arg, %struct.wmi_svc_rdy_ev_arg* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %206 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %11, align 8
  %207 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %11, align 8
  %208 = call i32 @ath10k_wmi_tlv_len(%struct.wlan_host_mem_req* %207)
  %209 = load i32, i32* @ath10k_wmi_tlv_parse_mem_reqs, align 4
  %210 = load %struct.wmi_svc_rdy_ev_arg*, %struct.wmi_svc_rdy_ev_arg** %7, align 8
  %211 = bitcast %struct.wmi_svc_rdy_ev_arg* %210 to %struct.wmi_tlv_svc_rdy_parse*
  %212 = call i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %205, %struct.wlan_host_mem_req* %206, i32 %208, i32 %209, %struct.wmi_tlv_svc_rdy_parse* %211)
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %130
  %216 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @ath10k_warn(%struct.ath10k* %216, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* %4, align 4
  br label %221

220:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %220, %215, %127, %51, %26
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_tlv_iter(%struct.ath10k*, %struct.wlan_host_mem_req*, i32, i32, %struct.wmi_tlv_svc_rdy_parse*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__le32_to_cpu(i32) #2

declare dso_local i32 @ath10k_wmi_tlv_len(%struct.wlan_host_mem_req*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
