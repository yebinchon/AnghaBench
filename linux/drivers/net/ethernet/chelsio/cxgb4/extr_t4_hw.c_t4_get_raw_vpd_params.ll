; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_raw_vpd_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_raw_vpd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.vpd_params = type { i8*, i8*, i8*, i8*, i8* }

@VPD_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VPD_BASE = common dso_local global i32 0, align 4
@CHELSIO_VPD_UNIQUE_ID = common dso_local global i64 0, align 8
@VPD_BASE_OLD = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_ID_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"missing VPD ID string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ID_LEN = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_RO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"missing VPD-R section\0A\00", align 1
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bad VPD-R length %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"missing VPD keyword RV\0A\00", align 1
@PCI_VPD_INFO_FLD_HDR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"corrupted VPD EEPROM, actual csum %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"missing VPD keyword EC\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"missing VPD keyword SN\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"missing VPD keyword PN\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"missing VPD keyword NA\0A\00", align 1
@EC_LEN = common dso_local global i32 0, align 4
@SERNUM_LEN = common dso_local global i32 0, align 4
@PN_LEN = common dso_local global i32 0, align 4
@MACADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_get_raw_vpd_params(%struct.adapter* %0, %struct.vpd_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.vpd_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.vpd_params* %1, %struct.vpd_params** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @VPD_LEN, align 4
  %19 = call i64* @vmalloc(i32 %18)
  store i64* %19, i64** %13, align 8
  %20 = load i64*, i64** %13, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %334

25:                                               ; preds = %2
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VPD_BASE, align 4
  %30 = load i64*, i64** %13, align 8
  %31 = call i32 @pci_read_vpd(i32 %28, i32 %29, i32 4, i64* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %324

35:                                               ; preds = %25
  %36 = load i64*, i64** %13, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHELSIO_VPD_UNIQUE_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @VPD_BASE, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @VPD_BASE_OLD, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %8, align 4
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VPD_LEN, align 4
  %51 = load i64*, i64** %13, align 8
  %52 = call i32 @pci_read_vpd(i32 %48, i32 %49, i32 %50, i64* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %324

56:                                               ; preds = %44
  %57 = load i64*, i64** %13, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCI_VPD_LRDT_ID_STRING, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.adapter*, %struct.adapter** %4, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %324

69:                                               ; preds = %56
  %70 = load i64*, i64** %13, align 8
  %71 = call i32 @pci_vpd_lrdt_size(i64* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @ID_LEN, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @ID_LEN, align 4
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i64*, i64** %13, align 8
  %79 = load i32, i32* @VPD_LEN, align 4
  %80 = load i32, i32* @PCI_VPD_LRDT_RO_DATA, align 4
  %81 = call i32 @pci_vpd_find_tag(i64* %78, i32 0, i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.adapter*, %struct.adapter** %4, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %324

91:                                               ; preds = %77
  %92 = load i64*, i64** %13, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = call i32 @pci_vpd_lrdt_size(i64* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %100, %101
  %103 = load i32, i32* @VPD_LEN, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %91
  %106 = load %struct.adapter*, %struct.adapter** %4, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 (i32, i8*, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %324

113:                                              ; preds = %91
  br label %114

114:                                              ; preds = %113
  %115 = load i64*, i64** %13, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.adapter*, %struct.adapter** %4, align 8
  %123 = getelementptr inbounds %struct.adapter, %struct.adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %324

128:                                              ; preds = %114
  %129 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128
  store i64 0, i64* %14, align 8
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i32, i32* %6, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i64*, i64** %13, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %14, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %6, align 4
  br label %133

147:                                              ; preds = %133
  %148 = load i64, i64* %14, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.adapter*, %struct.adapter** %4, align 8
  %152 = getelementptr inbounds %struct.adapter, %struct.adapter* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %14, align 8
  %155 = call i32 (i32, i8*, ...) @dev_err(i32 %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %324

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158
  %160 = load i64*, i64** %13, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.adapter*, %struct.adapter** %4, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, ...) @dev_err(i32 %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %324

173:                                              ; preds = %159
  %174 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177
  %179 = load i64*, i64** %13, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %179, i32 %180, i32 %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load %struct.adapter*, %struct.adapter** %4, align 8
  %187 = getelementptr inbounds %struct.adapter, %struct.adapter* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32, i8*, ...) @dev_err(i32 %188, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %7, align 4
  br label %324

192:                                              ; preds = %178
  %193 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196
  %198 = load i64*, i64** %13, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %198, i32 %199, i32 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load %struct.adapter*, %struct.adapter** %4, align 8
  %206 = getelementptr inbounds %struct.adapter, %struct.adapter* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, ...) @dev_err(i32 %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  br label %324

211:                                              ; preds = %197
  %212 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215
  %217 = load i64*, i64** %13, align 8
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 (i64*, i32, i32, i8*, ...) bitcast (i32 (...)* @pci_vpd_find_info_keyword to i32 (i64*, i32, i32, i8*, ...)*)(i64* %217, i32 %218, i32 %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load %struct.adapter*, %struct.adapter** %4, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i8*, ...) @dev_err(i32 %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %7, align 4
  br label %324

230:                                              ; preds = %216
  %231 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %12, align 4
  br label %234

234:                                              ; preds = %230
  %235 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %236 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i64*, i64** %13, align 8
  %239 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @memcpy(i8* %237, i64* %241, i32 %242)
  %244 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %245 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @strim(i8* %246)
  %248 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %249 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i64*, i64** %13, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i32, i32* @EC_LEN, align 4
  %256 = call i32 @memcpy(i8* %250, i64* %254, i32 %255)
  %257 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %258 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @strim(i8* %259)
  %261 = load i64*, i64** %13, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %266 = sext i32 %265 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds i64, i64* %264, i64 %267
  %269 = call i32 @pci_vpd_info_field_size(i64* %268)
  store i32 %269, i32* %6, align 4
  %270 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %271 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = load i64*, i64** %13, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* @SERNUM_LEN, align 4
  %279 = call i32 @min(i32 %277, i32 %278)
  %280 = call i32 @memcpy(i8* %272, i64* %276, i32 %279)
  %281 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %282 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strim(i8* %283)
  %285 = load i64*, i64** %13, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i32, i32* @PCI_VPD_INFO_FLD_HDR_SIZE, align 4
  %290 = sext i32 %289 to i64
  %291 = sub i64 0, %290
  %292 = getelementptr inbounds i64, i64* %288, i64 %291
  %293 = call i32 @pci_vpd_info_field_size(i64* %292)
  store i32 %293, i32* %6, align 4
  %294 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %295 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = load i64*, i64** %13, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* @PN_LEN, align 4
  %303 = call i32 @min(i32 %301, i32 %302)
  %304 = call i32 @memcpy(i8* %296, i64* %300, i32 %303)
  %305 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %306 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %305, i32 0, i32 3
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @strim(i8* %307)
  %309 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %310 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %309, i32 0, i32 4
  %311 = load i8*, i8** %310, align 8
  %312 = load i64*, i64** %13, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i64, i64* %312, i64 %314
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* @MACADDR_LEN, align 4
  %318 = call i32 @min(i32 %316, i32 %317)
  %319 = call i32 @memcpy(i8* %311, i64* %315, i32 %318)
  %320 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %321 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %320, i32 0, i32 4
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @strim(i8* %322)
  br label %324

324:                                              ; preds = %234, %223, %204, %185, %166, %150, %121, %105, %84, %62, %55, %34
  %325 = load i64*, i64** %13, align 8
  %326 = call i32 @vfree(i64* %325)
  %327 = load i32, i32* %7, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i32, i32* %7, align 4
  br label %332

331:                                              ; preds = %324
  br label %332

332:                                              ; preds = %331, %329
  %333 = phi i32 [ %330, %329 ], [ 0, %331 ]
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %332, %22
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i64* @vmalloc(i32) #1

declare dso_local i32 @pci_read_vpd(i32, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pci_vpd_lrdt_size(i64*) #1

declare dso_local i32 @pci_vpd_find_tag(i64*, i32, i32, i32) #1

declare dso_local i32 @pci_vpd_find_info_keyword(...) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @strim(i8*) #1

declare dso_local i32 @pci_vpd_info_field_size(i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
