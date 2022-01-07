; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_smpt_read_dummy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_smpt_read_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i64 }

@SMPT_CMD_READ_DUMMY_IS_VARIABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spi_nor*, i32)* @spi_nor_smpt_read_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spi_nor_smpt_read_dummy(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @SMPT_CMD_READ_DUMMY(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @SMPT_CMD_READ_DUMMY_IS_VARIABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local i64 @SMPT_CMD_READ_DUMMY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
