; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, i32, %struct.TYPE_3__**, i32, %struct.if_cs_card* }
%struct.TYPE_3__ = type { i32 }
%struct.if_cs_card = type { i32, i64, i32, %struct.lbs_private*, %struct.pcmcia_device* }
%struct.lbs_private = type { i32*, i32*, i32*, i32, %struct.if_cs_card* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@if_cs_ioprobe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error in pcmcia_loop_config\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error in ioport_map\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error in pcmcia_enable_device\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"irq %d, io %pR\00", align 1
@MODEL_UNKNOWN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"unsupported manf_id 0x%04x / card_id 0x%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IF_CS_PRODUCT_ID = common dso_local global i32 0, align 4
@MODEL_8305 = common dso_local global i64 0, align 8
@IF_CS_CF8305_B1_REV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"8305 rev B0 and older are not supported\0A\00", align 1
@MODEL_8381 = common dso_local global i64 0, align 8
@IF_CS_CF8381_B3_REV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"8381 rev B2 and older are not supported\0A\00", align 1
@MODEL_8385 = common dso_local global i64 0, align 8
@IF_CS_CF8385_B1_REV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"8385 rev B0 and older are not supported\0A\00", align 1
@if_cs_host_to_card = common dso_local global i32 0, align 4
@fw_table = common dso_local global i32 0, align 4
@if_cs_prog_firmware = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to find firmware (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @if_cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca %struct.if_cs_card*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.if_cs_card* @kzalloc(i32 40, i32 %9)
  store %struct.if_cs_card* %10, %struct.if_cs_card** %6, align 8
  %11 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %12 = icmp ne %struct.if_cs_card* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %209

14:                                               ; preds = %1
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %16 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %17 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %16, i32 0, i32 4
  store %struct.pcmcia_device* %15, %struct.pcmcia_device** %17, align 8
  %18 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 6
  store %struct.if_cs_card* %18, %struct.if_cs_card** %20, align 8
  %21 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %22 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %29 = load i32, i32* @if_cs_ioprobe, align 4
  %30 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %28, i32 %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %206

34:                                               ; preds = %14
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %206

40:                                               ; preds = %34
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @resource_size(%struct.TYPE_3__* %52)
  %54 = call i32 @ioport_map(i32 %47, i32 %53)
  %55 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %56 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %58 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %40
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %206

65:                                               ; preds = %40
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %67 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %201

72:                                               ; preds = %65
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %78, i64 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i32 @lbs_deb_cs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %75, %struct.TYPE_3__* %80)
  %82 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %83 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %85 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %88 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @get_model(i32 %86, i32 %89)
  %91 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %92 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %94 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MODEL_UNKNOWN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %72
  %99 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %100 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %103 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %201

108:                                              ; preds = %72
  %109 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %110 = load i32, i32* @IF_CS_PRODUCT_ID, align 4
  %111 = call i32 @if_cs_read8(%struct.if_cs_card* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %113 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MODEL_8305, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %108
  %118 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %119 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @IF_CS_CF8305_B1_REV, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %201

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %130 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MODEL_8381, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @IF_CS_CF8381_B3_REV, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %201

142:                                              ; preds = %134, %128
  %143 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %144 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MODEL_8385, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @IF_CS_CF8385_B1_REV, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %201

156:                                              ; preds = %148, %142
  %157 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %158 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %159 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %158, i32 0, i32 1
  %160 = call %struct.lbs_private* @lbs_add_card(%struct.if_cs_card* %157, i32* %159)
  store %struct.lbs_private* %160, %struct.lbs_private** %5, align 8
  %161 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %162 = call i64 @IS_ERR(%struct.lbs_private* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %166 = call i32 @PTR_ERR(%struct.lbs_private* %165)
  store i32 %166, i32* %3, align 4
  br label %201

167:                                              ; preds = %156
  %168 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %169 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %170 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %169, i32 0, i32 3
  store %struct.lbs_private* %168, %struct.lbs_private** %170, align 8
  %171 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %172 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %173 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %172, i32 0, i32 4
  store %struct.if_cs_card* %171, %struct.if_cs_card** %173, align 8
  %174 = load i32, i32* @if_cs_host_to_card, align 4
  %175 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %176 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %178 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %177, i32 0, i32 2
  store i32* null, i32** %178, align 8
  %179 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %180 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %179, i32 0, i32 1
  store i32* null, i32** %180, align 8
  %181 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %182 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  %183 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %184 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %185 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %184, i32 0, i32 1
  %186 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %187 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @fw_table, align 4
  %190 = load i32, i32* @if_cs_prog_firmware, align 4
  %191 = call i32 @lbs_get_firmware_async(%struct.lbs_private* %183, i32* %185, i64 %188, i32 %189, i32 %190)
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* %3, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %167
  %195 = load i32, i32* %3, align 4
  %196 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  br label %198

197:                                              ; preds = %167
  br label %209

198:                                              ; preds = %194
  %199 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %200 = call i32 @lbs_remove_card(%struct.lbs_private* %199)
  br label %201

201:                                              ; preds = %198, %164, %152, %138, %123, %98, %70
  %202 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %203 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ioport_unmap(i32 %204)
  br label %206

206:                                              ; preds = %201, %61, %39, %32
  %207 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %208 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %207)
  br label %209

209:                                              ; preds = %206, %197, %13
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.if_cs_card* @kzalloc(i32, i32) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ioport_map(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_3__*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @lbs_deb_cs(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @get_model(i32, i32) #1

declare dso_local i32 @if_cs_read8(%struct.if_cs_card*, i32) #1

declare dso_local %struct.lbs_private* @lbs_add_card(%struct.if_cs_card*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lbs_private*) #1

declare dso_local i32 @PTR_ERR(%struct.lbs_private*) #1

declare dso_local i32 @lbs_get_firmware_async(%struct.lbs_private*, i32*, i64, i32, i32) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
