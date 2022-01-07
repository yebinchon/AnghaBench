; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_slic_ds26522.c_ds26522_e1_spec_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_slic_ds26522.c_ds26522_e1_spec_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@DS26522_RMMR_ADDR = common dso_local global i32 0, align 4
@DS26522_RMMR_E1 = common dso_local global i32 0, align 4
@DS26522_TMMR_ADDR = common dso_local global i32 0, align 4
@DS26522_TMMR_E1 = common dso_local global i32 0, align 4
@DS26522_RMMR_FRM_EN = common dso_local global i32 0, align 4
@DS26522_TMMR_FRM_EN = common dso_local global i32 0, align 4
@DS26522_RCR1_ADDR = common dso_local global i32 0, align 4
@DS26522_RCR1_E1_HDB3 = common dso_local global i32 0, align 4
@DS26522_RCR1_E1_CCS = common dso_local global i32 0, align 4
@DS26522_RIOCR_ADDR = common dso_local global i32 0, align 4
@DS26522_RIOCR_2048KHZ = common dso_local global i32 0, align 4
@DS26522_RIOCR_RSIO_OUT = common dso_local global i32 0, align 4
@DS26522_TCR1_ADDR = common dso_local global i32 0, align 4
@DS26522_TCR1_TB8ZS = common dso_local global i32 0, align 4
@DS26522_TIOCR_ADDR = common dso_local global i32 0, align 4
@DS26522_TIOCR_2048KHZ = common dso_local global i32 0, align 4
@DS26522_TIOCR_TSIO_OUT = common dso_local global i32 0, align 4
@DS26522_E1TAF_ADDR = common dso_local global i32 0, align 4
@DS26522_E1TAF_DEFAULT = common dso_local global i32 0, align 4
@DS26522_E1TNAF_ADDR = common dso_local global i32 0, align 4
@DS26522_E1TNAF_DEFAULT = common dso_local global i32 0, align 4
@DS26522_RMMR_INIT_DONE = common dso_local global i32 0, align 4
@DS26522_TMMR_INIT_DONE = common dso_local global i32 0, align 4
@DS26522_LTRCR_ADDR = common dso_local global i32 0, align 4
@DS26522_LTRCR_E1 = common dso_local global i32 0, align 4
@DS26522_LTITSR_ADDR = common dso_local global i32 0, align 4
@DS26522_LTITSR_TLIS_75OHM = common dso_local global i32 0, align 4
@DS26522_LTITSR_LBOS_75OHM = common dso_local global i32 0, align 4
@DS26522_LRISMR_ADDR = common dso_local global i32 0, align 4
@DS26522_LRISMR_75OHM = common dso_local global i32 0, align 4
@DS26522_LRISMR_MAX = common dso_local global i32 0, align 4
@DS26522_LMCR_ADDR = common dso_local global i32 0, align 4
@DS26522_LMCR_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ds26522_e1_spec_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds26522_e1_spec_config(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %3 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %4 = load i32, i32* @DS26522_RMMR_ADDR, align 4
  %5 = load i32, i32* @DS26522_RMMR_E1, align 4
  %6 = call i32 @slic_write(%struct.spi_device* %3, i32 %4, i32 %5)
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = load i32, i32* @DS26522_TMMR_ADDR, align 4
  %9 = load i32, i32* @DS26522_TMMR_E1, align 4
  %10 = call i32 @slic_write(%struct.spi_device* %7, i32 %8, i32 %9)
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = load i32, i32* @DS26522_RMMR_ADDR, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %14 = load i32, i32* @DS26522_RMMR_ADDR, align 4
  %15 = call i32 @slic_read(%struct.spi_device* %13, i32 %14)
  %16 = load i32, i32* @DS26522_RMMR_FRM_EN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @slic_write(%struct.spi_device* %11, i32 %12, i32 %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %20 = load i32, i32* @DS26522_TMMR_ADDR, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %22 = load i32, i32* @DS26522_TMMR_ADDR, align 4
  %23 = call i32 @slic_read(%struct.spi_device* %21, i32 %22)
  %24 = load i32, i32* @DS26522_TMMR_FRM_EN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @slic_write(%struct.spi_device* %19, i32 %20, i32 %25)
  %27 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %28 = load i32, i32* @DS26522_RCR1_ADDR, align 4
  %29 = load i32, i32* @DS26522_RCR1_E1_HDB3, align 4
  %30 = load i32, i32* @DS26522_RCR1_E1_CCS, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @slic_write(%struct.spi_device* %27, i32 %28, i32 %31)
  %33 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %34 = load i32, i32* @DS26522_RIOCR_ADDR, align 4
  %35 = load i32, i32* @DS26522_RIOCR_2048KHZ, align 4
  %36 = load i32, i32* @DS26522_RIOCR_RSIO_OUT, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @slic_write(%struct.spi_device* %33, i32 %34, i32 %37)
  %39 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %40 = load i32, i32* @DS26522_TCR1_ADDR, align 4
  %41 = load i32, i32* @DS26522_TCR1_TB8ZS, align 4
  %42 = call i32 @slic_write(%struct.spi_device* %39, i32 %40, i32 %41)
  %43 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %44 = load i32, i32* @DS26522_TIOCR_ADDR, align 4
  %45 = load i32, i32* @DS26522_TIOCR_2048KHZ, align 4
  %46 = load i32, i32* @DS26522_TIOCR_TSIO_OUT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @slic_write(%struct.spi_device* %43, i32 %44, i32 %47)
  %49 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %50 = load i32, i32* @DS26522_E1TAF_ADDR, align 4
  %51 = load i32, i32* @DS26522_E1TAF_DEFAULT, align 4
  %52 = call i32 @slic_write(%struct.spi_device* %49, i32 %50, i32 %51)
  %53 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %54 = load i32, i32* @DS26522_E1TNAF_ADDR, align 4
  %55 = load i32, i32* @DS26522_E1TNAF_DEFAULT, align 4
  %56 = call i32 @slic_write(%struct.spi_device* %53, i32 %54, i32 %55)
  %57 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %58 = load i32, i32* @DS26522_RMMR_ADDR, align 4
  %59 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %60 = load i32, i32* @DS26522_RMMR_ADDR, align 4
  %61 = call i32 @slic_read(%struct.spi_device* %59, i32 %60)
  %62 = load i32, i32* @DS26522_RMMR_INIT_DONE, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @slic_write(%struct.spi_device* %57, i32 %58, i32 %63)
  %65 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %66 = load i32, i32* @DS26522_TMMR_ADDR, align 4
  %67 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %68 = load i32, i32* @DS26522_TMMR_ADDR, align 4
  %69 = call i32 @slic_read(%struct.spi_device* %67, i32 %68)
  %70 = load i32, i32* @DS26522_TMMR_INIT_DONE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @slic_write(%struct.spi_device* %65, i32 %66, i32 %71)
  %73 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %74 = load i32, i32* @DS26522_LTRCR_ADDR, align 4
  %75 = load i32, i32* @DS26522_LTRCR_E1, align 4
  %76 = call i32 @slic_write(%struct.spi_device* %73, i32 %74, i32 %75)
  %77 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %78 = load i32, i32* @DS26522_LTITSR_ADDR, align 4
  %79 = load i32, i32* @DS26522_LTITSR_TLIS_75OHM, align 4
  %80 = load i32, i32* @DS26522_LTITSR_LBOS_75OHM, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @slic_write(%struct.spi_device* %77, i32 %78, i32 %81)
  %83 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %84 = load i32, i32* @DS26522_LRISMR_ADDR, align 4
  %85 = load i32, i32* @DS26522_LRISMR_75OHM, align 4
  %86 = load i32, i32* @DS26522_LRISMR_MAX, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @slic_write(%struct.spi_device* %83, i32 %84, i32 %87)
  %89 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %90 = load i32, i32* @DS26522_LMCR_ADDR, align 4
  %91 = load i32, i32* @DS26522_LMCR_TE, align 4
  %92 = call i32 @slic_write(%struct.spi_device* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @slic_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @slic_read(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
