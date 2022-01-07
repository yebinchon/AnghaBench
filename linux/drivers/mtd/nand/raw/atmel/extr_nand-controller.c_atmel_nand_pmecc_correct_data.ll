; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_correct_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.atmel_nand = type { i32 }
%struct.mtd_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.atmel_nand_controller = type { i32 }
%struct.mtd_oob_region = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to read NAND page data (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i8*, i32)* @atmel_nand_pmecc_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_pmecc_correct_data(%struct.nand_chip* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_nand*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.atmel_nand_controller*, align 8
  %11 = alloca %struct.mtd_oob_region, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %17)
  store %struct.atmel_nand* %18, %struct.atmel_nand** %8, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %19)
  store %struct.mtd_info* %20, %struct.mtd_info** %9, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %23)
  store %struct.atmel_nand_controller* %24, %struct.atmel_nand_controller** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

28:                                               ; preds = %3
  %29 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %30 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @atmel_pmecc_wait_rdy(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %10, align 8
  %37 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %125

42:                                               ; preds = %28
  %43 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %44 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %43, i32 0, %struct.mtd_oob_region* %11)
  %45 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %47, i64 %50
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %120, %42
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %53
  %61 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %62 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @atmel_pmecc_correct_sector(i32 %63, i32 %64, i8* %65, i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %60
  %71 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %72 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @atmel_pmecc_correct_erased_chunks(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %15, align 8
  %78 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @nand_check_erased_ecc_chunk(i8* %77, i32 %81, i8* %82, i32 %86, i32* null, i32 0, i32 %90)
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %76, %70, %60
  %93 = load i32, i32* %12, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @max(i32 %96, i32 %97)
  store i32 %98, i32* %14, align 4
  br label %105

99:                                               ; preds = %92
  %100 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %101 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %95
  %106 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  store i8* %112, i8** %15, align 8
  %113 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %16, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr i8, i8* %117, i64 %118
  store i8* %119, i8** %16, align 8
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %53

123:                                              ; preds = %53
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %35, %27
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i32 @atmel_pmecc_wait_rdy(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

declare dso_local i32 @atmel_pmecc_correct_sector(i32, i32, i8*, i8*) #1

declare dso_local i32 @atmel_pmecc_correct_erased_chunks(i32) #1

declare dso_local i32 @nand_check_erased_ecc_chunk(i8*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
