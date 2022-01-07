; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 }

@SPINOR_OP_WREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @cqspi_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_erase(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %8 = call i32 @cqspi_set_protocol(%struct.spi_nor* %7, i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 0
  %16 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %15, align 8
  %17 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %18 = load i32, i32* @SPINOR_OP_WREN, align 4
  %19 = call i32 %16(%struct.spi_nor* %17, i32 %18, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %13
  %25 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %26 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %27 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @cqspi_command_write_addr(%struct.spi_nor* %25, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %22, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @cqspi_set_protocol(%struct.spi_nor*, i32) #1

declare dso_local i32 @cqspi_command_write_addr(%struct.spi_nor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
