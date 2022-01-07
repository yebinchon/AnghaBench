; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_set_read_settings_from_bfpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_set_read_settings_from_bfpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_read_command = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor_read_command*, i32, i32)* @spi_nor_set_read_settings_from_bfpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_set_read_settings_from_bfpt(%struct.spi_nor_read_command* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spi_nor_read_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_nor_read_command* %0, %struct.spi_nor_read_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = ashr i32 %7, 5
  %9 = and i32 %8, 7
  %10 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %11 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 0
  %14 = and i32 %13, 31
  %15 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %16 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %21 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %24 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
