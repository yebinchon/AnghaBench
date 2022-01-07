; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.cqspi_flash_pdata* }
%struct.cqspi_flash_pdata = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i64, i32*)* @cqspi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_read(%struct.spi_nor* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cqspi_flash_pdata*, align 8
  %11 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 0
  %14 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %13, align 8
  store %struct.cqspi_flash_pdata* %14, %struct.cqspi_flash_pdata** %10, align 8
  %15 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %16 = call i32 @cqspi_set_protocol(%struct.spi_nor* %15, i32 1)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %23 = call i32 @cqspi_read_setup(%struct.spi_nor* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %21
  %29 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %10, align 8
  %30 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @cqspi_direct_read_execute(%struct.spi_nor* %34, i32* %35, i32 %36, i64 %37)
  store i32 %38, i32* %11, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @cqspi_indirect_read_execute(%struct.spi_nor* %40, i32* %41, i32 %42, i64 %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %48, %26, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @cqspi_set_protocol(%struct.spi_nor*, i32) #1

declare dso_local i32 @cqspi_read_setup(%struct.spi_nor*) #1

declare dso_local i32 @cqspi_direct_read_execute(%struct.spi_nor*, i32*, i32, i64) #1

declare dso_local i32 @cqspi_indirect_read_execute(%struct.spi_nor*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
