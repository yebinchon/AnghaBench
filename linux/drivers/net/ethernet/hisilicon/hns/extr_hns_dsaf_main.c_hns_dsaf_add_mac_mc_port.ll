; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_add_mac_mc_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_add_mac_mc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i32, i32 }
%struct.dsaf_drv_tbl_tcam_key = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i32, i32 }
%struct.dsaf_tbl_tcam_mcast_cfg = type { i32, i64, i32* }
%struct.dsaf_drv_priv = type { %struct.dsaf_drv_soft_mac_tbl* }
%struct.dsaf_drv_soft_mac_tbl = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DSAF_INVALID_ENTRY_IDX = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set_entry failed,addr %pM!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"set_uc_entry failed, %s Mac key(%#x:%#x)\0A\00", align 1
@DSAF_SERVICE_NW_NUM = common dso_local global i32 0, align 4
@DSAF_BASE_INNER_PORT_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s,pnum(%d)error,key(%#x:%#x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"set_uc_entry, %s Mac key(%#x:%#x) entry_index%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device* %0, %struct.dsaf_drv_mac_single_dest_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca %struct.dsaf_drv_mac_single_dest_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dsaf_drv_tbl_tcam_key, align 4
  %8 = alloca %struct.dsaf_drv_tbl_tcam_key, align 4
  %9 = alloca %struct.dsaf_tbl_tcam_data*, align 8
  %10 = alloca %struct.dsaf_tbl_tcam_mcast_cfg, align 8
  %11 = alloca %struct.dsaf_drv_priv*, align 8
  %12 = alloca %struct.dsaf_drv_soft_mac_tbl*, align 8
  %13 = alloca %struct.dsaf_tbl_tcam_data, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store %struct.dsaf_drv_mac_single_dest_entry* %1, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %20 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  store i64 %20, i64* %6, align 8
  store %struct.dsaf_tbl_tcam_data* null, %struct.dsaf_tbl_tcam_data** %9, align 8
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %22 = call %struct.dsaf_drv_priv* @hns_dsaf_dev_priv(%struct.dsaf_device* %21)
  store %struct.dsaf_drv_priv* %22, %struct.dsaf_drv_priv** %11, align 8
  %23 = load %struct.dsaf_drv_priv*, %struct.dsaf_drv_priv** %11, align 8
  %24 = getelementptr inbounds %struct.dsaf_drv_priv, %struct.dsaf_drv_priv* %23, i32 0, i32 0
  %25 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %24, align 8
  store %struct.dsaf_drv_soft_mac_tbl* %25, %struct.dsaf_drv_soft_mac_tbl** %12, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %31 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @MAC_IS_ALL_ZEROS(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %37 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %40 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %221

45:                                               ; preds = %2
  %46 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %47 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ether_addr_copy(i32* %29, i32 %48)
  %50 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %51 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AE_IS_VER1(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %18, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %19, align 8
  %60 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %61 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %62 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %65 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hns_dsaf_setup_mc_mask(%struct.dsaf_device* %60, i32 %63, i32* %59, i32 %66)
  %68 = call i32 @hns_dsaf_mc_mask_bit_clear(i32* %29, i32* %59)
  %69 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %70 = call i32 @hns_dsaf_set_mac_key(%struct.dsaf_device* %69, %struct.dsaf_drv_tbl_tcam_key* %8, i32 0, i32 255, i32* %59)
  %71 = bitcast %struct.dsaf_drv_tbl_tcam_key* %8 to %struct.dsaf_tbl_tcam_data*
  store %struct.dsaf_tbl_tcam_data* %71, %struct.dsaf_tbl_tcam_data** %9, align 8
  %72 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %55, %45
  %74 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %75 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %76 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %79 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hns_dsaf_set_mac_key(%struct.dsaf_device* %74, %struct.dsaf_drv_tbl_tcam_key* %7, i32 %77, i32 %80, i32* %29)
  %82 = call i32 @memset(%struct.dsaf_tbl_tcam_mcast_cfg* %10, i32 0, i32 24)
  %83 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %84 = call i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device* %83, %struct.dsaf_drv_tbl_tcam_key* %7)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %73
  %89 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %90 = call i64 @hns_dsaf_find_empty_mac_entry(%struct.dsaf_device* %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @DSAF_INVALID_ENTRY_IDX, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %96 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %99 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %221

111:                                              ; preds = %88
  br label %116

112:                                              ; preds = %73
  %113 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @hns_dsaf_tcam_mc_get(%struct.dsaf_device* %113, i64 %114, %struct.dsaf_tbl_tcam_data* %13, %struct.dsaf_tbl_tcam_mcast_cfg* %10)
  br label %116

116:                                              ; preds = %112, %111
  %117 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %118 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DSAF_SERVICE_NW_NUM, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %124 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %16, align 4
  br label %161

126:                                              ; preds = %116
  %127 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %128 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DSAF_BASE_INNER_PORT_NUM, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %134 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DSAF_BASE_INNER_PORT_NUM, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* @DSAF_SERVICE_NW_NUM, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %16, align 4
  br label %160

140:                                              ; preds = %126
  %141 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %142 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %145 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dsaf_drv_mac_single_dest_entry*, %struct.dsaf_drv_mac_single_dest_entry** %5, align 8
  %149 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %150, i32 %153, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %221

160:                                              ; preds = %132
  br label %161

161:                                              ; preds = %160, %122
  %162 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %10, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sdiv i32 %164, 32
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %16, align 4
  %170 = srem i32 %169, 32
  %171 = call i32 @dsaf_set_bit(i32 %168, i32 %170, i32 1)
  %172 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %10, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %10, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %175 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %178 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %6, align 8
  %188 = call i32 @dev_dbg(i32 %176, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %180, i32 %183, i32 %186, i64 %187)
  %189 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %13, i32 0, i32 1
  store i32 %191, i32* %192, align 4
  %193 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %13, i32 0, i32 0
  store i32 %195, i32* %196, align 4
  %197 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %198 = load i64, i64* %6, align 8
  %199 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %9, align 8
  %200 = call i32 @hns_dsaf_tcam_mc_cfg(%struct.dsaf_device* %197, i64 %198, %struct.dsaf_tbl_tcam_data* %13, %struct.dsaf_tbl_tcam_data* %199, %struct.dsaf_tbl_tcam_mcast_cfg* %10)
  %201 = load i64, i64* %6, align 8
  %202 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %12, align 8
  %203 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %202, i64 %201
  store %struct.dsaf_drv_soft_mac_tbl* %203, %struct.dsaf_drv_soft_mac_tbl** %12, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %12, align 8
  %206 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %12, align 8
  %211 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 4
  %214 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %7, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.dsaf_drv_soft_mac_tbl*, %struct.dsaf_drv_soft_mac_tbl** %12, align 8
  %218 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, %struct.dsaf_drv_soft_mac_tbl* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store i32 %216, i32* %220, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %221

221:                                              ; preds = %161, %140, %94, %35
  %222 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.dsaf_drv_priv* @hns_dsaf_dev_priv(%struct.dsaf_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @MAC_IS_ALL_ZEROS(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i32 @hns_dsaf_setup_mc_mask(%struct.dsaf_device*, i32, i32*, i32) #1

declare dso_local i32 @hns_dsaf_mc_mask_bit_clear(i32*, i32*) #1

declare dso_local i32 @hns_dsaf_set_mac_key(%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memset(%struct.dsaf_tbl_tcam_mcast_cfg*, i32, i32) #1

declare dso_local i64 @hns_dsaf_find_soft_mac_entry(%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*) #1

declare dso_local i64 @hns_dsaf_find_empty_mac_entry(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_tcam_mc_get(%struct.dsaf_device*, i64, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_mcast_cfg*) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @hns_dsaf_tcam_mc_cfg(%struct.dsaf_device*, i64, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_mcast_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
