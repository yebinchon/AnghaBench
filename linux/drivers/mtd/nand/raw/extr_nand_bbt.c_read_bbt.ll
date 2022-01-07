; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_read_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_read_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i64, i32 }
%struct.nand_bbt_descr = type { i32, i32 }
%struct.mtd_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NAND_BBT_NRBITS_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"nand_bbt: ECC error in BBT at 0x%012llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"nand_bbt: corrected error in BBT at 0x%012llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nand_bbt: error reading BBT\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"nand_read_bbt: reserved block at 0x%012llx\0A\00", align 1
@BBT_BLOCK_RESERVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"nand_read_bbt: bad block at 0x%012llx\0A\00", align 1
@BBT_BLOCK_FACTORY_BAD = common dso_local global i32 0, align 4
@BBT_BLOCK_WORN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32, %struct.nand_bbt_descr*, i32)* @read_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bbt(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, %struct.nand_bbt_descr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nand_bbt_descr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.nand_bbt_descr* %4, %struct.nand_bbt_descr** %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %31 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %30)
  store %struct.mtd_info* %31, %struct.mtd_info** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %32 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %33 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAND_BBT_NRBITS_MSK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* %24, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %25, align 4
  %40 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %41 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %27, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %24, align 4
  %45 = mul nsw i32 %43, %44
  %46 = ashr i32 %45, 3
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %22, align 8
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %12, align 8
  %49 = call i64 @add_marker_len(%struct.nand_bbt_descr* %48)
  store i64 %49, i64* %26, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 %51, %54
  store i64 %55, i64* %23, align 8
  br label %56

56:                                               ; preds = %212, %6
  %57 = load i64, i64* %22, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %219

59:                                               ; preds = %56
  %60 = load i64, i64* %22, align 8
  %61 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = call i64 @min(i64 %60, i64 %65)
  store i64 %66, i64* %21, align 8
  %67 = load i64, i64* %26, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i64, i64* %26, align 8
  %71 = load i64, i64* %21, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %26, align 8
  %74 = load i64, i64* %23, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %23, align 8
  store i64 0, i64* %26, align 8
  br label %76

76:                                               ; preds = %69, %59
  %77 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* %21, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @mtd_read(%struct.mtd_info* %77, i64 %78, i64 %79, i64* %20, i32* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %76
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @mtd_is_eccerr(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i64, i64* %23, align 8
  %90 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = xor i64 %92, -1
  %94 = and i64 %89, %93
  %95 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %7, align 4
  br label %221

97:                                               ; preds = %84
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @mtd_is_bitflip(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i64, i64* %23, align 8
  %103 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %104 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = xor i64 %105, -1
  %107 = and i64 %102, %106
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %16, align 4
  br label %113

110:                                              ; preds = %97
  %111 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %7, align 4
  br label %221

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %76
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %209, %115
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %21, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %212

121:                                              ; preds = %116
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %28, align 4
  store i32 0, i32* %18, align 4
  br label %127

127:                                              ; preds = %202, %121
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %208

130:                                              ; preds = %127
  %131 = load i32, i32* %28, align 4
  %132 = load i32, i32* %18, align 4
  %133 = ashr i32 %131, %132
  %134 = load i32, i32* %25, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %29, align 4
  %136 = load i32, i32* %29, align 4
  %137 = load i32, i32* %25, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %202

140:                                              ; preds = %130
  %141 = load i32, i32* %27, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %169

143:                                              ; preds = %140
  %144 = load i32, i32* %29, align 4
  %145 = load i32, i32* %27, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %153 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = zext i32 %154 to i64
  %156 = shl i64 %151, %155
  %157 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %156)
  %158 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* @BBT_BLOCK_RESERVED, align 4
  %163 = call i32 @bbt_mark_entry(%struct.nand_chip* %158, i32 %161, i32 %162)
  %164 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %165 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %202

169:                                              ; preds = %143, %140
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %175 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = zext i32 %176 to i64
  %178 = shl i64 %173, %177
  %179 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %178)
  %180 = load i32, i32* %29, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %169
  %183 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* @BBT_BLOCK_FACTORY_BAD, align 4
  %188 = call i32 @bbt_mark_entry(%struct.nand_chip* %183, i32 %186, i32 %187)
  br label %196

189:                                              ; preds = %169
  %190 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %191, %192
  %194 = load i32, i32* @BBT_BLOCK_WORN, align 4
  %195 = call i32 @bbt_mark_entry(%struct.nand_chip* %190, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %189, %182
  %197 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %198 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %147, %139
  %203 = load i32, i32* %24, align 4
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %127

208:                                              ; preds = %127
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  br label %116

212:                                              ; preds = %116
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* %22, align 8
  %215 = sub i64 %214, %213
  store i64 %215, i64* %22, align 8
  %216 = load i64, i64* %21, align 8
  %217 = load i64, i64* %23, align 8
  %218 = add i64 %217, %216
  store i64 %218, i64* %23, align 8
  br label %56

219:                                              ; preds = %56
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %219, %110, %88
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @add_marker_len(%struct.nand_bbt_descr*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i64, i64*, i32*) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @bbt_mark_entry(%struct.nand_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
