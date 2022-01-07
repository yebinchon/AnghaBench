; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csid_device = type { i64, %struct.v4l2_mbus_framefmt*, %struct.TYPE_2__*, %struct.csid_phy_config, i32, i32, i32*, i32, %struct.csid_testgen_config }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.csid_phy_config = type { i32, i32, i32 }
%struct.csid_testgen_config = type { i32, i64 }
%struct.csid_format = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not sync v4l2 controls: %d\0A\00", align 1
@MSM_CSID_PAD_SINK = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@MSM_CSID_PAD_SRC = common dso_local global i64 0, align 8
@CAMSS_CSID_TG_VC_CFG_V_BLANKING = common dso_local global i32 0, align 4
@CAMSS_CSID_TG_VC_CFG_H_BLANKING = common dso_local global i32 0, align 4
@CAMSS_CSID_CORE_CTRL_0 = common dso_local global i64 0, align 8
@CAMSS_CSID_CORE_CTRL_1 = common dso_local global i64 0, align 8
@CAMSS_CSID_CID_n_CFG_ISPIF_EN = common dso_local global i32 0, align 4
@CAMSS_CSID_CID_n_CFG_RDI_EN = common dso_local global i32 0, align 4
@CAMSS_CSID_CID_n_CFG_DECODE_FORMAT_SHIFT = common dso_local global i32 0, align 4
@CAMSS_CSID_CID_n_CFG_RDI_MODE_RAW_DUMP = common dso_local global i32 0, align 4
@CAMSS_8x96 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y10_2X8_PADHI_LE = common dso_local global i32 0, align 4
@CAMSS_CSID_CID_n_CFG_RDI_MODE_PLAIN_PACKING = common dso_local global i32 0, align 4
@CAMSS_CSID_CID_n_CFG_PLAIN_FORMAT_16 = common dso_local global i32 0, align 4
@CAMSS_CSID_CID_n_CFG_PLAIN_ALIGNMENT_LSB = common dso_local global i32 0, align 4
@CAMSS_CSID_TG_CTRL_ENABLE = common dso_local global i32 0, align 4
@CAMSS_CSID_TG_CTRL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @csid_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csid_device*, align 8
  %7 = alloca %struct.csid_testgen_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %17 = alloca %struct.csid_format*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %21 = alloca %struct.csid_format*, align 8
  %22 = alloca %struct.csid_phy_config*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = call %struct.csid_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %25)
  store %struct.csid_device* %26, %struct.csid_device** %6, align 8
  %27 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %28 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %27, i32 0, i32 8
  store %struct.csid_testgen_config* %28, %struct.csid_testgen_config** %7, align 8
  %29 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %30 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %331

36:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %40 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %39, i32 0, i32 7
  %41 = call i32 @v4l2_ctrl_handler_setup(i32* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %46 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %3, align 4
  br label %348

53:                                               ; preds = %36
  %54 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %7, align 8
  %55 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %60 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @MSM_CSID_PAD_SINK, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @media_entity_remote_pad(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOLINK, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %348

69:                                               ; preds = %58, %53
  %70 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %7, align 8
  %71 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %160

74:                                               ; preds = %69
  %75 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %76 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %75, i32 0, i32 1
  %77 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %76, align 8
  %78 = load i64, i64* @MSM_CSID_PAD_SRC, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i64 %78
  store %struct.v4l2_mbus_framefmt* %79, %struct.v4l2_mbus_framefmt** %16, align 8
  %80 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %81 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %84 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.csid_format* @csid_get_fmt_entry(i32 %82, i32 %85, i32 %88)
  store %struct.csid_format* %89, %struct.csid_format** %17, align 8
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.csid_format*, %struct.csid_format** %17, align 8
  %94 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.csid_format*, %struct.csid_format** %17, align 8
  %98 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = sdiv i32 %100, 8
  store i32 %101, i32* %18, align 4
  %102 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %103 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* @CAMSS_CSID_TG_VC_CFG_V_BLANKING, align 4
  %106 = and i32 %105, 255
  %107 = shl i32 %106, 24
  %108 = load i32, i32* @CAMSS_CSID_TG_VC_CFG_H_BLANKING, align 4
  %109 = and i32 %108, 2047
  %110 = shl i32 %109, 13
  %111 = or i32 %107, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %114 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @CAMSS_CSID_TG_VC_CFG(i32 %116)
  %118 = add nsw i64 %115, %117
  %119 = call i32 @writel_relaxed(i32 %112, i64 %118)
  %120 = load i32, i32* %18, align 4
  %121 = and i32 %120, 8191
  %122 = shl i32 %121, 16
  %123 = load i32, i32* %19, align 4
  %124 = and i32 %123, 8191
  %125 = or i32 %122, %124
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %128 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i64 @CAMSS_CSID_TG_DT_n_CGG_0(i32 %130, i32 0)
  %132 = add nsw i64 %129, %131
  %133 = call i32 @writel_relaxed(i32 %126, i64 %132)
  %134 = load %struct.csid_format*, %struct.csid_format** %17, align 8
  %135 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %140 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i64 @CAMSS_CSID_TG_DT_n_CGG_1(i32 %142, i32 0)
  %144 = add nsw i64 %141, %143
  %145 = call i32 @writel_relaxed(i32 %138, i64 %144)
  %146 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %7, align 8
  %147 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %151 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i64 @CAMSS_CSID_TG_DT_n_CGG_2(i32 %153, i32 0)
  %155 = add nsw i64 %152, %154
  %156 = call i32 @writel_relaxed(i32 %149, i64 %155)
  %157 = load %struct.csid_format*, %struct.csid_format** %17, align 8
  %158 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %14, align 4
  br label %214

160:                                              ; preds = %69
  %161 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %162 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %161, i32 0, i32 1
  %163 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %162, align 8
  %164 = load i64, i64* @MSM_CSID_PAD_SINK, align 8
  %165 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %163, i64 %164
  store %struct.v4l2_mbus_framefmt* %165, %struct.v4l2_mbus_framefmt** %20, align 8
  %166 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %167 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %170 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %173 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call %struct.csid_format* @csid_get_fmt_entry(i32 %168, i32 %171, i32 %174)
  store %struct.csid_format* %175, %struct.csid_format** %21, align 8
  %176 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %177 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %176, i32 0, i32 3
  store %struct.csid_phy_config* %177, %struct.csid_phy_config** %22, align 8
  %178 = load %struct.csid_phy_config*, %struct.csid_phy_config** %22, align 8
  %179 = getelementptr inbounds %struct.csid_phy_config, %struct.csid_phy_config* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  %182 = load %struct.csid_phy_config*, %struct.csid_phy_config** %22, align 8
  %183 = getelementptr inbounds %struct.csid_phy_config, %struct.csid_phy_config* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 4
  %186 = load i32, i32* %9, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %190 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @CAMSS_CSID_CORE_CTRL_0, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel_relaxed(i32 %188, i64 %193)
  %195 = load %struct.csid_phy_config*, %struct.csid_phy_config** %22, align 8
  %196 = getelementptr inbounds %struct.csid_phy_config, %struct.csid_phy_config* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 17
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = or i32 %199, 9
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %203 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @CAMSS_CSID_CORE_CTRL_1, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writel_relaxed(i32 %201, i64 %206)
  %208 = load %struct.csid_format*, %struct.csid_format** %21, align 8
  %209 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %12, align 4
  %211 = load %struct.csid_format*, %struct.csid_format** %21, align 8
  %212 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %160, %74
  %215 = load i32, i32* %11, align 4
  %216 = srem i32 %215, 4
  %217 = mul nsw i32 %216, 8
  store i32 %217, i32* %13, align 4
  %218 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %219 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i64 @CAMSS_CSID_CID_LUT_VC_n(i32 %221, i32 %222)
  %224 = add nsw i64 %220, %223
  %225 = call i32 @readl_relaxed(i64 %224)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %13, align 4
  %227 = shl i32 255, %226
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %9, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %13, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* %9, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %238 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i64 @CAMSS_CSID_CID_LUT_VC_n(i32 %240, i32 %241)
  %243 = add nsw i64 %239, %242
  %244 = call i32 @writel_relaxed(i32 %236, i64 %243)
  %245 = load i32, i32* @CAMSS_CSID_CID_n_CFG_ISPIF_EN, align 4
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* @CAMSS_CSID_CID_n_CFG_RDI_EN, align 4
  %247 = load i32, i32* %9, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* @CAMSS_CSID_CID_n_CFG_DECODE_FORMAT_SHIFT, align 4
  %251 = shl i32 %249, %250
  %252 = load i32, i32* %9, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* @CAMSS_CSID_CID_n_CFG_RDI_MODE_RAW_DUMP, align 4
  %255 = load i32, i32* %9, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %9, align 4
  %257 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %258 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %257, i32 0, i32 2
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = load i64, i64* @CAMSS_8x96, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %306

265:                                              ; preds = %214
  %266 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %267 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %266, i32 0, i32 1
  %268 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %267, align 8
  %269 = load i64, i64* @MSM_CSID_PAD_SINK, align 8
  %270 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %268, i64 %269
  %271 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %23, align 4
  %273 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %274 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %273, i32 0, i32 1
  %275 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %274, align 8
  %276 = load i64, i64* @MSM_CSID_PAD_SRC, align 8
  %277 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %275, i64 %276
  %278 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %24, align 4
  %280 = load i32, i32* %23, align 4
  %281 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_1X10, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %265
  %284 = load i32, i32* %24, align 4
  %285 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %283, %265
  %288 = load i32, i32* %23, align 4
  %289 = load i32, i32* @MEDIA_BUS_FMT_Y10_1X10, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %305

291:                                              ; preds = %287
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* @MEDIA_BUS_FMT_Y10_2X8_PADHI_LE, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %291, %283
  %296 = load i32, i32* @CAMSS_CSID_CID_n_CFG_RDI_MODE_PLAIN_PACKING, align 4
  %297 = load i32, i32* %9, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* @CAMSS_CSID_CID_n_CFG_PLAIN_FORMAT_16, align 4
  %300 = load i32, i32* %9, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* @CAMSS_CSID_CID_n_CFG_PLAIN_ALIGNMENT_LSB, align 4
  %303 = load i32, i32* %9, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %295, %291, %287
  br label %306

306:                                              ; preds = %305, %214
  %307 = load i32, i32* %9, align 4
  %308 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %309 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %11, align 4
  %313 = call i64 @CAMSS_CSID_CID_n_CFG(i32 %311, i32 %312)
  %314 = add nsw i64 %310, %313
  %315 = call i32 @writel_relaxed(i32 %307, i64 %314)
  %316 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %7, align 8
  %317 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %306
  %321 = load i32, i32* @CAMSS_CSID_TG_CTRL_ENABLE, align 4
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %9, align 4
  %323 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %324 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = call i64 @CAMSS_CSID_TG_CTRL(i32 %326)
  %328 = add nsw i64 %325, %327
  %329 = call i32 @writel_relaxed(i32 %322, i64 %328)
  br label %330

330:                                              ; preds = %320, %306
  br label %347

331:                                              ; preds = %2
  %332 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %7, align 8
  %333 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %346

336:                                              ; preds = %331
  %337 = load i32, i32* @CAMSS_CSID_TG_CTRL_DISABLE, align 4
  store i32 %337, i32* %9, align 4
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %340 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %8, align 4
  %343 = call i64 @CAMSS_CSID_TG_CTRL(i32 %342)
  %344 = add nsw i64 %341, %343
  %345 = call i32 @writel_relaxed(i32 %338, i64 %344)
  br label %346

346:                                              ; preds = %336, %331
  br label %347

347:                                              ; preds = %346, %330
  store i32 0, i32* %3, align 4
  br label %348

348:                                              ; preds = %347, %66, %44
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local %struct.csid_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @media_entity_remote_pad(i32*) #1

declare dso_local %struct.csid_format* @csid_get_fmt_entry(i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CAMSS_CSID_TG_VC_CFG(i32) #1

declare dso_local i64 @CAMSS_CSID_TG_DT_n_CGG_0(i32, i32) #1

declare dso_local i64 @CAMSS_CSID_TG_DT_n_CGG_1(i32, i32) #1

declare dso_local i64 @CAMSS_CSID_TG_DT_n_CGG_2(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CAMSS_CSID_CID_LUT_VC_n(i32, i32) #1

declare dso_local i64 @CAMSS_CSID_CID_n_CFG(i32, i32) #1

declare dso_local i64 @CAMSS_CSID_TG_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
