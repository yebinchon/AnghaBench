; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_select_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_select_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.spi_nor_read_command* }
%struct.spi_nor_read_command = type { i64, i64, i32, i32 }

@SNOR_HWCAPS_READ_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @spi_nor_select_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_select_read(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_nor_read_command*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SNOR_HWCAPS_READ_MASK, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @fls(i32 %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = call i32 @spi_nor_hwcaps_read2cmd(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %19
  %29 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %32, i64 %34
  store %struct.spi_nor_read_command* %35, %struct.spi_nor_read_command** %8, align 8
  %36 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %8, align 8
  %37 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %40 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %8, align 8
  %42 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %45 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %8, align 8
  %47 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %8, align 8
  %50 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %54 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %28, %25, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @spi_nor_hwcaps_read2cmd(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
