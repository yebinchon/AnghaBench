; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { {}*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i64, i32*)* @spi_nor_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_read_data(%struct.spi_nor* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @spi_nor_spimem_read_data(%struct.spi_nor* %15, i32 %16, i64 %17, i32* %18)
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %22 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.spi_nor*, i32, i64, i32*)**
  %24 = load i32 (%struct.spi_nor*, i32, i64, i32*)*, i32 (%struct.spi_nor*, i32, i64, i32*)** %23, align 8
  %25 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 %24(%struct.spi_nor* %25, i32 %26, i64 %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %20, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @spi_nor_spimem_read_data(%struct.spi_nor*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
