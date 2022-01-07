; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_bch8_correct_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_bch8_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fsmc_nand_data = type { i64 }

@STS = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@ECC1 = common dso_local global i64 0, align 8
@ECC2 = common dso_local global i64 0, align 8
@ECC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @fsmc_bch8_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_bch8_correct_data(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fsmc_nand_data*, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = call %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip* %20)
  store %struct.fsmc_nand_data* %21, %struct.fsmc_nand_data** %10, align 8
  %22 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %10, align 8
  %23 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  %28 = ashr i32 %27, 10
  %29 = and i32 %28, 15
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %184

36:                                               ; preds = %4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 8
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @count_written_bits(i32* %43, i32 %47, i32 8)
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @count_written_bits(i32* %49, i32 %53, i32 8)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp sle i32 %57, 8
  br i1 %58, label %59, label %71

59:                                               ; preds = %42
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memset(i32* %63, i32 255, i32 %67)
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %5, align 4
  br label %184

71:                                               ; preds = %42
  %72 = load i32, i32* @EBADMSG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %184

74:                                               ; preds = %36
  %75 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %10, align 8
  %76 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ECC1, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl_relaxed(i64 %79)
  store i32 %80, i32* %14, align 4
  %81 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %10, align 8
  %82 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ECC2, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl_relaxed(i64 %85)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %10, align 8
  %88 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ECC3, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl_relaxed(i64 %91)
  store i32 %92, i32* %16, align 4
  %93 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %10, align 8
  %94 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @STS, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl_relaxed(i64 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %14, align 4
  %100 = ashr i32 %99, 0
  %101 = and i32 %100, 8191
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 %101, i32* %102, align 16
  %103 = load i32, i32* %14, align 4
  %104 = ashr i32 %103, 13
  %105 = and i32 %104, 8191
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %15, align 4
  %108 = ashr i32 %107, 0
  %109 = and i32 %108, 127
  %110 = shl i32 %109, 6
  %111 = load i32, i32* %14, align 4
  %112 = ashr i32 %111, 26
  %113 = and i32 %112, 63
  %114 = or i32 %110, %113
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* %15, align 4
  %117 = ashr i32 %116, 7
  %118 = and i32 %117, 8191
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  %121 = ashr i32 %120, 0
  %122 = and i32 %121, 1
  %123 = shl i32 %122, 12
  %124 = load i32, i32* %15, align 4
  %125 = ashr i32 %124, 20
  %126 = and i32 %125, 4095
  %127 = or i32 %123, %126
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  store i32 %127, i32* %128, align 16
  %129 = load i32, i32* %16, align 4
  %130 = ashr i32 %129, 1
  %131 = and i32 %130, 8191
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %16, align 4
  %134 = ashr i32 %133, 14
  %135 = and i32 %134, 8191
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  store i32 %135, i32* %136, align 8
  %137 = load i32, i32* %17, align 4
  %138 = ashr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = shl i32 %139, 5
  %141 = load i32, i32* %16, align 4
  %142 = ashr i32 %141, 27
  %143 = and i32 %142, 31
  %144 = or i32 %140, %143
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  store i32 %144, i32* %145, align 4
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %181, %74
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %12, align 4
  %149 = icmp ne i32 %147, 0
  br i1 %149, label %150, label %182

150:                                              ; preds = %146
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %152
  %154 = bitcast i32* %153 to i64*
  %155 = call i32 @change_bit(i32 0, i64* %154)
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %157
  %159 = bitcast i32* %158 to i64*
  %160 = call i32 @change_bit(i32 1, i64* %159)
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %166 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, 8
  %170 = icmp slt i32 %164, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %150
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = bitcast i32* %176 to i64*
  %178 = call i32 @change_bit(i32 %175, i64* %177)
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %171, %150
  br label %146

182:                                              ; preds = %146
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %71, %69, %35
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @count_written_bits(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @change_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
