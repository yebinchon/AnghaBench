; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_add_marker_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_add_marker_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_bbt_descr = type { i32, i32 }

@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@NAND_BBT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_bbt_descr*)* @add_marker_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_marker_len(%struct.nand_bbt_descr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_bbt_descr*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_bbt_descr* %0, %struct.nand_bbt_descr** %3, align 8
  %5 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %3, align 8
  %6 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %3, align 8
  %14 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %3, align 8
  %17 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NAND_BBT_VERSION, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
