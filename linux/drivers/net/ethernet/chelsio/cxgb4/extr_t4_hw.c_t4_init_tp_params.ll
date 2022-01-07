; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_tp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_tp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@TP_TIMER_RESOLUTION_A = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_FILTER = common dso_local global i32 0, align 4
@FW_PARAM_DEV_FILTER_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Current filter mode/mask 0x%x:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Failed to read filter mode/mask via fw api, using indirect-reg-read\0A\00", align 1
@TP_VLAN_PRI_MAP_A = common dso_local global i32 0, align 4
@TP_INGRESS_CONFIG_A = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@TP_OUT_CONFIG_A = common dso_local global i32 0, align 4
@CRXPKTENC_F = common dso_local global i32 0, align 4
@FCOE_F = common dso_local global i32 0, align 4
@PORT_F = common dso_local global i32 0, align 4
@VNIC_ID_F = common dso_local global i32 0, align 4
@VLAN_F = common dso_local global i32 0, align 4
@TOS_F = common dso_local global i32 0, align 4
@PROTOCOL_F = common dso_local global i32 0, align 4
@ETHERTYPE_F = common dso_local global i32 0, align 4
@MACMATCH_F = common dso_local global i32 0, align 4
@MPSHITTYPE_F = common dso_local global i32 0, align 4
@FRAGMENTATION_F = common dso_local global i32 0, align 4
@VNIC_F = common dso_local global i32 0, align 4
@LE_3_DB_HASH_MASK_GEN_IPV4_T6_A = common dso_local global i32 0, align 4
@LE_4_DB_HASH_MASK_GEN_IPV4_T6_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_tp_params(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load i32, i32* @TP_TIMER_RESOLUTION_A, align 4
  %12 = call i32 @t4_read_reg(%struct.adapter* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TIMERRESOLUTION_G(i32 %13)
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 17
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DELAYEDACKRESOLUTION_G(i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 16
  store i32 %20, i32* %24, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %39, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NCHAN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %30, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %25

42:                                               ; preds = %25
  %43 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %44 = call i32 @FW_PARAMS_MNEM_V(i32 %43)
  %45 = load i32, i32* @FW_PARAMS_PARAM_DEV_FILTER, align 4
  %46 = call i32 @FW_PARAMS_PARAM_X_V(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @FW_PARAM_DEV_FILTER_MODE_MASK, align 4
  %49 = call i32 @FW_PARAMS_PARAM_Y_V(i32 %48)
  %50 = or i32 %47, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @t4_query_params(%struct.adapter* %51, i32 %54, i32 %57, i32 0, i32 1, i32* %5, i32* %6)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %42
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @FW_PARAMS_PARAM_FILTER_MODE_G(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @FW_PARAMS_PARAM_FILTER_MASK_G(i32 %67)
  %69 = call i32 (i32, i8*, ...) @dev_info(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @FW_PARAMS_PARAM_FILTER_MODE_G(i32 %70)
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @FW_PARAMS_PARAM_FILTER_MASK_G(i32 %76)
  %78 = load %struct.adapter*, %struct.adapter** %3, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 4
  br label %104

82:                                               ; preds = %42
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @dev_info(i32 %85, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.adapter*, %struct.adapter** %3, align 8
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* @TP_VLAN_PRI_MAP_A, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @t4_tp_pio_read(%struct.adapter* %87, i32* %91, i32 1, i32 %92, i32 %93)
  %95 = load %struct.adapter*, %struct.adapter** %3, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %82, %61
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = load %struct.adapter*, %struct.adapter** %3, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* @TP_INGRESS_CONFIG_A, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @t4_tp_pio_read(%struct.adapter* %105, i32* %109, i32 1, i32 %110, i32 %111)
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @CHELSIO_CHIP_VERSION(i32 %116)
  %118 = load i64, i64* @CHELSIO_T5, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %104
  %121 = load %struct.adapter*, %struct.adapter** %3, align 8
  %122 = load i32, i32* @TP_OUT_CONFIG_A, align 4
  %123 = call i32 @t4_read_reg(%struct.adapter* %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @CRXPKTENC_F, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %120, %104
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = load i32, i32* @FCOE_F, align 4
  %137 = call i8* @t4_filter_field_shift(%struct.adapter* %135, i32 %136)
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 15
  store i8* %137, i8** %141, align 8
  %142 = load %struct.adapter*, %struct.adapter** %3, align 8
  %143 = load i32, i32* @PORT_F, align 4
  %144 = call i8* @t4_filter_field_shift(%struct.adapter* %142, i32 %143)
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 14
  store i8* %144, i8** %148, align 8
  %149 = load %struct.adapter*, %struct.adapter** %3, align 8
  %150 = load i32, i32* @VNIC_ID_F, align 4
  %151 = call i8* @t4_filter_field_shift(%struct.adapter* %149, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.adapter*, %struct.adapter** %3, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  store i32 %152, i32* %156, align 8
  %157 = load %struct.adapter*, %struct.adapter** %3, align 8
  %158 = load i32, i32* @VLAN_F, align 4
  %159 = call i8* @t4_filter_field_shift(%struct.adapter* %157, i32 %158)
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 13
  store i8* %159, i8** %163, align 8
  %164 = load %struct.adapter*, %struct.adapter** %3, align 8
  %165 = load i32, i32* @TOS_F, align 4
  %166 = call i8* @t4_filter_field_shift(%struct.adapter* %164, i32 %165)
  %167 = load %struct.adapter*, %struct.adapter** %3, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 12
  store i8* %166, i8** %170, align 8
  %171 = load %struct.adapter*, %struct.adapter** %3, align 8
  %172 = load i32, i32* @PROTOCOL_F, align 4
  %173 = call i8* @t4_filter_field_shift(%struct.adapter* %171, i32 %172)
  %174 = load %struct.adapter*, %struct.adapter** %3, align 8
  %175 = getelementptr inbounds %struct.adapter, %struct.adapter* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 11
  store i8* %173, i8** %177, align 8
  %178 = load %struct.adapter*, %struct.adapter** %3, align 8
  %179 = load i32, i32* @ETHERTYPE_F, align 4
  %180 = call i8* @t4_filter_field_shift(%struct.adapter* %178, i32 %179)
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 10
  store i8* %180, i8** %184, align 8
  %185 = load %struct.adapter*, %struct.adapter** %3, align 8
  %186 = load i32, i32* @MACMATCH_F, align 4
  %187 = call i8* @t4_filter_field_shift(%struct.adapter* %185, i32 %186)
  %188 = load %struct.adapter*, %struct.adapter** %3, align 8
  %189 = getelementptr inbounds %struct.adapter, %struct.adapter* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 9
  store i8* %187, i8** %191, align 8
  %192 = load %struct.adapter*, %struct.adapter** %3, align 8
  %193 = load i32, i32* @MPSHITTYPE_F, align 4
  %194 = call i8* @t4_filter_field_shift(%struct.adapter* %192, i32 %193)
  %195 = load %struct.adapter*, %struct.adapter** %3, align 8
  %196 = getelementptr inbounds %struct.adapter, %struct.adapter* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 8
  store i8* %194, i8** %198, align 8
  %199 = load %struct.adapter*, %struct.adapter** %3, align 8
  %200 = load i32, i32* @FRAGMENTATION_F, align 4
  %201 = call i8* @t4_filter_field_shift(%struct.adapter* %199, i32 %200)
  %202 = load %struct.adapter*, %struct.adapter** %3, align 8
  %203 = getelementptr inbounds %struct.adapter, %struct.adapter* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 7
  store i8* %201, i8** %205, align 8
  %206 = load %struct.adapter*, %struct.adapter** %3, align 8
  %207 = getelementptr inbounds %struct.adapter, %struct.adapter* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @VNIC_F, align 4
  %212 = and i32 %210, %211
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %134
  %215 = load %struct.adapter*, %struct.adapter** %3, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  store i32 -1, i32* %218, align 8
  br label %219

219:                                              ; preds = %214, %134
  %220 = load %struct.adapter*, %struct.adapter** %3, align 8
  %221 = load i32, i32* @LE_3_DB_HASH_MASK_GEN_IPV4_T6_A, align 4
  %222 = call i32 @t4_read_reg(%struct.adapter* %220, i32 %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.adapter*, %struct.adapter** %3, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 6
  store i32 %223, i32* %227, align 4
  %228 = load %struct.adapter*, %struct.adapter** %3, align 8
  %229 = load i32, i32* @LE_4_DB_HASH_MASK_GEN_IPV4_T6_A, align 4
  %230 = call i32 @t4_read_reg(%struct.adapter* %228, i32 %229)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = shl i32 %231, 32
  %233 = load %struct.adapter*, %struct.adapter** %3, align 8
  %234 = getelementptr inbounds %struct.adapter, %struct.adapter* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %232
  store i32 %238, i32* %236, align 4
  ret i32 0
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @TIMERRESOLUTION_G(i32) #1

declare dso_local i32 @DELAYEDACKRESOLUTION_G(i32) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_Y_V(i32) #1

declare dso_local i32 @t4_query_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @FW_PARAMS_PARAM_FILTER_MODE_G(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_FILTER_MASK_G(i32) #1

declare dso_local i32 @t4_tp_pio_read(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i8* @t4_filter_field_shift(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
