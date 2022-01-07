; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_default_block_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_default_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.mtd_info = type { i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32* }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i64)* @nand_default_block_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_default_block_markbad(%struct.nand_chip* %0, i64 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_oob_ops, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %5, align 8
  %13 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %14 = call i32 @memset(%struct.mtd_oob_ops* %6, i32 0, i32 24)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %16 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 4
  store i32* %15, i32** %16, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, -2
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 2
  store i32 2, i32* %31, align 8
  %32 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 1
  store i32 2, i32* %32, align 4
  br label %36

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  %38 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %6, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %40 = call i32 @nand_bbm_get_next_page(%struct.nand_chip* %39, i32 0)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %59, %36
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %46, %52
  %54 = call i32 @nand_do_write_oob(%struct.nand_chip* %45, i64 %53, %struct.mtd_oob_ops* %6)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %44
  %60 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @nand_bbm_get_next_page(%struct.nand_chip* %60, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.mtd_oob_ops*, i32, i32) #1

declare dso_local i32 @nand_bbm_get_next_page(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_do_write_oob(%struct.nand_chip*, i64, %struct.mtd_oob_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
