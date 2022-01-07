; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_correct_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_correct_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32, i32, %struct.atmel_pmecc* }
%struct.atmel_pmecc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ECC\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid errpos value (%d, max is %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Bit flip in %s area, byte %d: 0x%02x -> 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_pmecc_correct_sector(%struct.atmel_pmecc_user* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_pmecc_user*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_pmecc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %21 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %20, i32 0, i32 2
  %22 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %21, align 8
  store %struct.atmel_pmecc* %22, %struct.atmel_pmecc** %10, align 8
  %23 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %24 = call i32 @get_sectorsize(%struct.atmel_pmecc_user* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %137

36:                                               ; preds = %4
  %37 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @atmel_pmecc_gen_syndrome(%struct.atmel_pmecc_user* %37, i32 %38)
  %40 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %41 = call i32 @atmel_pmecc_substitute(%struct.atmel_pmecc_user* %40)
  %42 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %43 = call i32 @atmel_pmecc_get_sigma(%struct.atmel_pmecc_user* %42)
  %44 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %45 = call i32 @atmel_pmecc_err_location(%struct.atmel_pmecc_user* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %137

50:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %132, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %135

55:                                               ; preds = %51
  %56 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %10, align 8
  %57 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %10, align 8
  %61 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @ATMEL_PMERRLOC_EL(i32 %64, i32 %65)
  %67 = add nsw i64 %59, %66
  %68 = call i32 @readl_relaxed(i64 %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sdiv i32 %71, 8
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %18, align 4
  %74 = srem i32 %73, 8
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %55
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %79, i64 %81
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %19, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %113

84:                                               ; preds = %55
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %91, i64 %93
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr i8, i8* %94, i64 %97
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %19, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %112

100:                                              ; preds = %84
  %101 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %10, align 8
  %102 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = mul nsw i32 %107, 8
  %109 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %137

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %78
  %114 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %10, align 8
  %115 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %19, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @BIT(i32 %123)
  %125 = xor i32 %122, %124
  %126 = call i32 (i32, i8*, ...) @dev_dbg(i32 %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %117, i32 %118, i32 %120, i32 %125)
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @BIT(i32 %127)
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %113
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %51

135:                                              ; preds = %51
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %100, %48, %35
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @get_sectorsize(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @atmel_pmecc_gen_syndrome(%struct.atmel_pmecc_user*, i32) #1

declare dso_local i32 @atmel_pmecc_substitute(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @atmel_pmecc_get_sigma(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @atmel_pmecc_err_location(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ATMEL_PMERRLOC_EL(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
