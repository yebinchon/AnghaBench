; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.pt3_board = type { i32**, %struct.pt3_board*, %struct.i2c_adapter, i32, i32, %struct.pci_dev* }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@PCI_REVISION_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to set DMA mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Use 32bit DMA\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to ioremap\0A\00", align 1
@REG_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"PT%d, I/F-ver.:%d not supported\0A\00", align 1
@num_bufs = common dso_local global i32 0, align 4
@MIN_DATA_BUFS = common dso_local global i32 0, align 4
@MAX_DATA_BUFS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pt3_i2c_algo = common dso_local global i32 0, align 4
@PT3_NUM_FE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to create FE%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to init frontends\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"successfully init'ed PT%d (fw:0x%02x, I/F:0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pt3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt3_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt3_board*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @PCI_REVISION_ID, align 4
  %14 = call i64 @pci_read_config_byte(%struct.pci_dev* %12, i32 %13, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %305

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_enable_device(%struct.pci_dev* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %305

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_set_master(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* @DRV_NAME, align 4
  %35 = call i32 @pci_request_regions(%struct.pci_dev* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %301

39:                                               ; preds = %30
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @DMA_BIT_MASK(i32 64)
  %43 = call i32 @dma_set_mask(i32* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @DMA_BIT_MASK(i32 64)
  %50 = call i32 @dma_set_coherent_mask(i32* %48, i32 %49)
  br label %71

51:                                               ; preds = %39
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 @DMA_BIT_MASK(i32 32)
  %55 = call i32 @dma_set_mask(i32* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @DMA_BIT_MASK(i32 32)
  %62 = call i32 @dma_set_coherent_mask(i32* %60, i32 %61)
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %298

67:                                               ; preds = %58
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %46
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.pt3_board* @kzalloc(i32 72, i32 %72)
  store %struct.pt3_board* %73, %struct.pt3_board** %10, align 8
  %74 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %75 = icmp ne %struct.pt3_board* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %298

79:                                               ; preds = %71
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %82 = call i32 @pci_set_drvdata(%struct.pci_dev* %80, %struct.pt3_board* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %85 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %84, i32 0, i32 5
  store %struct.pci_dev* %83, %struct.pci_dev** %85, align 8
  %86 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %87 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %86, i32 0, i32 4
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i8* @pci_ioremap_bar(%struct.pci_dev* %89, i32 0)
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %93 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  store i32* %91, i32** %95, align 8
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = call i8* @pci_ioremap_bar(%struct.pci_dev* %96, i32 2)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %100 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* %98, i32** %102, align 8
  %103 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %104 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %79
  %110 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %111 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %109, %79
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %295

122:                                              ; preds = %109
  %123 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %124 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* @REG_VERSION, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @ioread32(i32* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = ashr i32 %132, 16
  %134 = icmp ne i32 %133, 769
  br i1 %134, label %135, label %146

135:                                              ; preds = %122
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %7, align 4
  %139 = ashr i32 %138, 24
  %140 = load i32, i32* %7, align 4
  %141 = and i32 %140, 16711680
  %142 = ashr i32 %141, 16
  %143 = call i32 @dev_warn(i32* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %9, align 4
  br label %264

146:                                              ; preds = %122
  %147 = load i32, i32* @num_bufs, align 4
  %148 = load i32, i32* @MIN_DATA_BUFS, align 4
  %149 = load i32, i32* @MAX_DATA_BUFS, align 4
  %150 = call i32 @clamp_val(i32 %147, i32 %148, i32 %149)
  %151 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %152 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call %struct.pt3_board* @kmalloc(i32 72, i32 %153)
  %155 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %156 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %155, i32 0, i32 1
  store %struct.pt3_board* %154, %struct.pt3_board** %156, align 8
  %157 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %158 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %157, i32 0, i32 1
  %159 = load %struct.pt3_board*, %struct.pt3_board** %158, align 8
  %160 = icmp eq %struct.pt3_board* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %146
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %264

164:                                              ; preds = %146
  %165 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %166 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %165, i32 0, i32 2
  store %struct.i2c_adapter* %166, %struct.i2c_adapter** %11, align 8
  %167 = load i32, i32* @THIS_MODULE, align 4
  %168 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %169 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %171 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %170, i32 0, i32 3
  store i32* @pt3_i2c_algo, i32** %171, align 8
  %172 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %173 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %172, i32 0, i32 2
  store i32* null, i32** %173, align 8
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 0
  %176 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %177 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i32* %175, i32** %178, align 8
  %179 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %180 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @DRV_NAME, align 4
  %183 = call i32 @strscpy(i32 %181, i32 %182, i32 4)
  %184 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %185 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %186 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %184, %struct.pt3_board* %185)
  %187 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %188 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %164
  br label %259

192:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %193

193:                                              ; preds = %212, %192
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @PT3_NUM_FE, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %193
  %198 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @pt3_alloc_adapter(%struct.pt3_board* %198, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %215

204:                                              ; preds = %197
  %205 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @pt3_attach_fe(%struct.pt3_board* %205, i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %215

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %193

215:                                              ; preds = %210, %203, %193
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @PT3_NUM_FE, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %8, align 4
  %223 = call i32 (i32*, i8*, ...) @dev_err(i32* %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  br label %247

224:                                              ; preds = %215
  %225 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %226 = call i32 @pt3_fe_init(%struct.pt3_board* %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %231 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %230, i32 0, i32 0
  %232 = call i32 (i32*, i8*, ...) @dev_err(i32* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %233 = load i32, i32* @PT3_NUM_FE, align 4
  %234 = sub nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %247

235:                                              ; preds = %224
  %236 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %237 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %236, i32 0, i32 0
  %238 = load i32, i32* %7, align 4
  %239 = ashr i32 %238, 24
  %240 = load i32, i32* %7, align 4
  %241 = ashr i32 %240, 8
  %242 = and i32 %241, 255
  %243 = load i32, i32* %7, align 4
  %244 = ashr i32 %243, 16
  %245 = and i32 %244, 255
  %246 = call i32 (i32*, i8*, ...) @dev_info(i32* %237, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %239, i32 %242, i32 %245)
  store i32 0, i32* %3, align 4
  br label %305

247:                                              ; preds = %229, %219
  br label %248

248:                                              ; preds = %251, %247
  %249 = load i32, i32* %8, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %8, align 4
  %255 = call i32 @pt3_cleanup_adapter(%struct.pt3_board* %252, i32 %253)
  br label %248

256:                                              ; preds = %248
  %257 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %258 = call i32 @i2c_del_adapter(%struct.i2c_adapter* %257)
  br label %259

259:                                              ; preds = %256, %191
  %260 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %261 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %260, i32 0, i32 1
  %262 = load %struct.pt3_board*, %struct.pt3_board** %261, align 8
  %263 = call i32 @kfree(%struct.pt3_board* %262)
  br label %264

264:                                              ; preds = %259, %161, %135
  %265 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %266 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %265, i32 0, i32 0
  %267 = load i32**, i32*** %266, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 0
  %269 = load i32*, i32** %268, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %279

271:                                              ; preds = %264
  %272 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %273 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %274 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %273, i32 0, i32 0
  %275 = load i32**, i32*** %274, align 8
  %276 = getelementptr inbounds i32*, i32** %275, i64 0
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @pci_iounmap(%struct.pci_dev* %272, i32* %277)
  br label %279

279:                                              ; preds = %271, %264
  %280 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %281 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %280, i32 0, i32 0
  %282 = load i32**, i32*** %281, align 8
  %283 = getelementptr inbounds i32*, i32** %282, i64 1
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %294

286:                                              ; preds = %279
  %287 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %288 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %289 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %288, i32 0, i32 0
  %290 = load i32**, i32*** %289, align 8
  %291 = getelementptr inbounds i32*, i32** %290, i64 1
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @pci_iounmap(%struct.pci_dev* %287, i32* %292)
  br label %294

294:                                              ; preds = %286, %279
  br label %295

295:                                              ; preds = %294, %116
  %296 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  %297 = call i32 @kfree(%struct.pt3_board* %296)
  br label %298

298:                                              ; preds = %295, %76, %63
  %299 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %300 = call i32 @pci_release_regions(%struct.pci_dev* %299)
  br label %301

301:                                              ; preds = %298, %38
  %302 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %303 = call i32 @pci_disable_device(%struct.pci_dev* %302)
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %301, %235, %27, %19
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.pt3_board* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pt3_board*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local %struct.pt3_board* @kmalloc(i32, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.pt3_board*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pt3_alloc_adapter(%struct.pt3_board*, i32) #1

declare dso_local i32 @pt3_attach_fe(%struct.pt3_board*, i32) #1

declare dso_local i32 @pt3_fe_init(%struct.pt3_board*) #1

declare dso_local i32 @pt3_cleanup_adapter(%struct.pt3_board*, i32) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @kfree(%struct.pt3_board*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
