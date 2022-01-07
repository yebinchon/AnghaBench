; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_search_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_search_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.nand_bbt_descr = type { i32, i32*, i32, i64* }
%struct.mtd_info = type { i32, i32, i32 }

@NAND_BBT_LASTBLOCK = common dso_local global i32 0, align 4
@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bad block table not found for chip %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Bad block table found at page %d, version 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i64*, %struct.nand_bbt_descr*)* @search_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_bbt(%struct.nand_chip* %0, i64* %1, %struct.nand_bbt_descr* %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nand_bbt_descr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %6, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 2
  %21 = call i32 @nanddev_target_size(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %22)
  store %struct.mtd_info* %23, %struct.mtd_info** %8, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %14, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %16, align 4
  %38 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %39 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NAND_BBT_LASTBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %3
  %45 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %47, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  br label %54

53:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %56 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 2
  %64 = call i32 @nanddev_ntargets(i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %65, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %82

74:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  %75 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %77, %80
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %74, %61
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %178, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %181

87:                                               ; preds = %83
  %88 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %89 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  %94 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %95 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 -1, i32* %99, align 4
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %167, %87
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %103 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %170

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  %118 = shl i64 %113, %117
  store i64 %118, i64* %18, align 8
  %119 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %120 = load i64*, i64** %5, align 8
  %121 = load i64, i64* %18, align 8
  %122 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %123 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %126 = call i32 @scan_read(%struct.nand_chip* %119, i64* %120, i64 %121, i32 %124, %struct.nand_bbt_descr* %125)
  %127 = load i64*, i64** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %130 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %133 = call i32 @check_pattern(i64* %127, i32 %128, i32 %131, %struct.nand_bbt_descr* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %166, label %135

135:                                              ; preds = %106
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %16, align 4
  %138 = shl i32 %136, %137
  %139 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %140 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  %145 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %146 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NAND_BBT_VERSION, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %135
  %152 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %153 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %154 = call i64 @bbt_get_ver_offs(%struct.nand_chip* %152, %struct.nand_bbt_descr* %153)
  store i64 %154, i64* %18, align 8
  %155 = load i64*, i64** %5, align 8
  %156 = load i64, i64* %18, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %160 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %159, i32 0, i32 3
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %158, i64* %164, align 8
  br label %165

165:                                              ; preds = %151, %135
  br label %170

166:                                              ; preds = %106
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %100

170:                                              ; preds = %165, %100
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %173 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %171, %174
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %83

181:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %215, %181
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %182
  %187 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %188 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %196)
  br label %214

198:                                              ; preds = %186
  %199 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %200 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %207 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %206, i32 0, i32 3
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %205, i64 %212)
  br label %214

214:                                              ; preds = %198, %195
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %182

218:                                              ; preds = %182
  ret i32 0
}

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nanddev_ntargets(i32*) #1

declare dso_local i32 @scan_read(%struct.nand_chip*, i64*, i64, i32, %struct.nand_bbt_descr*) #1

declare dso_local i32 @check_pattern(i64*, i32, i32, %struct.nand_bbt_descr*) #1

declare dso_local i64 @bbt_get_ver_offs(%struct.nand_chip*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
