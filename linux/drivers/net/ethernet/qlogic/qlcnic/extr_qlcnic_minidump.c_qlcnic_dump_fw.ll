; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dump_operations = type { i64, i32 (%struct.qlcnic_adapter.0*, %struct.qlcnic_dump_entry*, i32*)* }
%struct.qlcnic_adapter.0 = type opaque
%struct.qlcnic_dump_entry = type opaque
%struct.qlcnic_adapter = type { %struct.TYPE_7__*, i32, %struct.qlcnic_hardware_context*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i8* }
%struct.qlcnic_hardware_context = type { i64, %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, i32, i32, i32, i32, i8*, i32, i32* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_83xx_dump_template_hdr = type { i32*, i32* }
%struct.qlcnic_dump_entry.1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Dump not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Previous dump not cleared, not capturing dump\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Take FW dump\0A\00", align 1
@QLCNIC_DUMP_MASK_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_DRIVER_VERSION = common dso_local global i32 0, align 4
@qlcnic_fw_dump_ops = common dso_local global %struct.qlcnic_dump_operations* null, align 8
@qlcnic_83xx_fw_dump_ops = common dso_local global %struct.qlcnic_dump_operations* null, align 8
@QLC_83XX_OCM_INDEX = common dso_local global i64 0, align 8
@QLC_83XX_PCI_INDEX = common dso_local global i64 0, align 8
@QLCNIC_DUMP_SKIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Skipping unknown entry opcode %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"FW_DUMP=%s\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"Dump data %d bytes captured, dump data address = %p, template header size %d bytes, template address = %p\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_dump_fw(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_fw_dump*, align 8
  %5 = alloca %struct.qlcnic_dump_operations*, align 8
  %6 = alloca %struct.qlcnic_83xx_dump_template_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.qlcnic_hardware_context*, align 8
  %18 = alloca %struct.qlcnic_dump_entry.1*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca [64 x i8], align 16
  %23 = alloca [2 x i8*], align 16
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 2
  %26 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %25, align 8
  %27 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %26, i32 0, i32 1
  store %struct.qlcnic_fw_dump* %27, %struct.qlcnic_fw_dump** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.device* %31, %struct.device** %16, align 8
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* null, i8** %34, align 8
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 2
  %37 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %36, align 8
  store %struct.qlcnic_hardware_context* %37, %struct.qlcnic_hardware_context** %17, align 8
  %38 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %19, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %345

46:                                               ; preds = %1
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = call i32 @qlcnic_check_fw_dump_state(%struct.qlcnic_adapter* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %345

58:                                               ; preds = %46
  %59 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %60 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %345

71:                                               ; preds = %58
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 2
  %74 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %73, align 8
  %75 = load i32, i32* @drv, align 4
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 @netif_info(%struct.qlcnic_hardware_context* %74, i32 %75, %struct.TYPE_7__* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %102, %71
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @QLCNIC_DUMP_MASK_MAX, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %88 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @qlcnic_get_cap_size(%struct.qlcnic_adapter* %93, i8* %94, i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %92, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %80

107:                                              ; preds = %80
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %345

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = call i32* @vzalloc(i32 %114)
  %116 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %117 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %116, i32 0, i32 7
  store i32* %115, i32** %117, align 8
  %118 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %119 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %345

125:                                              ; preds = %113
  %126 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %127 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %126, i32 0, i32 7
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %21, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %131 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %133 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  %135 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %136 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %7, align 4
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = load i32, i32* @QLCNIC_DRIVER_VERSION, align 4
  %141 = call i32 @qlcnic_set_sys_info(%struct.qlcnic_adapter* %138, i8* %139, i32 0, i32 %140)
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @qlcnic_set_sys_info(%struct.qlcnic_adapter* %142, i8* %143, i32 1, i32 %146)
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %149 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %125
  %152 = load %struct.qlcnic_dump_operations*, %struct.qlcnic_dump_operations** @qlcnic_fw_dump_ops, align 8
  %153 = call i32 @ARRAY_SIZE(%struct.qlcnic_dump_operations* %152)
  store i32 %153, i32* %13, align 4
  %154 = load %struct.qlcnic_dump_operations*, %struct.qlcnic_dump_operations** @qlcnic_fw_dump_ops, align 8
  store %struct.qlcnic_dump_operations* %154, %struct.qlcnic_dump_operations** %5, align 8
  br label %184

155:                                              ; preds = %125
  %156 = load i8*, i8** %19, align 8
  %157 = bitcast i8* %156 to %struct.qlcnic_83xx_dump_template_hdr*
  store %struct.qlcnic_83xx_dump_template_hdr* %157, %struct.qlcnic_83xx_dump_template_hdr** %6, align 8
  %158 = load %struct.qlcnic_dump_operations*, %struct.qlcnic_dump_operations** @qlcnic_83xx_fw_dump_ops, align 8
  %159 = call i32 @ARRAY_SIZE(%struct.qlcnic_dump_operations* %158)
  store i32 %159, i32* %13, align 4
  %160 = load %struct.qlcnic_dump_operations*, %struct.qlcnic_dump_operations** @qlcnic_83xx_fw_dump_ops, align 8
  store %struct.qlcnic_dump_operations* %160, %struct.qlcnic_dump_operations** %5, align 8
  %161 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, %struct.qlcnic_83xx_dump_template_hdr* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  %165 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %6, align 8
  %171 = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, %struct.qlcnic_83xx_dump_template_hdr* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @QLC_83XX_OCM_INDEX, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 %169, i32* %174, align 4
  %175 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  %176 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.qlcnic_83xx_dump_template_hdr*, %struct.qlcnic_83xx_dump_template_hdr** %6, align 8
  %180 = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, %struct.qlcnic_83xx_dump_template_hdr* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @QLC_83XX_PCI_INDEX, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %155, %151
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %311, %184
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %314

189:                                              ; preds = %185
  %190 = load i8*, i8** %19, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr i8, i8* %190, i64 %192
  %194 = bitcast i8* %193 to %struct.qlcnic_dump_entry.1*
  store %struct.qlcnic_dump_entry.1* %194, %struct.qlcnic_dump_entry.1** %18, align 8
  %195 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %196 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %200 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %198, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %217, label %204

204:                                              ; preds = %189
  %205 = load i32, i32* @QLCNIC_DUMP_SKIP, align 4
  %206 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %207 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %205
  store i32 %210, i32* %208, align 4
  %211 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %212 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %7, align 4
  br label %311

217:                                              ; preds = %189
  store i32 0, i32* %14, align 4
  br label %218

218:                                              ; preds = %235, %217
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %218
  %223 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %224 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.qlcnic_dump_operations*, %struct.qlcnic_dump_operations** %5, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.qlcnic_dump_operations, %struct.qlcnic_dump_operations* %227, i64 %229
  %231 = getelementptr inbounds %struct.qlcnic_dump_operations, %struct.qlcnic_dump_operations* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %226, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %238

235:                                              ; preds = %222
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %14, align 4
  br label %218

238:                                              ; preds = %234, %218
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %261

242:                                              ; preds = %238
  %243 = load %struct.device*, %struct.device** %16, align 8
  %244 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %245 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %243, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %247)
  %249 = load i32, i32* @QLCNIC_DUMP_SKIP, align 4
  %250 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %251 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %249
  store i32 %254, i32* %252, align 4
  %255 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %256 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %7, align 4
  br label %311

261:                                              ; preds = %238
  %262 = load %struct.qlcnic_dump_operations*, %struct.qlcnic_dump_operations** %5, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.qlcnic_dump_operations, %struct.qlcnic_dump_operations* %262, i64 %264
  %266 = getelementptr inbounds %struct.qlcnic_dump_operations, %struct.qlcnic_dump_operations* %265, i32 0, i32 1
  %267 = load i32 (%struct.qlcnic_adapter.0*, %struct.qlcnic_dump_entry*, i32*)*, i32 (%struct.qlcnic_adapter.0*, %struct.qlcnic_dump_entry*, i32*)** %266, align 8
  %268 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %269 = bitcast %struct.qlcnic_adapter* %268 to %struct.qlcnic_adapter.0*
  %270 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %271 = bitcast %struct.qlcnic_dump_entry.1* %270 to %struct.qlcnic_dump_entry*
  %272 = load i32*, i32** %21, align 8
  %273 = call i32 %267(%struct.qlcnic_adapter.0* %269, %struct.qlcnic_dump_entry* %271, i32* %272)
  store i32 %273, i32* %8, align 4
  %274 = load %struct.device*, %struct.device** %16, align 8
  %275 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @qlcnic_valid_dump_entry(%struct.device* %274, %struct.qlcnic_dump_entry.1* %275, i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %261
  %280 = load i32, i32* @QLCNIC_DUMP_SKIP, align 4
  %281 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %282 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %280
  store i32 %285, i32* %283, align 4
  %286 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %287 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %7, align 4
  br label %311

292:                                              ; preds = %261
  %293 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %294 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %10, align 4
  %299 = load %struct.qlcnic_dump_entry.1*, %struct.qlcnic_dump_entry.1** %18, align 8
  %300 = getelementptr inbounds %struct.qlcnic_dump_entry.1, %struct.qlcnic_dump_entry.1* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %7, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %7, align 4
  %305 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %306 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %305, i32 0, i32 7
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32* %310, i32** %21, align 8
  br label %311

311:                                              ; preds = %292, %279, %242, %204
  %312 = load i32, i32* %11, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %11, align 4
  br label %185

314:                                              ; preds = %185
  %315 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %316 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  %317 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %318 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %319 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %318, i32 0, i32 0
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @snprintf(i8* %317, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %322)
  %324 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %325 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %324, i32 0, i32 0
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %328 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %331 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %330, i32 0, i32 7
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %334 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %337 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %336, i32 0, i32 5
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @netdev_info(%struct.TYPE_7__* %326, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 %329, i32* %332, i32 %335, i8* %338)
  %340 = load %struct.device*, %struct.device** %16, align 8
  %341 = getelementptr inbounds %struct.device, %struct.device* %340, i32 0, i32 0
  %342 = load i32, i32* @KOBJ_CHANGE, align 4
  %343 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %344 = call i32 @kobject_uevent_env(i32* %341, i32 %342, i8** %343)
  store i32 0, i32* %2, align 4
  br label %345

345:                                              ; preds = %314, %122, %110, %63, %50, %43
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @qlcnic_check_fw_dump_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @netif_info(%struct.qlcnic_hardware_context*, i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i64 @qlcnic_get_cap_size(%struct.qlcnic_adapter*, i8*, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @qlcnic_set_sys_info(%struct.qlcnic_adapter*, i8*, i32, i32) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.qlcnic_dump_operations*) #1

declare dso_local i32 @qlcnic_valid_dump_entry(%struct.device*, %struct.qlcnic_dump_entry.1*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @netdev_info(%struct.TYPE_7__*, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
