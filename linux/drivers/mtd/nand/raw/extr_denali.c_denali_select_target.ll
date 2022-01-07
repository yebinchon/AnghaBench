; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_select_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_select_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.denali_controller = type { i64, i32 }
%struct.denali_chip_sel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.denali_chip_sel* }

@PAGES_PER_BLOCK = common dso_local global i64 0, align 8
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@DEVICE_WIDTH = common dso_local global i64 0, align 8
@DEVICE_MAIN_AREA_SIZE = common dso_local global i64 0, align 8
@DEVICE_SPARE_AREA_SIZE = common dso_local global i64 0, align 8
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@TWO_ROW_ADDR_CYCLES__FLAG = common dso_local global i32 0, align 4
@TWO_ROW_ADDR_CYCLES = common dso_local global i64 0, align 8
@ECC_CORRECTION__ERASE_THRESHOLD = common dso_local global i32 0, align 4
@ECC_CORRECTION__VALUE = common dso_local global i32 0, align 4
@ECC_CORRECTION = common dso_local global i64 0, align 8
@CFG_DATA_BLOCK_SIZE = common dso_local global i64 0, align 8
@CFG_LAST_DATA_BLOCK_SIZE = common dso_local global i64 0, align 8
@CFG_NUM_DATA_BLOCKS = common dso_local global i64 0, align 8
@NAND_KEEP_TIMINGS = common dso_local global i32 0, align 4
@TWHR2_AND_WE_2_RE = common dso_local global i64 0, align 8
@TCWAW_AND_ADDR_2_DATA = common dso_local global i64 0, align 8
@RE_2_WE = common dso_local global i64 0, align 8
@ACC_CLKS = common dso_local global i64 0, align 8
@RDWR_EN_LO_CNT = common dso_local global i64 0, align 8
@RDWR_EN_HI_CNT = common dso_local global i64 0, align 8
@CS_SETUP_CNT = common dso_local global i64 0, align 8
@RE_2_RE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @denali_select_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @denali_select_target(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.denali_controller*, align 8
  %6 = alloca %struct.denali_chip_sel*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %8)
  store %struct.denali_controller* %9, %struct.denali_controller** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.TYPE_4__* @to_denali_chip(%struct.nand_chip* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %13, i64 %15
  store %struct.denali_chip_sel* %16, %struct.denali_chip_sel** %6, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %7, align 8
  %19 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %20 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %23 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = shl i32 1, %30
  %32 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %33 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGES_PER_BLOCK, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 %31, i64 %36)
  %38 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %47 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DEVICE_WIDTH, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite32(i32 %45, i64 %50)
  %52 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %56 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DEVICE_MAIN_AREA_SIZE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @iowrite32(i32 %54, i64 %59)
  %61 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %65 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DEVICE_SPARE_AREA_SIZE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32(i32 %63, i64 %68)
  %70 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %2
  br label %79

77:                                               ; preds = %2
  %78 = load i32, i32* @TWO_ROW_ADDR_CYCLES__FLAG, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  %81 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %82 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TWO_ROW_ADDR_CYCLES, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32(i32 %80, i64 %85)
  %87 = load i32, i32* @ECC_CORRECTION__ERASE_THRESHOLD, align 4
  %88 = call i32 @FIELD_PREP(i32 %87, i32 1)
  %89 = load i32, i32* @ECC_CORRECTION__VALUE, align 4
  %90 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FIELD_PREP(i32 %89, i32 %93)
  %95 = or i32 %88, %94
  %96 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %97 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ECC_CORRECTION, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @iowrite32(i32 %95, i64 %100)
  %102 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %107 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CFG_DATA_BLOCK_SIZE, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @iowrite32(i32 %105, i64 %110)
  %112 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %117 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CFG_LAST_DATA_BLOCK_SIZE, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @iowrite32(i32 %115, i64 %120)
  %122 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %127 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CFG_NUM_DATA_BLOCKS, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @iowrite32(i32 %125, i64 %130)
  %132 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %133 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @NAND_KEEP_TIMINGS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %79
  br label %212

139:                                              ; preds = %79
  %140 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %141 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %144 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TWHR2_AND_WE_2_RE, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @iowrite32(i32 %142, i64 %147)
  %149 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %150 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %153 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TCWAW_AND_ADDR_2_DATA, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @iowrite32(i32 %151, i64 %156)
  %158 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %159 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %162 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @RE_2_WE, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @iowrite32(i32 %160, i64 %165)
  %167 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %168 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %171 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ACC_CLKS, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @iowrite32(i32 %169, i64 %174)
  %176 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %177 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %180 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @RDWR_EN_LO_CNT, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @iowrite32(i32 %178, i64 %183)
  %185 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %186 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %189 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @RDWR_EN_HI_CNT, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @iowrite32(i32 %187, i64 %192)
  %194 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %195 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %198 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CS_SETUP_CNT, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @iowrite32(i32 %196, i64 %201)
  %203 = load %struct.denali_chip_sel*, %struct.denali_chip_sel** %6, align 8
  %204 = getelementptr inbounds %struct.denali_chip_sel, %struct.denali_chip_sel* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %207 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @RE_2_RE, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @iowrite32(i32 %205, i64 %210)
  br label %212

212:                                              ; preds = %139, %138
  ret void
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_4__* @to_denali_chip(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
