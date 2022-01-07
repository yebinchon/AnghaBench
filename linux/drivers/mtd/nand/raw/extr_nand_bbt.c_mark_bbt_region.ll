; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_mark_bbt_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_mark_bbt_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.nand_bbt_descr = type { i32, i32*, i32, i64 }
%struct.mtd_info = type { i32 }

@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_ABSPAGE = common dso_local global i32 0, align 4
@NAND_BBT_WRITE = common dso_local global i32 0, align 4
@BBT_BLOCK_RESERVED = common dso_local global i64 0, align 8
@NAND_BBT_LASTBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, %struct.nand_bbt_descr*)* @mark_bbt_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_bbt_region(%struct.nand_chip* %0, %struct.nand_bbt_descr* %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.nand_bbt_descr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %4, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 2
  %16 = call i32 @nanddev_target_size(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %6, align 8
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %20 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 2
  %28 = call i32 @nanddev_ntargets(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  store i32 %33, i32* %11, align 4
  br label %42

34:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %35 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %34, %25
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %174, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %177

47:                                               ; preds = %43
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %49 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NAND_BBT_ABSPAGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %56 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NAND_BBT_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %111, label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %63 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %174

71:                                               ; preds = %61
  %72 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %73 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = ashr i32 %78, %85
  store i32 %86, i32* %10, align 4
  %87 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @bbt_get_entry(%struct.nand_chip* %87, i32 %88)
  store i64 %89, i64* %13, align 8
  %90 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i64, i64* @BBT_BLOCK_RESERVED, align 8
  %93 = call i32 @bbt_mark_entry(%struct.nand_chip* %90, i32 %91, i64 %92)
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @BBT_BLOCK_RESERVED, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %71
  %98 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %99 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %104, %107
  %109 = call i32 @nand_update_bbt(%struct.nand_chip* %103, i32 %108)
  br label %110

110:                                              ; preds = %102, %97, %71
  br label %174

111:                                              ; preds = %54
  store i32 0, i32* %12, align 4
  %112 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %113 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NAND_BBT_LASTBLOCK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %124 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %122, %125
  store i32 %126, i32* %10, align 4
  br label %131

127:                                              ; preds = %111
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %118
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %153, %131
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %135 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @bbt_get_entry(%struct.nand_chip* %139, i32 %140)
  store i64 %141, i64* %13, align 8
  %142 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i64, i64* @BBT_BLOCK_RESERVED, align 8
  %145 = call i32 @bbt_mark_entry(%struct.nand_chip* %142, i32 %143, i64 %144)
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @BBT_BLOCK_RESERVED, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 1, i32* %12, align 4
  br label %150

150:                                              ; preds = %149, %138
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %132

156:                                              ; preds = %132
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %161 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %166, 1
  %168 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %169 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %167, %170
  %172 = call i32 @nand_update_bbt(%struct.nand_chip* %165, i32 %171)
  br label %173

173:                                              ; preds = %164, %159, %156
  br label %174

174:                                              ; preds = %173, %110, %70
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %43

177:                                              ; preds = %43
  ret void
}

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nanddev_ntargets(i32*) #1

declare dso_local i64 @bbt_get_entry(%struct.nand_chip*, i32) #1

declare dso_local i32 @bbt_mark_entry(%struct.nand_chip*, i32, i64) #1

declare dso_local i32 @nand_update_bbt(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
