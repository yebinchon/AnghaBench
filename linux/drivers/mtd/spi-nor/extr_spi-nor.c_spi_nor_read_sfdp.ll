; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read_sfdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read_sfdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, i8* }

@SPINOR_OP_RDSFDP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i64, i8*)* @spi_nor_read_sfdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_read_sfdp(%struct.spi_nor* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %17 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %22 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** @SPINOR_OP_RDSFDP, align 8
  %27 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %28 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 0
  store i32 3, i32* %30, align 8
  %31 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %32 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %31, i32 0, i32 1
  store i32 8, i32* %32, align 4
  %33 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @spi_nor_read_raw(%struct.spi_nor* %33, i32 %34, i64 %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %40 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %44 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %48 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  ret i32 %49
}

declare dso_local i32 @spi_nor_read_raw(%struct.spi_nor*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
