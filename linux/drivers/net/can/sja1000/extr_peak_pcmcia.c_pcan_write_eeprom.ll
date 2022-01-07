; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_write_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_pccard = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCC_SPI_IR = common dso_local global i32 0, align 4
@PCC_EEP_WREN = common dso_local global i32 0, align 4
@PCC_WRITE_MAX_LOOP = common dso_local global i32 0, align 4
@PCC_EEP_RDSR = common dso_local global i32 0, align 4
@PCC_SPI_DIR = common dso_local global i32 0, align 4
@PCC_EEP_SR_WEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"stop waiting to be allowed to write in eeprom\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCC_SPI_ADR = common dso_local global i32 0, align 4
@PCC_SPI_DOR = common dso_local global i32 0, align 4
@PCC_EEP_SR_WIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"stop waiting for write in eeprom to complete\0A\00", align 1
@PCC_EEP_WRDI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"stop waiting (spi engine always busy) err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_pccard*, i32, i32)* @pcan_write_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_write_eeprom(%struct.pcan_pccard* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcan_pccard*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcan_pccard* %0, %struct.pcan_pccard** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %12 = load i32, i32* @PCC_SPI_IR, align 4
  %13 = load i32, i32* @PCC_EEP_WREN, align 4
  %14 = call i32 @pcan_write_reg(%struct.pcan_pccard* %11, i32 %12, i32 %13)
  %15 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %16 = call i32 @pcan_wait_spi_busy(%struct.pcan_pccard* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %131

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PCC_WRITE_MAX_LOOP, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %27 = load i32, i32* @PCC_SPI_IR, align 4
  %28 = load i32, i32* @PCC_EEP_RDSR, align 4
  %29 = call i32 @pcan_write_reg(%struct.pcan_pccard* %26, i32 %27, i32 %28)
  %30 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %31 = call i32 @pcan_wait_spi_busy(%struct.pcan_pccard* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %131

35:                                               ; preds = %25
  %36 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %37 = load i32, i32* @PCC_SPI_DIR, align 4
  %38 = call i32 @pcan_read_reg(%struct.pcan_pccard* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PCC_EEP_SR_WEN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %21

48:                                               ; preds = %43, %21
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @PCC_WRITE_MAX_LOOP, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %54 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %139

60:                                               ; preds = %48
  %61 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %62 = load i32, i32* @PCC_SPI_ADR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @pcan_write_reg(%struct.pcan_pccard* %61, i32 %62, i32 %64)
  %66 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %67 = load i32, i32* @PCC_SPI_DOR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pcan_write_reg(%struct.pcan_pccard* %66, i32 %67, i32 %68)
  %70 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %71 = load i32, i32* @PCC_SPI_IR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @PCC_EEP_WRITE(i32 %72)
  %74 = call i32 @pcan_write_reg(%struct.pcan_pccard* %70, i32 %71, i32 %73)
  %75 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %76 = call i32 @pcan_wait_spi_busy(%struct.pcan_pccard* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %131

80:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @PCC_WRITE_MAX_LOOP, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %87 = load i32, i32* @PCC_SPI_IR, align 4
  %88 = load i32, i32* @PCC_EEP_RDSR, align 4
  %89 = call i32 @pcan_write_reg(%struct.pcan_pccard* %86, i32 %87, i32 %88)
  %90 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %91 = call i32 @pcan_wait_spi_busy(%struct.pcan_pccard* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %131

95:                                               ; preds = %85
  %96 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %97 = load i32, i32* @PCC_SPI_DIR, align 4
  %98 = call i32 @pcan_read_reg(%struct.pcan_pccard* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @PCC_EEP_SR_WIP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %108

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %81

108:                                              ; preds = %103, %81
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @PCC_WRITE_MAX_LOOP, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %114 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %139

120:                                              ; preds = %108
  %121 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %122 = load i32, i32* @PCC_SPI_IR, align 4
  %123 = load i32, i32* @PCC_EEP_WRDI, align 4
  %124 = call i32 @pcan_write_reg(%struct.pcan_pccard* %121, i32 %122, i32 %123)
  %125 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %126 = call i32 @pcan_wait_spi_busy(%struct.pcan_pccard* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %131

130:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %139

131:                                              ; preds = %129, %94, %79, %34, %19
  %132 = load %struct.pcan_pccard*, %struct.pcan_pccard** %5, align 8
  %133 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %131, %130, %112, %52
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @pcan_write_reg(%struct.pcan_pccard*, i32, i32) #1

declare dso_local i32 @pcan_wait_spi_busy(%struct.pcan_pccard*) #1

declare dso_local i32 @pcan_read_reg(%struct.pcan_pccard*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PCC_EEP_WRITE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
