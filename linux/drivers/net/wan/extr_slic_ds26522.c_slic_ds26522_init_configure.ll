; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_slic_ds26522.c_slic_ds26522_init_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_slic_ds26522.c_slic_ds26522_init_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@DS26522_GTCCR_ADDR = common dso_local global i64 0, align 8
@DS26522_GTCCR_BPREFSEL_REFCLKIN = common dso_local global i32 0, align 4
@DS26522_GTCCR_BFREQSEL_2048KHZ = common dso_local global i32 0, align 4
@DS26522_GTCCR_FREQSEL_2048KHZ = common dso_local global i32 0, align 4
@DS26522_GTCR2_ADDR = common dso_local global i64 0, align 8
@DS26522_GTCR2_TSSYNCOUT = common dso_local global i32 0, align 4
@DS26522_GFCR_ADDR = common dso_local global i64 0, align 8
@DS26522_GFCR_BPCLK_2048KHZ = common dso_local global i32 0, align 4
@DS26522_GTCR1_ADDR = common dso_local global i64 0, align 8
@DS26522_GTCR1 = common dso_local global i32 0, align 4
@DS26522_GLSRR_ADDR = common dso_local global i64 0, align 8
@DS26522_GLSRR_RESET = common dso_local global i32 0, align 4
@DS26522_GFSRR_ADDR = common dso_local global i64 0, align 8
@DS26522_GFSRR_RESET = common dso_local global i32 0, align 4
@DS26522_GLSRR_NORMAL = common dso_local global i32 0, align 4
@DS26522_GFSRR_NORMAL = common dso_local global i32 0, align 4
@DS26522_RMMR_ADDR = common dso_local global i64 0, align 8
@DS26522_RMMR_SFTRST = common dso_local global i32 0, align 4
@DS26522_TMMR_ADDR = common dso_local global i64 0, align 8
@DS26522_TMMR_SFTRST = common dso_local global i32 0, align 4
@DS26522_RF_ADDR_START = common dso_local global i64 0, align 8
@DS26522_RF_ADDR_END = common dso_local global i64 0, align 8
@DS26522_TF_ADDR_START = common dso_local global i64 0, align 8
@DS26522_TF_ADDR_END = common dso_local global i64 0, align 8
@DS26522_LIU_ADDR_START = common dso_local global i64 0, align 8
@DS26522_LIU_ADDR_END = common dso_local global i64 0, align 8
@DS26522_BERT_ADDR_START = common dso_local global i64 0, align 8
@DS26522_BERT_ADDR_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @slic_ds26522_init_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_ds26522_init_configure(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = load i64, i64* @DS26522_GTCCR_ADDR, align 8
  %6 = load i32, i32* @DS26522_GTCCR_BPREFSEL_REFCLKIN, align 4
  %7 = load i32, i32* @DS26522_GTCCR_BFREQSEL_2048KHZ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DS26522_GTCCR_FREQSEL_2048KHZ, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @slic_write(%struct.spi_device* %4, i64 %5, i32 %10)
  %12 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %13 = load i64, i64* @DS26522_GTCR2_ADDR, align 8
  %14 = load i32, i32* @DS26522_GTCR2_TSSYNCOUT, align 4
  %15 = call i32 @slic_write(%struct.spi_device* %12, i64 %13, i32 %14)
  %16 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %17 = load i64, i64* @DS26522_GFCR_ADDR, align 8
  %18 = load i32, i32* @DS26522_GFCR_BPCLK_2048KHZ, align 4
  %19 = call i32 @slic_write(%struct.spi_device* %16, i64 %17, i32 %18)
  %20 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %21 = load i64, i64* @DS26522_GTCR1_ADDR, align 8
  %22 = load i32, i32* @DS26522_GTCR1, align 4
  %23 = call i32 @slic_write(%struct.spi_device* %20, i64 %21, i32 %22)
  %24 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %25 = load i64, i64* @DS26522_GLSRR_ADDR, align 8
  %26 = load i32, i32* @DS26522_GLSRR_RESET, align 4
  %27 = call i32 @slic_write(%struct.spi_device* %24, i64 %25, i32 %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %29 = load i64, i64* @DS26522_GFSRR_ADDR, align 8
  %30 = load i32, i32* @DS26522_GFSRR_RESET, align 4
  %31 = call i32 @slic_write(%struct.spi_device* %28, i64 %29, i32 %30)
  %32 = call i32 @usleep_range(i32 100, i32 120)
  %33 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %34 = load i64, i64* @DS26522_GLSRR_ADDR, align 8
  %35 = load i32, i32* @DS26522_GLSRR_NORMAL, align 4
  %36 = call i32 @slic_write(%struct.spi_device* %33, i64 %34, i32 %35)
  %37 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %38 = load i64, i64* @DS26522_GFSRR_ADDR, align 8
  %39 = load i32, i32* @DS26522_GFSRR_NORMAL, align 4
  %40 = call i32 @slic_write(%struct.spi_device* %37, i64 %38, i32 %39)
  %41 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %42 = load i64, i64* @DS26522_RMMR_ADDR, align 8
  %43 = load i32, i32* @DS26522_RMMR_SFTRST, align 4
  %44 = call i32 @slic_write(%struct.spi_device* %41, i64 %42, i32 %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %46 = load i64, i64* @DS26522_TMMR_ADDR, align 8
  %47 = load i32, i32* @DS26522_TMMR_SFTRST, align 4
  %48 = call i32 @slic_write(%struct.spi_device* %45, i64 %46, i32 %47)
  %49 = call i32 @usleep_range(i32 100, i32 120)
  %50 = load i64, i64* @DS26522_RF_ADDR_START, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %59, %1
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @DS26522_RF_ADDR_END, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @slic_write(%struct.spi_device* %56, i64 %57, i32 0)
  br label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %51

62:                                               ; preds = %51
  %63 = load i64, i64* @DS26522_TF_ADDR_START, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %72, %62
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @DS26522_TF_ADDR_END, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @slic_write(%struct.spi_device* %69, i64 %70, i32 0)
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %64

75:                                               ; preds = %64
  %76 = load i64, i64* @DS26522_LIU_ADDR_START, align 8
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %85, %75
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @DS26522_LIU_ADDR_END, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @slic_write(%struct.spi_device* %82, i64 %83, i32 0)
  br label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %3, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %3, align 8
  br label %77

88:                                               ; preds = %77
  %89 = load i64, i64* @DS26522_BERT_ADDR_START, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %98, %88
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @DS26522_BERT_ADDR_END, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %96 = load i64, i64* %3, align 8
  %97 = call i32 @slic_write(%struct.spi_device* %95, i64 %96, i32 0)
  br label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %3, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %3, align 8
  br label %90

101:                                              ; preds = %90
  %102 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %103 = call i32 @ds26522_e1_spec_config(%struct.spi_device* %102)
  %104 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %105 = load i64, i64* @DS26522_GTCR1_ADDR, align 8
  %106 = call i32 @slic_write(%struct.spi_device* %104, i64 %105, i32 0)
  ret i32 0
}

declare dso_local i32 @slic_write(%struct.spi_device*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ds26522_e1_spec_config(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
