; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_config_profile = type { i32 }
%struct.mlxsw_res = type { i32 }
%struct.mlxsw_pci = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, %struct.mlxsw_core*, %struct.pci_dev* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MSI-X init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Unsupported cmd interface revision ID queried from hw\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Unsupported doorbell page bar queried from hw\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Unsupported free running clock BAR queried from hw\0A\00", align 1
@CQE_V2 = common dso_local global i32 0, align 4
@MLXSW_PCI_CQE_V2 = common dso_local global i32 0, align 4
@CQE_V1 = common dso_local global i32 0, align 4
@MLXSW_PCI_CQE_V1 = common dso_local global i32 0, align 4
@CQE_V0 = common dso_local global i32 0, align 4
@MLXSW_PCI_CQE_V0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Invalid supported CQE version combination reported\0A\00", align 1
@mlxsw_pci_eq_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"IRQ request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlxsw_core*, %struct.mlxsw_config_profile*, %struct.mlxsw_res*)* @mlxsw_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_init(i8* %0, %struct.mlxsw_core* %1, %struct.mlxsw_config_profile* %2, %struct.mlxsw_res* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_core*, align 8
  %8 = alloca %struct.mlxsw_config_profile*, align 8
  %9 = alloca %struct.mlxsw_res*, align 8
  %10 = alloca %struct.mlxsw_pci*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.mlxsw_core* %1, %struct.mlxsw_core** %7, align 8
  store %struct.mlxsw_config_profile* %2, %struct.mlxsw_config_profile** %8, align 8
  store %struct.mlxsw_res* %3, %struct.mlxsw_res** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.mlxsw_pci*
  store %struct.mlxsw_pci* %16, %struct.mlxsw_pci** %10, align 8
  %17 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %17, i32 0, i32 7
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %11, align 8
  %20 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %25 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %29 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %30 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %29, i32 0, i32 6
  store %struct.mlxsw_core* %28, %struct.mlxsw_core** %30, align 8
  %31 = call i8* (...) @mlxsw_cmd_mbox_alloc()
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %281

37:                                               ; preds = %4
  %38 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %39 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %40 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @mlxsw_pci_mbox_alloc(%struct.mlxsw_pci* %38, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %277

46:                                               ; preds = %37
  %47 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %48 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %49 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = call i32 @mlxsw_pci_mbox_alloc(%struct.mlxsw_pci* %47, i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %271

55:                                               ; preds = %46
  %56 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %57 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %58 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlxsw_pci_sw_reset(%struct.mlxsw_pci* %56, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %265

64:                                               ; preds = %55
  %65 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %66 = call i32 @mlxsw_pci_alloc_irq_vectors(%struct.mlxsw_pci* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %264

73:                                               ; preds = %64
  %74 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @mlxsw_cmd_query_fw(%struct.mlxsw_core* %74, i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %261

80:                                               ; preds = %73
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @mlxsw_cmd_mbox_query_fw_fw_rev_major_get(i8* %81)
  %83 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %84 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @mlxsw_cmd_mbox_query_fw_fw_rev_minor_get(i8* %87)
  %89 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %90 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @mlxsw_cmd_mbox_query_fw_fw_rev_subminor_get(i8* %93)
  %95 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %96 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @mlxsw_cmd_mbox_query_fw_cmd_interface_rev_get(i8* %99)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %80
  %103 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %14, align 4
  br label %260

108:                                              ; preds = %80
  %109 = load i8*, i8** %12, align 8
  %110 = call i64 @mlxsw_cmd_mbox_query_fw_doorbell_page_bar_get(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %14, align 4
  br label %259

118:                                              ; preds = %108
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @mlxsw_cmd_mbox_query_fw_doorbell_page_offset_get(i8* %119)
  %121 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %122 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 @mlxsw_cmd_mbox_query_fw_fr_rn_clk_bar_get(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  br label %258

132:                                              ; preds = %118
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get(i8* %133)
  %135 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %136 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @mlxsw_cmd_mbox_query_fw_fw_pages_get(i8* %137)
  store i32 %138, i32* %13, align 4
  %139 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @mlxsw_pci_fw_area_init(%struct.mlxsw_pci* %139, i8* %140, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %257

146:                                              ; preds = %132
  %147 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @mlxsw_pci_boardinfo(%struct.mlxsw_pci* %147, i8* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %254

153:                                              ; preds = %146
  %154 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %157 = call i32 @mlxsw_core_resources_query(%struct.mlxsw_core* %154, i8* %155, %struct.mlxsw_res* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %253

161:                                              ; preds = %153
  %162 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %163 = load i32, i32* @CQE_V2, align 4
  %164 = call i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %168 = load i32, i32* @CQE_V2, align 4
  %169 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @MLXSW_PCI_CQE_V2, align 4
  %173 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %174 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %214

175:                                              ; preds = %166, %161
  %176 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %177 = load i32, i32* @CQE_V1, align 4
  %178 = call i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %182 = load i32, i32* @CQE_V1, align 4
  %183 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @MLXSW_PCI_CQE_V1, align 4
  %187 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %188 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  br label %213

189:                                              ; preds = %180, %175
  %190 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %191 = load i32, i32* @CQE_V0, align 4
  %192 = call i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %196 = load i32, i32* @CQE_V0, align 4
  %197 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %194, %189
  %200 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %201 = load i32, i32* @CQE_V0, align 4
  %202 = call i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %199, %194
  %205 = load i32, i32* @MLXSW_PCI_CQE_V0, align 4
  %206 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %207 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  br label %212

208:                                              ; preds = %199
  %209 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %210 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %209, i32 0, i32 0
  %211 = call i32 @dev_err(i32* %210, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %252

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212, %185
  br label %214

214:                                              ; preds = %213, %171
  %215 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %216 = load i8*, i8** %12, align 8
  %217 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %218 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %219 = call i32 @mlxsw_pci_config_profile(%struct.mlxsw_pci* %215, i8* %216, %struct.mlxsw_config_profile* %217, %struct.mlxsw_res* %218)
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %251

223:                                              ; preds = %214
  %224 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %225 = load i8*, i8** %12, align 8
  %226 = call i32 @mlxsw_pci_aqs_init(%struct.mlxsw_pci* %224, i8* %225)
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %250

230:                                              ; preds = %223
  %231 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %232 = call i32 @pci_irq_vector(%struct.pci_dev* %231, i32 0)
  %233 = load i32, i32* @mlxsw_pci_eq_irq_handler, align 4
  %234 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %235 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %239 = call i32 @request_irq(i32 %232, i32 %233, i32 0, i32 %237, %struct.mlxsw_pci* %238)
  store i32 %239, i32* %14, align 4
  %240 = load i32, i32* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %230
  %243 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %244 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %243, i32 0, i32 0
  %245 = call i32 @dev_err(i32* %244, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %247

246:                                              ; preds = %230
  br label %277

247:                                              ; preds = %242
  %248 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %249 = call i32 @mlxsw_pci_aqs_fini(%struct.mlxsw_pci* %248)
  br label %250

250:                                              ; preds = %247, %229
  br label %251

251:                                              ; preds = %250, %222
  br label %252

252:                                              ; preds = %251, %208
  br label %253

253:                                              ; preds = %252, %160
  br label %254

254:                                              ; preds = %253, %152
  %255 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %256 = call i32 @mlxsw_pci_fw_area_fini(%struct.mlxsw_pci* %255)
  br label %257

257:                                              ; preds = %254, %145
  br label %258

258:                                              ; preds = %257, %126
  br label %259

259:                                              ; preds = %258, %112
  br label %260

260:                                              ; preds = %259, %102
  br label %261

261:                                              ; preds = %260, %79
  %262 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %263 = call i32 @mlxsw_pci_free_irq_vectors(%struct.mlxsw_pci* %262)
  br label %264

264:                                              ; preds = %261, %69
  br label %265

265:                                              ; preds = %264, %63
  %266 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %267 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %268 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = call i32 @mlxsw_pci_mbox_free(%struct.mlxsw_pci* %266, i32* %269)
  br label %271

271:                                              ; preds = %265, %54
  %272 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %273 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %10, align 8
  %274 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = call i32 @mlxsw_pci_mbox_free(%struct.mlxsw_pci* %272, i32* %275)
  br label %277

277:                                              ; preds = %271, %246, %45
  %278 = load i8*, i8** %12, align 8
  %279 = call i32 @mlxsw_cmd_mbox_free(i8* %278)
  %280 = load i32, i32* %14, align 4
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %277, %34
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @mlxsw_cmd_mbox_alloc(...) #1

declare dso_local i32 @mlxsw_pci_mbox_alloc(%struct.mlxsw_pci*, i32*) #1

declare dso_local i32 @mlxsw_pci_sw_reset(%struct.mlxsw_pci*, i32) #1

declare dso_local i32 @mlxsw_pci_alloc_irq_vectors(%struct.mlxsw_pci*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mlxsw_cmd_query_fw(%struct.mlxsw_core*, i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_rev_major_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_rev_minor_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_rev_subminor_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_cmd_interface_rev_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_fw_doorbell_page_bar_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_doorbell_page_offset_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_fw_fr_rn_clk_bar_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_free_running_clock_offset_get(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_fw_fw_pages_get(i8*) #1

declare dso_local i32 @mlxsw_pci_fw_area_init(%struct.mlxsw_pci*, i8*, i32) #1

declare dso_local i32 @mlxsw_pci_boardinfo(%struct.mlxsw_pci*, i8*) #1

declare dso_local i32 @mlxsw_core_resources_query(%struct.mlxsw_core*, i8*, %struct.mlxsw_res*) #1

declare dso_local i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @mlxsw_pci_config_profile(%struct.mlxsw_pci*, i8*, %struct.mlxsw_config_profile*, %struct.mlxsw_res*) #1

declare dso_local i32 @mlxsw_pci_aqs_init(%struct.mlxsw_pci*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mlxsw_pci*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @mlxsw_pci_aqs_fini(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_pci_fw_area_fini(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_pci_free_irq_vectors(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_pci_mbox_free(%struct.mlxsw_pci*, i32*) #1

declare dso_local i32 @mlxsw_cmd_mbox_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
