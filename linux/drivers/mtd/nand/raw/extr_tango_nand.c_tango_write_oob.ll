; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @tango_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_write_oob(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %5, i32 %6, i32 0, i32* null, i32 0)
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @raw_write(%struct.nand_chip* %8, i32* null, i32 %11)
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %13)
  ret i32 %14
}

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @raw_write(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
