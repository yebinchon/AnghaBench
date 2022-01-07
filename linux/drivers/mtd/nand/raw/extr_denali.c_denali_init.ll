; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FEATURES = common dso_local global i64 0, align 8
@denali_controller_ops = common dso_local global i32 0, align 4
@DENALI_INVALID_BANK = common dso_local global i32 0, align 4
@REVISION = common dso_local global i64 0, align 8
@FEATURES__N_BANKS = common dso_local global i32 0, align 4
@FEATURES__DMA = common dso_local global i32 0, align 4
@DENALI_CAP_DMA_64BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to set DMA mask. Disabling DMA.\0A\00", align 1
@denali_setup_dma64 = common dso_local global i32 0, align 4
@denali_setup_dma32 = common dso_local global i32 0, align 4
@FEATURES__INDEX_ADDR = common dso_local global i32 0, align 4
@denali_indexed_read = common dso_local global i32 0, align 4
@denali_indexed_write = common dso_local global i32 0, align 4
@denali_direct_read = common dso_local global i32 0, align 4
@denali_direct_write = common dso_local global i32 0, align 4
@SPARE_AREA_SKIP_BYTES = common dso_local global i64 0, align 8
@DENALI_DEFAULT_OOB_SKIP_BYTES = common dso_local global i32 0, align 4
@TRANSFER_SPARE_REG = common dso_local global i64 0, align 8
@RB_PIN_ENABLED = common dso_local global i64 0, align 8
@CHIP_EN_DONT_CARE__FLAG = common dso_local global i32 0, align 4
@CHIP_ENABLE_DONT_CARE = common dso_local global i64 0, align 8
@ECC_ENABLE__FLAG = common dso_local global i32 0, align 4
@ECC_ENABLE = common dso_local global i64 0, align 8
@SPARE_AREA_MARKER = common dso_local global i64 0, align 8
@denali_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DENALI_NAND_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @denali_init(%struct.denali_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.denali_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %3, align 8
  %7 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %8 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FEATURES, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i8* @ioread32(i64 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %15 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %14, i32 0, i32 15
  %16 = call i32 @nand_controller_init(%struct.TYPE_2__* %15)
  %17 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %18 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %17, i32 0, i32 15
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* @denali_controller_ops, i32** %19, align 8
  %20 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %21 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %20, i32 0, i32 14
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %24 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %23, i32 0, i32 13
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %27 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %26, i32 0, i32 12
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @DENALI_INVALID_BANK, align 4
  %30 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %31 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 4
  %32 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %33 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %1
  %37 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %38 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REVISION, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i8* @ioread32(i64 %41)
  %43 = call i32 @swab16(i8* %42)
  %44 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %45 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %36, %1
  %47 = load i32, i32* @FEATURES__N_BANKS, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @FIELD_GET(i32 %47, i32 %48)
  %50 = shl i32 1, %49
  %51 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %52 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %54 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 1281
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %59 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @FEATURES__DMA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %69 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %72 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %77 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DENALI_CAP_DMA_64BIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 64, i32 32
  store i32 %83, i32* %6, align 4
  %84 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %85 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @DMA_BIT_MASK(i32 %87)
  %89 = call i32 @dma_set_mask(i32 %86, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %75
  %93 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %94 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_info(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %98 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %75
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %102 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %107 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DENALI_CAP_DMA_64BIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @denali_setup_dma64, align 4
  %114 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %115 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 8
  br label %120

116:                                              ; preds = %105
  %117 = load i32, i32* @denali_setup_dma32, align 4
  %118 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %119 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %100
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @FEATURES__INDEX_ADDR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* @denali_indexed_read, align 4
  %128 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %129 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @denali_indexed_write, align 4
  %131 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %132 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  br label %140

133:                                              ; preds = %121
  %134 = load i32, i32* @denali_direct_read, align 4
  %135 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %136 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @denali_direct_write, align 4
  %138 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %139 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %133, %126
  %141 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %142 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SPARE_AREA_SKIP_BYTES, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i8* @ioread32(i64 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %149 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %151 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %140
  %155 = load i32, i32* @DENALI_DEFAULT_OOB_SKIP_BYTES, align 4
  %156 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %157 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %159 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %162 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SPARE_AREA_SKIP_BYTES, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @iowrite32(i32 %160, i64 %165)
  br label %167

167:                                              ; preds = %154, %140
  %168 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %169 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TRANSFER_SPARE_REG, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @iowrite32(i32 0, i64 %172)
  %174 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %175 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = call i32 @GENMASK(i32 %177, i32 0)
  %179 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %180 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @RB_PIN_ENABLED, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @iowrite32(i32 %178, i64 %183)
  %185 = load i32, i32* @CHIP_EN_DONT_CARE__FLAG, align 4
  %186 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %187 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @CHIP_ENABLE_DONT_CARE, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @iowrite32(i32 %185, i64 %190)
  %192 = load i32, i32* @ECC_ENABLE__FLAG, align 4
  %193 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %194 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @ECC_ENABLE, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @iowrite32(i32 %192, i64 %197)
  %199 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %200 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @SPARE_AREA_MARKER, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @iowrite32(i32 65535, i64 %203)
  %205 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %206 = call i32 @denali_clear_irq_all(%struct.denali_controller* %205)
  %207 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %208 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %211 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @denali_isr, align 4
  %214 = load i32, i32* @IRQF_SHARED, align 4
  %215 = load i32, i32* @DENALI_NAND_NAME, align 4
  %216 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %217 = call i32 @devm_request_irq(i32 %209, i32 %212, i32 %213, i32 %214, i32 %215, %struct.denali_controller* %216)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %167
  %221 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %222 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @dev_err(i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %225 = load i32, i32* %5, align 4
  store i32 %225, i32* %2, align 4
  br label %229

226:                                              ; preds = %167
  %227 = load %struct.denali_controller*, %struct.denali_controller** %3, align 8
  %228 = call i32 @denali_enable_irq(%struct.denali_controller* %227)
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %226, %220
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_2__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @swab16(i8*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @dma_set_mask(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @denali_clear_irq_all(%struct.denali_controller*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.denali_controller*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @denali_enable_irq(%struct.denali_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
