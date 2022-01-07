; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_get_pf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_get_pf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.qlcnic_info = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_CMD_GET_NIC_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get PF info, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [338 x i8] c"\0A\09total_pf: %d,\0A\0A\09total_rss_engines: %d max_vports: %d max_tx_ques %d,\0A\09max_tx_mac_filters: %d max_rx_mcast_mac_filters: %d,\0A\09max_rx_ucast_mac_filters: 0x%x, max_rx_ip_addr: %d,\0A\09max_rx_lro_flow: %d max_rx_status_rings: %d,\0A\09max_rx_buf_rings: %d, max_rx_ques: %d, max_tx_vlan_keys %d\0A\09max_local_ipv6_addrs: %d, max_remote_ipv6_addrs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_info*)* @qlcnic_sriov_get_pf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_get_pf_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_cmd_args, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %5, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = load i32, i32* @QLCNIC_CMD_GET_NIC_INFO, align 4
  %10 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %7, %struct.qlcnic_adapter* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %212

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 2, i32* %19, align 4
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %21 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %20, %struct.qlcnic_cmd_args* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %209

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %39 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %48 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @MSW(i32 %53)
  %55 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %56 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @LSW(i32 %61)
  %63 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %64 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %63, i32 0, i32 13
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @MSW(i32 %69)
  %71 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %72 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %71, i32 0, i32 12
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @LSW(i32 %77)
  %79 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %80 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @MSW(i32 %85)
  %87 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %88 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @LSW(i32 %93)
  %95 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @MSW(i32 %101)
  %103 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %104 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @LSW(i32 %109)
  %111 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %112 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @MSW(i32 %117)
  %119 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %120 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 7
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @LSW(i32 %125)
  %127 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %128 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @MSW(i32 %133)
  %135 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %136 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 8
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @LSW(i32 %141)
  %143 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %144 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @MSW(i32 %149)
  %151 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %152 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %154 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %155 = call i32 @qlcnic_sriov_set_vf_max_vlan(%struct.qlcnic_adapter* %153, %struct.qlcnic_info* %154)
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %157 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %158 = call i32 @qlcnic_sriov_pf_set_ff_max_res(%struct.qlcnic_adapter* %156, %struct.qlcnic_info* %157)
  %159 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %164 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %167 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %170 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %169, i32 0, i32 14
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %173 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %172, i32 0, i32 13
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %176 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %175, i32 0, i32 12
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %179 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %178, i32 0, i32 11
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %182 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %181, i32 0, i32 10
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %185 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %184, i32 0, i32 9
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %188 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %187, i32 0, i32 8
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %191 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %190, i32 0, i32 7
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %194 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %193, i32 0, i32 6
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %197 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %196, i32 0, i32 5
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %200 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %203 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %206 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @dev_info(i32* %162, i8* getelementptr inbounds ([338 x i8], [338 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %168, i8* %171, i8* %174, i8* %177, i8* %180, i8* %183, i8* %186, i8* %189, i8* %192, i8* %195, i8* %198, i8* %201, i8* %204, i8* %207)
  br label %209

209:                                              ; preds = %31, %24
  %210 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %7)
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %209, %12
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @MSW(i32) #1

declare dso_local i8* @LSW(i32) #1

declare dso_local i32 @qlcnic_sriov_set_vf_max_vlan(%struct.qlcnic_adapter*, %struct.qlcnic_info*) #1

declare dso_local i32 @qlcnic_sriov_pf_set_ff_max_res(%struct.qlcnic_adapter*, %struct.qlcnic_info*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
