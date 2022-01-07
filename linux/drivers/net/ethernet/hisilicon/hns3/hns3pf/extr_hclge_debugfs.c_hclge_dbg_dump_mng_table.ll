; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_mng_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_dump_mng_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_ethertype_idx_rd_cmd = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclge_desc = type { i32 }

@HCLGE_DBG_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mng tab:\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"entry|mac_addr         |mask|ether|mask|vlan|mask\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"|i_map|i_dir|e_type|pf_id|vf_id|q_id|drop\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCLGE_DBG_MNG_TBL_MAX = common dso_local global i32 0, align 4
@HCLGE_MAC_ETHERTYPE_IDX_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"call hclge_cmd_send fail, ret = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%02u   |%02x:%02x:%02x:%02x:%02x:%02x|\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%x   |%04x |%x   |%04x|%x   |%02x   |%02x   |\00", align 1
@HCLGE_DBG_MNG_MAC_MASK_B = common dso_local global i32 0, align 4
@HCLGE_DBG_MNG_ETHER_MASK_B = common dso_local global i32 0, align 4
@HCLGE_DBG_MNG_VLAN_TAG = common dso_local global i32 0, align 4
@HCLGE_DBG_MNG_VLAN_MASK_B = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%d     |%d    |%02d   |%04d|%x\0A\00", align 1
@HCLGE_DBG_MNG_E_TYPE_B = common dso_local global i32 0, align 4
@HCLGE_DBG_MNG_PF_ID = common dso_local global i32 0, align 4
@HCLGE_DBG_MNG_VF_ID = common dso_local global i32 0, align 4
@HCLGE_DBG_MNG_DROP_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_dbg_dump_mng_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_dump_mng_table(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_mac_ethertype_idx_rd_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hclge_desc, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %10 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %20 = call i32 @memset(i8* %13, i32 0, i32 %19)
  %21 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @strncat(i8* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @strlen(i8* %13)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %13, i64 %25
  %27 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %28 = call i32 @strlen(i8* %13)
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @strncat(i8* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_info(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %198, %1
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @HCLGE_DBG_MNG_TBL_MAX, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %201

41:                                               ; preds = %37
  %42 = load i32, i32* @HCLGE_MAC_ETHERTYPE_IDX_RD, align 4
  %43 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %42, i32 1)
  %44 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.hclge_mac_ethertype_idx_rd_cmd*
  store %struct.hclge_mac_ethertype_idx_rd_cmd* %45, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %51 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %50, i32 0, i32 1
  %52 = call i32 @hclge_cmd_send(i32* %51, %struct.hclge_desc* %6, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  store i32 1, i32* %9, align 4
  br label %202

62:                                               ; preds = %41
  %63 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %198

68:                                               ; preds = %62
  %69 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %70 = call i32 @memset(i8* %13, i32 0, i32 %69)
  %71 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %72 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %81 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %96 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %13, i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %79, i32 %84, i32 %89, i32 %94, i32 %99, i32 %104)
  %106 = call i32 @strlen(i8* %13)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %13, i64 %107
  %109 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %110 = call i32 @strlen(i8* %13)
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HCLGE_DBG_MNG_MAC_MASK_B, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %122 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %125 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @HCLGE_DBG_MNG_ETHER_MASK_B, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %134 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @HCLGE_DBG_MNG_VLAN_TAG, align 4
  %137 = and i32 %135, %136
  %138 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %139 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @HCLGE_DBG_MNG_VLAN_MASK_B, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %148 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %151 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %108, i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %123, i32 %132, i32 %137, i32 %146, i32 %149, i32 %152)
  %154 = call i32 @strlen(i8* %13)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %13, i64 %155
  %157 = load i32, i32* @HCLGE_DBG_BUF_LEN, align 4
  %158 = call i32 @strlen(i8* %13)
  %159 = sub nsw i32 %157, %158
  %160 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %161 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @HCLGE_DBG_MNG_E_TYPE_B, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %170 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HCLGE_DBG_MNG_PF_ID, align 4
  %173 = and i32 %171, %172
  %174 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %175 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 3
  %178 = load i32, i32* @HCLGE_DBG_MNG_VF_ID, align 4
  %179 = and i32 %177, %178
  %180 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %181 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.hclge_mac_ethertype_idx_rd_cmd*, %struct.hclge_mac_ethertype_idx_rd_cmd** %3, align 8
  %184 = getelementptr inbounds %struct.hclge_mac_ethertype_idx_rd_cmd, %struct.hclge_mac_ethertype_idx_rd_cmd* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @HCLGE_DBG_MNG_DROP_B, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %156, i32 %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %168, i32 %173, i32 %179, i32 %182, i32 %191)
  %193 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %194 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = call i32 (i32*, i8*, ...) @dev_info(i32* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  br label %198

198:                                              ; preds = %68, %67
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %37

201:                                              ; preds = %37
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %201, %55
  %203 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %9, align 4
  switch i32 %204, label %206 [
    i32 0, label %205
    i32 1, label %205
  ]

205:                                              ; preds = %202, %202
  ret void

206:                                              ; preds = %202
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
