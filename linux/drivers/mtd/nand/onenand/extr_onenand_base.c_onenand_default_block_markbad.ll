; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_default_block_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_default_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.onenand_chip* }
%struct.onenand_chip = type { i32, %struct.bbm_info* }
%struct.bbm_info = type { i32* }
%struct.mtd_oob_ops = type { i32, i32, i32*, i32 }

@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @onenand_default_block_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_default_block_markbad(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.onenand_chip*, align 8
  %6 = alloca %struct.bbm_info*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.mtd_oob_ops, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 1
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %11, align 8
  store %struct.onenand_chip* %12, %struct.onenand_chip** %5, align 8
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %14 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %13, i32 0, i32 1
  %15 = load %struct.bbm_info*, %struct.bbm_info** %14, align 8
  store %struct.bbm_info* %15, %struct.bbm_info** %6, align 8
  %16 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 0
  store i32 2, i32* %17, align 8
  %18 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 2
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %8, i32 0, i32 3
  %22 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  store i32 %22, i32* %21, align 8
  %23 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @onenand_block(%struct.onenand_chip* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bbm_info*, %struct.bbm_info** %6, align 8
  %27 = getelementptr inbounds %struct.bbm_info, %struct.bbm_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = shl i32 %32, 1
  %34 = shl i32 1, %33
  %35 = load %struct.bbm_info*, %struct.bbm_info** %6, align 8
  %36 = getelementptr inbounds %struct.bbm_info, %struct.bbm_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %34
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %30, %2
  %45 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %49 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, -2
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @onenand_write_oob_nolock(%struct.mtd_info* %58, i32 %59, %struct.mtd_oob_ops* %8)
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @onenand_block(%struct.onenand_chip*, i32) #2

declare dso_local i32 @onenand_write_oob_nolock(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
