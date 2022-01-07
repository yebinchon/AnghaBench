; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.cqspi_flash_pdata* }
%struct.cqspi_flash_pdata = type { i64, %struct.cqspi_st* }
%struct.cqspi_st = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64, i64, i32*)* @cqspi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_write(%struct.spi_nor* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cqspi_flash_pdata*, align 8
  %11 = alloca %struct.cqspi_st*, align 8
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %14, align 8
  store %struct.cqspi_flash_pdata* %15, %struct.cqspi_flash_pdata** %10, align 8
  %16 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %10, align 8
  %17 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %16, i32 0, i32 1
  %18 = load %struct.cqspi_st*, %struct.cqspi_st** %17, align 8
  store %struct.cqspi_st* %18, %struct.cqspi_st** %11, align 8
  %19 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %20 = call i32 @cqspi_set_protocol(%struct.spi_nor* %19, i32 0)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %4
  %26 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %27 = call i32 @cqspi_write_setup(%struct.spi_nor* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %62

32:                                               ; preds = %25
  %33 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %10, align 8
  %34 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %39 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @memcpy_toio(i64 %42, i32* %43, i64 %44)
  %46 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %47 = call i32 @cqspi_wait_idle(%struct.cqspi_st* %46)
  store i32 %47, i32* %12, align 4
  br label %54

48:                                               ; preds = %32
  %49 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @cqspi_indirect_write_execute(%struct.spi_nor* %49, i64 %50, i32* %51, i64 %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %57, %30, %23
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @cqspi_set_protocol(%struct.spi_nor*, i32) #1

declare dso_local i32 @cqspi_write_setup(%struct.spi_nor*) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i64) #1

declare dso_local i32 @cqspi_wait_idle(%struct.cqspi_st*) #1

declare dso_local i32 @cqspi_indirect_write_execute(%struct.spi_nor*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
