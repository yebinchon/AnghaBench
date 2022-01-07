; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.sun4i_csi = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i64, %struct.TYPE_6__, i64, %struct.v4l2_fwnode_bus_parallel }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.v4l2_fwnode_bus_parallel = type { i32 }
%struct.sun4i_csi_format = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Starting capture\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate scratch buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CSI_WIN_CTRL_W_REG = common dso_local global i64 0, align 8
@CSI_WIN_CTRL_H_REG = common dso_local global i64 0, align 8
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@CSI_CFG_REG = common dso_local global i64 0, align 8
@CSI_BUF_LEN_REG = common dso_local global i64 0, align 8
@CSI_BUF_CTRL_DBE = common dso_local global i32 0, align 4
@CSI_BUF_CTRL_REG = common dso_local global i64 0, align 8
@CSI_INT_FRM_DONE = common dso_local global i32 0, align 4
@CSI_INT_EN_REG = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @sun4i_csi_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_csi_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun4i_csi*, align 8
  %7 = alloca %struct.v4l2_fwnode_bus_parallel*, align 8
  %8 = alloca %struct.sun4i_csi_format*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %16 = call %struct.sun4i_csi* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.sun4i_csi* %16, %struct.sun4i_csi** %6, align 8
  %17 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %18 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %17, i32 0, i32 8
  store %struct.v4l2_fwnode_bus_parallel* %18, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %19 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %20 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = call %struct.sun4i_csi_format* @sun4i_csi_find_format(i32* %21, i32* null)
  store %struct.sun4i_csi_format* %22, %struct.sun4i_csi_format** %8, align 8
  %23 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %8, align 8
  %24 = icmp ne %struct.sun4i_csi_format* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %286

28:                                               ; preds = %2
  %29 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %30 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %34 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %36 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %60, %28
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %41 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %47 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %56 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %54
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %13, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %65 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %68 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %72 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @dma_alloc_coherent(i32 %66, i64 %70, i32* %73, i32 %74)
  %76 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %77 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %80 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %63
  %85 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %86 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %273

91:                                               ; preds = %63
  %92 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %93 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %96 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = call i32 @media_pipeline_start(i32* %94, i32* %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %256

102:                                              ; preds = %91
  %103 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %104 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %103, i32 0, i32 0
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %108 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 2
  %112 = call i32 @CSI_WIN_CTRL_W_ACTIVE(i32 %111)
  %113 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %114 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CSI_WIN_CTRL_W_REG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %120 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CSI_WIN_CTRL_H_ACTIVE(i32 %122)
  %124 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %125 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @CSI_WIN_CTRL_H_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  %130 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %131 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %9, align 8
  %140 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %141 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %10, align 8
  %150 = load %struct.v4l2_fwnode_bus_parallel*, %struct.v4l2_fwnode_bus_parallel** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_parallel* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %11, align 8
  %160 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %8, align 8
  %161 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @CSI_CFG_INPUT_FMT(i32 %162)
  %164 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %8, align 8
  %165 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @CSI_CFG_OUTPUT_FMT(i32 %166)
  %168 = or i32 %163, %167
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @CSI_CFG_VSYNC_POL(i64 %169)
  %171 = or i32 %168, %170
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @CSI_CFG_HSYNC_POL(i64 %172)
  %174 = or i32 %171, %173
  %175 = load i64, i64* %10, align 8
  %176 = call i32 @CSI_CFG_PCLK_POL(i64 %175)
  %177 = or i32 %174, %176
  %178 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %179 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @CSI_CFG_REG, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writel(i32 %177, i64 %182)
  %184 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %185 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %192 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CSI_BUF_LEN_REG, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writel(i32 %190, i64 %195)
  %197 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %198 = call i32 @sun4i_csi_buffer_fill_all(%struct.sun4i_csi* %197)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %102
  %202 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %203 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %202, i32 0, i32 0
  %204 = load i64, i64* %12, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  br label %251

206:                                              ; preds = %102
  %207 = load i32, i32* @CSI_BUF_CTRL_DBE, align 4
  %208 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %209 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CSI_BUF_CTRL_REG, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @writel(i32 %207, i64 %212)
  %214 = load i32, i32* @CSI_INT_FRM_DONE, align 4
  %215 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %216 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 52
  %219 = call i32 @writel(i32 %214, i64 %218)
  %220 = load i32, i32* @CSI_INT_FRM_DONE, align 4
  %221 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %222 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @CSI_INT_EN_REG, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  %227 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %228 = call i32 @sun4i_csi_capture_start(%struct.sun4i_csi* %227)
  %229 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %230 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %229, i32 0, i32 0
  %231 = load i64, i64* %12, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* %230, i64 %231)
  %233 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %234 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @video, align 4
  %237 = load i32, i32* @s_stream, align 4
  %238 = call i32 @v4l2_subdev_call(i32 %235, i32 %236, i32 %237, i32 1)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %206
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @ENOIOCTLCMD, align 4
  %244 = sub nsw i32 0, %243
  %245 = icmp ne i32 %242, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %248

247:                                              ; preds = %241, %206
  store i32 0, i32* %3, align 4
  br label %286

248:                                              ; preds = %246
  %249 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %250 = call i32 @sun4i_csi_capture_stop(%struct.sun4i_csi* %249)
  br label %251

251:                                              ; preds = %248, %201
  %252 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %253 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = call i32 @media_pipeline_stop(i32* %254)
  br label %256

256:                                              ; preds = %251, %101
  %257 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %258 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %261 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %265 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %269 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @dma_free_coherent(i32 %259, i64 %263, i32 %267, i32 %271)
  br label %273

273:                                              ; preds = %256, %84
  %274 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %275 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %274, i32 0, i32 0
  %276 = load i64, i64* %12, align 8
  %277 = call i32 @spin_lock_irqsave(i32* %275, i64 %276)
  %278 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %279 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %280 = call i32 @return_all_buffers(%struct.sun4i_csi* %278, i32 %279)
  %281 = load %struct.sun4i_csi*, %struct.sun4i_csi** %6, align 8
  %282 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %281, i32 0, i32 0
  %283 = load i64, i64* %12, align 8
  %284 = call i32 @spin_unlock_irqrestore(i32* %282, i64 %283)
  %285 = load i32, i32* %14, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %273, %247, %25
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local %struct.sun4i_csi* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.sun4i_csi_format* @sun4i_csi_find_format(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @media_pipeline_start(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CSI_WIN_CTRL_W_ACTIVE(i32) #1

declare dso_local i32 @CSI_WIN_CTRL_H_ACTIVE(i32) #1

declare dso_local i32 @CSI_CFG_INPUT_FMT(i32) #1

declare dso_local i32 @CSI_CFG_OUTPUT_FMT(i32) #1

declare dso_local i32 @CSI_CFG_VSYNC_POL(i64) #1

declare dso_local i32 @CSI_CFG_HSYNC_POL(i64) #1

declare dso_local i32 @CSI_CFG_PCLK_POL(i64) #1

declare dso_local i32 @sun4i_csi_buffer_fill_all(%struct.sun4i_csi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sun4i_csi_capture_start(%struct.sun4i_csi*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @sun4i_csi_capture_stop(%struct.sun4i_csi*) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

declare dso_local i32 @return_all_buffers(%struct.sun4i_csi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
