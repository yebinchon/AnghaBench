; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_scan_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_scan_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i64, i64 }
%struct.mtd_oob_ops = type { i32, i32*, i32*, i64, i64, i32 }

@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i64)* @scan_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_read_oob(%struct.nand_chip* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.mtd_oob_ops, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  %17 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 3
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %63, %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %85

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @min(i64 %29, i64 %32)
  %34 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mtd_read_oob(%struct.mtd_info* %41, i32 %42, %struct.mtd_oob_ops* %11)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %26
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @mtd_is_bitflip_or_eccerr(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %87

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @mtd_is_eccerr(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %7, align 8
  %73 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %79 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %23

85:                                               ; preds = %23
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %50
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @mtd_is_bitflip_or_eccerr(i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
