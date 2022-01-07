; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_spu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_spu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32, i32, i32 }

@IF_SPI_BUS_MODE_SPI_CLOCK_PHASE_RISING = common dso_local global i32 0, align 4
@IF_SPI_BUS_MODE_DELAY_METHOD_TIMED = common dso_local global i32 0, align 4
@IF_SPI_BUS_MODE_16_BIT_ADDRESS_16_BIT_DATA = common dso_local global i32 0, align 4
@IF_SPI_DELAY_READ_REG = common dso_local global i32 0, align 4
@IF_SPI_BUS_MODE_DELAY_METHOD_DUMMY_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Initialized SPU unit. spu_port_delay=0x%04lx, spu_reg_delay=0x%04lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*, i32)* @spu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_init(%struct.if_spi_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_spi_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.if_spi_card* %0, %struct.if_spi_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %9 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %11 = load i32, i32* @IF_SPI_BUS_MODE_SPI_CLOCK_PHASE_RISING, align 4
  %12 = load i32, i32* @IF_SPI_BUS_MODE_DELAY_METHOD_TIMED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IF_SPI_BUS_MODE_16_BIT_ADDRESS_16_BIT_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @spu_set_bus_mode(%struct.if_spi_card* %10, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %23 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %22, i32 0, i32 1
  store i32 1000, i32* %23, align 4
  %24 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %25 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %24, i32 0, i32 2
  store i32 1000, i32* %25, align 4
  %26 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %27 = load i32, i32* @IF_SPI_DELAY_READ_REG, align 4
  %28 = call i32 @spu_read_u32(%struct.if_spi_card* %26, i32 %27, i32* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 65535
  %36 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %37 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, -65536
  %40 = lshr i32 %39, 16
  %41 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %42 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %47 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %49 = load i32, i32* @IF_SPI_BUS_MODE_SPI_CLOCK_PHASE_RISING, align 4
  %50 = load i32, i32* @IF_SPI_BUS_MODE_DELAY_METHOD_DUMMY_CLOCK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IF_SPI_BUS_MODE_16_BIT_ADDRESS_16_BIT_DATA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @spu_set_bus_mode(%struct.if_spi_card* %48, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %62 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %65 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lbs_deb_spi(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %57, %31, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @spu_set_bus_mode(%struct.if_spi_card*, i32) #1

declare dso_local i32 @spu_read_u32(%struct.if_spi_card*, i32, i32*) #1

declare dso_local i32 @lbs_deb_spi(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
