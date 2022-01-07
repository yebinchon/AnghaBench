; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_read_abs_bbts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_read_abs_bbts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_bbt_descr = type { i32, i8**, i64* }
%struct.mtd_info = type { i32 }

@NAND_BBT_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Bad block table at page %d, version 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i8**, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*)* @read_abs_bbts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_abs_bbts(%struct.nand_chip* %0, i8** %1, %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr* %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nand_bbt_descr*, align 8
  %8 = alloca %struct.nand_bbt_descr*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %7, align 8
  store %struct.nand_bbt_descr* %3, %struct.nand_bbt_descr** %8, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %9, align 8
  %12 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %13 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NAND_BBT_VERSION, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %22 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  %31 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %35 = call i32 @scan_read(%struct.nand_chip* %19, i8** %20, i32 %30, i32 %33, %struct.nand_bbt_descr* %34)
  %36 = load i8**, i8*** %6, align 8
  %37 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %38 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %39 = call i64 @bbt_get_ver_offs(%struct.nand_chip* %37, %struct.nand_bbt_descr* %38)
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %43 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %41, i8** %45, align 8
  %46 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %47 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %52 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %50, i8* %55)
  br label %57

57:                                               ; preds = %18, %4
  %58 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %59 = icmp ne %struct.nand_bbt_descr* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  %61 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %62 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NAND_BBT_VERSION, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %60
  %68 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %71 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %75, %78
  %80 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %84 = call i32 @scan_read(%struct.nand_chip* %68, i8** %69, i32 %79, i32 %82, %struct.nand_bbt_descr* %83)
  %85 = load i8**, i8*** %6, align 8
  %86 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %87 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %88 = call i64 @bbt_get_ver_offs(%struct.nand_chip* %86, %struct.nand_bbt_descr* %87)
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %92 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  store i8* %90, i8** %94, align 8
  %95 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %96 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %101 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %99, i8* %104)
  br label %106

106:                                              ; preds = %67, %60, %57
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @scan_read(%struct.nand_chip*, i8**, i32, i32, %struct.nand_bbt_descr*) #1

declare dso_local i64 @bbt_get_ver_offs(%struct.nand_chip*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @pr_info(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
