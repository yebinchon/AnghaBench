; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_aux_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_aux_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32**, i32, i32*)* @aux_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_read(%struct.nand_chip* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, %9
  store i32 %12, i32* %10, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nand_change_read_column_op(%struct.nand_chip* %17, i32 %19, i32* null, i32 0, i32 0)
  br label %32

21:                                               ; preds = %4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @tango_read_buf(%struct.nand_chip* %22, i32* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %28, align 8
  br label %32

32:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @tango_read_buf(%struct.nand_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
