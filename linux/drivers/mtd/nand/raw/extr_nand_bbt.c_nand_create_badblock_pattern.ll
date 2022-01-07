; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_create_badblock_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_create_badblock_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.nand_bbt_descr*, i32 }
%struct.nand_bbt_descr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Bad block pattern already allocated; not replacing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BADBLOCK_SCAN_MASK = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@scan_ff_pattern = common dso_local global i32 0, align 4
@NAND_BBT_DYNAMICSTRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @nand_create_badblock_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_create_badblock_pattern(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 2
  %7 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %6, align 8
  %8 = icmp ne %struct.nand_bbt_descr* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nand_bbt_descr* @kzalloc(i32 16, i32 %14)
  store %struct.nand_bbt_descr* %15, %struct.nand_bbt_descr** %4, align 8
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %17 = icmp ne %struct.nand_bbt_descr* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %13
  %22 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BADBLOCK_SCAN_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %28 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %33 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 1
  %42 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %43 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @scan_ff_pattern, align 4
  %45 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %46 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @NAND_BBT_DYNAMICSTRUCT, align 4
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %49 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %53 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 2
  store %struct.nand_bbt_descr* %52, %struct.nand_bbt_descr** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %21, %18, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.nand_bbt_descr* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
