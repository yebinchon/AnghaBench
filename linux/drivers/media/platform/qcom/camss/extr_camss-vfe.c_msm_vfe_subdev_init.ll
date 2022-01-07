; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_msm_vfe_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_msm_vfe_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.camss = type { i64, %struct.device* }
%struct.device = type { i32 }
%struct.vfe_device = type { i64, i32, i32, %struct.vfe_line*, i64, i32, %struct.camss*, i32, i64, i32, i64, i32, %struct.camss_clock*, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__ }
%struct.vfe_line = type { i32, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.camss*, i32 }
%struct.camss_clock = type { i64, i64*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.resources = type { i64**, i32*, i32*, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@vfe_isr_reset_ack = common dso_local global i32 0, align 4
@vfe_isr_halt_ack = common dso_local global i32 0, align 4
@vfe_isr_reg_update = common dso_local global i32 0, align 4
@vfe_isr_sof = common dso_local global i32 0, align 4
@vfe_isr_comp_done = common dso_local global i32 0, align 4
@vfe_isr_wm_done = common dso_local global i32 0, align 4
@CAMSS_8x16 = common dso_local global i64 0, align 8
@vfe_ops_4_1 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CAMSS_8x96 = common dso_local global i64 0, align 8
@vfe_ops_4_7 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s_%s%d\00", align 1
@MSM_VFE_NAME = common dso_local global i8* null, align 8
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFE_LINE_RDI0 = common dso_local global i32 0, align 4
@VFE_LINE_PIX = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@formats_pix_8x16 = common dso_local global i8* null, align 8
@formats_rdi_8x16 = common dso_local global i8* null, align 8
@formats_pix_8x96 = common dso_local global i8* null, align 8
@formats_rdi_8x96 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_vfe_subdev_init(%struct.camss* %0, %struct.vfe_device* %1, %struct.resources* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.camss*, align 8
  %7 = alloca %struct.vfe_device*, align 8
  %8 = alloca %struct.resources*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.camss_clock*, align 8
  %17 = alloca %struct.vfe_line*, align 8
  store %struct.camss* %0, %struct.camss** %6, align 8
  store %struct.vfe_device* %1, %struct.vfe_device** %7, align 8
  store %struct.resources* %2, %struct.resources** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.camss*, %struct.camss** %6, align 8
  %19 = getelementptr inbounds %struct.camss, %struct.camss* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.device*, %struct.device** %10, align 8
  %22 = call %struct.platform_device* @to_platform_device(%struct.device* %21)
  store %struct.platform_device* %22, %struct.platform_device** %11, align 8
  %23 = load i32, i32* @vfe_isr_reset_ack, align 4
  %24 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %25 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %24, i32 0, i32 17
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @vfe_isr_halt_ack, align 4
  %28 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %29 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %28, i32 0, i32 17
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @vfe_isr_reg_update, align 4
  %32 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %33 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %32, i32 0, i32 17
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @vfe_isr_sof, align 4
  %36 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %37 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %36, i32 0, i32 17
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @vfe_isr_comp_done, align 4
  %40 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %41 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %40, i32 0, i32 17
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @vfe_isr_wm_done, align 4
  %44 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %45 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %44, i32 0, i32 17
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.camss*, %struct.camss** %6, align 8
  %48 = getelementptr inbounds %struct.camss, %struct.camss* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CAMSS_8x16, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %54 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %53, i32 0, i32 14
  store %struct.TYPE_9__* @vfe_ops_4_1, %struct.TYPE_9__** %54, align 8
  br label %68

55:                                               ; preds = %4
  %56 = load %struct.camss*, %struct.camss** %6, align 8
  %57 = getelementptr inbounds %struct.camss, %struct.camss* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CAMSS_8x96, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %63 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %62, i32 0, i32 14
  store %struct.TYPE_9__* @vfe_ops_4_7, %struct.TYPE_9__** %63, align 8
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %429

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %70 = load i32, i32* @IORESOURCE_MEM, align 4
  %71 = load %struct.resources*, %struct.resources** %8, align 8
  %72 = getelementptr inbounds %struct.resources, %struct.resources* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %69, i32 %70, i32 %75)
  store %struct.resource* %76, %struct.resource** %12, align 8
  %77 = load %struct.device*, %struct.device** %10, align 8
  %78 = load %struct.resource*, %struct.resource** %12, align 8
  %79 = call i32 @devm_ioremap_resource(%struct.device* %77, %struct.resource* %78)
  %80 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %81 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %80, i32 0, i32 16
  store i32 %79, i32* %81, align 4
  %82 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %83 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %10, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %91 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %90, i32 0, i32 16
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %5, align 4
  br label %429

94:                                               ; preds = %68
  %95 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %96 = load i32, i32* @IORESOURCE_IRQ, align 4
  %97 = load %struct.resources*, %struct.resources** %8, align 8
  %98 = getelementptr inbounds %struct.resources, %struct.resources* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %95, i32 %96, i32 %101)
  store %struct.resource* %102, %struct.resource** %12, align 8
  %103 = load %struct.resource*, %struct.resource** %12, align 8
  %104 = icmp ne %struct.resource* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %94
  %106 = load %struct.device*, %struct.device** %10, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %429

110:                                              ; preds = %94
  %111 = load %struct.resource*, %struct.resource** %12, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %115 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %114, i32 0, i32 15
  store i32 %113, i32* %115, align 8
  %116 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %117 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.device*, %struct.device** %10, align 8
  %120 = call i8* @dev_name(%struct.device* %119)
  %121 = load i8*, i8** @MSM_VFE_NAME, align 8
  %122 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %123 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @snprintf(i32 %118, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %120, i8* %121, i32 %124)
  %126 = load %struct.device*, %struct.device** %10, align 8
  %127 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %128 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %127, i32 0, i32 15
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %131 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %130, i32 0, i32 14
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %136 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %137 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %140 = call i32 @devm_request_irq(%struct.device* %126, i32 %129, i32 %134, i32 %135, i32 %138, %struct.vfe_device* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %110
  %144 = load %struct.device*, %struct.device** %10, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %5, align 4
  br label %429

148:                                              ; preds = %110
  %149 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %150 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %161, %148
  %152 = load %struct.resources*, %struct.resources** %8, align 8
  %153 = getelementptr inbounds %struct.resources, %struct.resources* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %156 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  %162 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %163 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %151

166:                                              ; preds = %151
  %167 = load %struct.device*, %struct.device** %10, align 8
  %168 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %169 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @devm_kcalloc(%struct.device* %167, i64 %170, i32 24, i32 %171)
  %173 = bitcast i8* %172 to %struct.camss_clock*
  %174 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %175 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %174, i32 0, i32 12
  store %struct.camss_clock* %173, %struct.camss_clock** %175, align 8
  %176 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %177 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %176, i32 0, i32 12
  %178 = load %struct.camss_clock*, %struct.camss_clock** %177, align 8
  %179 = icmp ne %struct.camss_clock* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %166
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %5, align 4
  br label %429

183:                                              ; preds = %166
  store i32 0, i32* %13, align 4
  br label %184

184:                                              ; preds = %305, %183
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %188 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %308

191:                                              ; preds = %184
  %192 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %193 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %192, i32 0, i32 12
  %194 = load %struct.camss_clock*, %struct.camss_clock** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %194, i64 %196
  store %struct.camss_clock* %197, %struct.camss_clock** %16, align 8
  %198 = load %struct.device*, %struct.device** %10, align 8
  %199 = load %struct.resources*, %struct.resources** %8, align 8
  %200 = getelementptr inbounds %struct.resources, %struct.resources* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @devm_clk_get(%struct.device* %198, i32 %205)
  %207 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %208 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %210 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @IS_ERR(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %191
  %215 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %216 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @PTR_ERR(i32 %217)
  store i32 %218, i32* %5, align 4
  br label %429

219:                                              ; preds = %191
  %220 = load %struct.resources*, %struct.resources** %8, align 8
  %221 = getelementptr inbounds %struct.resources, %struct.resources* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %228 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %230 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %229, i32 0, i32 0
  store i64 0, i64* %230, align 8
  br label %231

231:                                              ; preds = %245, %219
  %232 = load %struct.resources*, %struct.resources** %8, align 8
  %233 = getelementptr inbounds %struct.resources, %struct.resources* %232, i32 0, i32 0
  %234 = load i64**, i64*** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64*, i64** %234, i64 %236
  %238 = load i64*, i64** %237, align 8
  %239 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %240 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds i64, i64* %238, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %231
  %246 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %247 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %247, align 8
  br label %231

250:                                              ; preds = %231
  %251 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %252 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %250
  %256 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %257 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %256, i32 0, i32 1
  store i64* null, i64** %257, align 8
  br label %305

258:                                              ; preds = %250
  %259 = load %struct.device*, %struct.device** %10, align 8
  %260 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %261 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call i8* @devm_kcalloc(%struct.device* %259, i64 %262, i32 8, i32 %263)
  %265 = bitcast i8* %264 to i64*
  %266 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %267 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %266, i32 0, i32 1
  store i64* %265, i64** %267, align 8
  %268 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %269 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = icmp ne i64* %270, null
  br i1 %271, label %275, label %272

272:                                              ; preds = %258
  %273 = load i32, i32* @ENOMEM, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %5, align 4
  br label %429

275:                                              ; preds = %258
  store i32 0, i32* %14, align 4
  br label %276

276:                                              ; preds = %301, %275
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %280 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ult i64 %278, %281
  br i1 %282, label %283, label %304

283:                                              ; preds = %276
  %284 = load %struct.resources*, %struct.resources** %8, align 8
  %285 = getelementptr inbounds %struct.resources, %struct.resources* %284, i32 0, i32 0
  %286 = load i64**, i64*** %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64*, i64** %286, i64 %288
  %290 = load i64*, i64** %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %296 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %295, i32 0, i32 1
  %297 = load i64*, i64** %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  store i64 %294, i64* %300, align 8
  br label %301

301:                                              ; preds = %283
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %14, align 4
  br label %276

304:                                              ; preds = %276
  br label %305

305:                                              ; preds = %304, %255
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %184

308:                                              ; preds = %184
  %309 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %310 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %309, i32 0, i32 11
  %311 = call i32 @mutex_init(i32* %310)
  %312 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %313 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %312, i32 0, i32 10
  store i64 0, i64* %313, align 8
  %314 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %315 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %314, i32 0, i32 9
  %316 = call i32 @mutex_init(i32* %315)
  %317 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %318 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %317, i32 0, i32 8
  store i64 0, i64* %318, align 8
  %319 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %320 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %319, i32 0, i32 7
  %321 = call i32 @spin_lock_init(i32* %320)
  %322 = load %struct.camss*, %struct.camss** %6, align 8
  %323 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %324 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %323, i32 0, i32 6
  store %struct.camss* %322, %struct.camss** %324, align 8
  %325 = load i32, i32* %9, align 4
  %326 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %327 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %326, i32 0, i32 5
  store i32 %325, i32* %327, align 8
  %328 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %329 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %328, i32 0, i32 4
  store i64 0, i64* %329, align 8
  %330 = load i32, i32* @VFE_LINE_RDI0, align 4
  store i32 %330, i32* %13, align 4
  br label %331

331:                                              ; preds = %419, %308
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* @VFE_LINE_PIX, align 4
  %334 = icmp sle i32 %332, %333
  br i1 %334, label %335, label %422

335:                                              ; preds = %331
  %336 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %337 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %336, i32 0, i32 3
  %338 = load %struct.vfe_line*, %struct.vfe_line** %337, align 8
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %338, i64 %340
  store %struct.vfe_line* %341, %struct.vfe_line** %17, align 8
  %342 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %343 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %344 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %343, i32 0, i32 4
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  store i32 %342, i32* %345, align 8
  %346 = load %struct.camss*, %struct.camss** %6, align 8
  %347 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %348 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  store %struct.camss* %346, %struct.camss** %349, align 8
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %352 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %351, i32 0, i32 0
  store i32 %350, i32* %352, align 8
  %353 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %354 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = call i32 @init_completion(i32* %355)
  %357 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %358 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 0
  %360 = call i32 @init_completion(i32* %359)
  %361 = load %struct.camss*, %struct.camss** %6, align 8
  %362 = getelementptr inbounds %struct.camss, %struct.camss* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @CAMSS_8x16, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %387

366:                                              ; preds = %335
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* @VFE_LINE_PIX, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %378

370:                                              ; preds = %366
  %371 = load i8*, i8** @formats_pix_8x16, align 8
  %372 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %373 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %372, i32 0, i32 2
  store i8* %371, i8** %373, align 8
  %374 = load i8*, i8** @formats_pix_8x16, align 8
  %375 = call i8* @ARRAY_SIZE(i8* %374)
  %376 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %377 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %376, i32 0, i32 1
  store i8* %375, i8** %377, align 8
  br label %386

378:                                              ; preds = %366
  %379 = load i8*, i8** @formats_rdi_8x16, align 8
  %380 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %381 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %380, i32 0, i32 2
  store i8* %379, i8** %381, align 8
  %382 = load i8*, i8** @formats_rdi_8x16, align 8
  %383 = call i8* @ARRAY_SIZE(i8* %382)
  %384 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %385 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %384, i32 0, i32 1
  store i8* %383, i8** %385, align 8
  br label %386

386:                                              ; preds = %378, %370
  br label %418

387:                                              ; preds = %335
  %388 = load %struct.camss*, %struct.camss** %6, align 8
  %389 = getelementptr inbounds %struct.camss, %struct.camss* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @CAMSS_8x96, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %414

393:                                              ; preds = %387
  %394 = load i32, i32* %13, align 4
  %395 = load i32, i32* @VFE_LINE_PIX, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %405

397:                                              ; preds = %393
  %398 = load i8*, i8** @formats_pix_8x96, align 8
  %399 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %400 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %399, i32 0, i32 2
  store i8* %398, i8** %400, align 8
  %401 = load i8*, i8** @formats_pix_8x96, align 8
  %402 = call i8* @ARRAY_SIZE(i8* %401)
  %403 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %404 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %403, i32 0, i32 1
  store i8* %402, i8** %404, align 8
  br label %413

405:                                              ; preds = %393
  %406 = load i8*, i8** @formats_rdi_8x96, align 8
  %407 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %408 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %407, i32 0, i32 2
  store i8* %406, i8** %408, align 8
  %409 = load i8*, i8** @formats_rdi_8x96, align 8
  %410 = call i8* @ARRAY_SIZE(i8* %409)
  %411 = load %struct.vfe_line*, %struct.vfe_line** %17, align 8
  %412 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %411, i32 0, i32 1
  store i8* %410, i8** %412, align 8
  br label %413

413:                                              ; preds = %405, %397
  br label %417

414:                                              ; preds = %387
  %415 = load i32, i32* @EINVAL, align 4
  %416 = sub nsw i32 0, %415
  store i32 %416, i32* %5, align 4
  br label %429

417:                                              ; preds = %413
  br label %418

418:                                              ; preds = %417, %386
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %13, align 4
  br label %331

422:                                              ; preds = %331
  %423 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %424 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %423, i32 0, i32 2
  %425 = call i32 @init_completion(i32* %424)
  %426 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %427 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %426, i32 0, i32 1
  %428 = call i32 @init_completion(i32* %427)
  store i32 0, i32* %5, align 4
  br label %429

429:                                              ; preds = %422, %414, %272, %214, %180, %143, %105, %87, %64
  %430 = load i32, i32* %5, align 4
  ret i32 %430
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.vfe_device*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
