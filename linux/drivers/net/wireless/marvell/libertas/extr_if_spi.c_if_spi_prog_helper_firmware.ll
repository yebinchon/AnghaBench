; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_if_spi_prog_helper_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_if_spi_prog_helper_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32 }
%struct.firmware = type { i32, i32* }

@HELPER_FW_LOAD_CHUNK_SZ = common dso_local global i32 0, align 4
@IF_SPI_SCRATCH_1_REG = common dso_local global i32 0, align 4
@IF_SPI_HOST_INT_STATUS_REG = common dso_local global i32 0, align 4
@IF_SPI_HIST_CMD_DOWNLOAD_RDY = common dso_local global i32 0, align 4
@IF_SPI_CMD_RDWRPORT_REG = common dso_local global i32 0, align 4
@IF_SPI_CARD_INT_CAUSE_REG = common dso_local global i32 0, align 4
@IF_SPI_CIC_CMD_DOWNLOAD_OVER = common dso_local global i32 0, align 4
@FIRMWARE_DNLD_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to load helper firmware (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*, %struct.firmware*)* @if_spi_prog_helper_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_spi_prog_helper_firmware(%struct.if_spi_card* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.if_spi_card*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.if_spi_card* %0, %struct.if_spi_card** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %15 = call i32 @spu_set_interrupt_mode(%struct.if_spi_card* %14, i32 1, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %106

19:                                               ; preds = %2
  %20 = load %struct.firmware*, %struct.firmware** %4, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.firmware*, %struct.firmware** %4, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %78, %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %26
  %30 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %31 = load i32, i32* @IF_SPI_SCRATCH_1_REG, align 4
  %32 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %33 = call i32 @spu_write_u16(%struct.if_spi_card* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %106

37:                                               ; preds = %29
  %38 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %39 = load i32, i32* @IF_SPI_HOST_INT_STATUS_REG, align 4
  %40 = load i32, i32* @IF_SPI_HIST_CMD_DOWNLOAD_RDY, align 4
  %41 = load i32, i32* @IF_SPI_HIST_CMD_DOWNLOAD_RDY, align 4
  %42 = call i32 @spu_wait_for_u16(%struct.if_spi_card* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %106

46:                                               ; preds = %37
  %47 = mul nuw i64 4, %11
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %13, i32 0, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  %54 = call i32 @memcpy(i32* %13, i32* %50, i32 %53)
  %55 = call i32 @mdelay(i32 10)
  %56 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %57 = load i32, i32* @IF_SPI_CMD_RDWRPORT_REG, align 4
  %58 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %59 = call i32 @spu_write(%struct.if_spi_card* %56, i32 %57, i32* %13, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %106

63:                                               ; preds = %46
  %64 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %65 = load i32, i32* @IF_SPI_HOST_INT_STATUS_REG, align 4
  %66 = call i32 @spu_write_u16(%struct.if_spi_card* %64, i32 %65, i32 0)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %106

70:                                               ; preds = %63
  %71 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %72 = load i32, i32* @IF_SPI_CARD_INT_CAUSE_REG, align 4
  %73 = load i32, i32* @IF_SPI_CIC_CMD_DOWNLOAD_OVER, align 4
  %74 = call i32 @spu_write_u16(%struct.if_spi_card* %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %106

78:                                               ; preds = %70
  %79 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %7, align 8
  br label %26

86:                                               ; preds = %26
  %87 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %88 = load i32, i32* @IF_SPI_SCRATCH_1_REG, align 4
  %89 = load i32, i32* @FIRMWARE_DNLD_OK, align 4
  %90 = call i32 @spu_write_u16(%struct.if_spi_card* %87, i32 %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %106

94:                                               ; preds = %86
  %95 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %96 = load i32, i32* @IF_SPI_HOST_INT_STATUS_REG, align 4
  %97 = call i32 @spu_write_u16(%struct.if_spi_card* %95, i32 %96, i32 0)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %106

101:                                              ; preds = %94
  %102 = load %struct.if_spi_card*, %struct.if_spi_card** %3, align 8
  %103 = load i32, i32* @IF_SPI_CARD_INT_CAUSE_REG, align 4
  %104 = load i32, i32* @IF_SPI_CIC_CMD_DOWNLOAD_OVER, align 4
  %105 = call i32 @spu_write_u16(%struct.if_spi_card* %102, i32 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %101, %100, %93, %77, %69, %62, %45, %36, %18
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %5, align 4
  %114 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %114)
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spu_set_interrupt_mode(%struct.if_spi_card*, i32, i32) #2

declare dso_local i32 @spu_write_u16(%struct.if_spi_card*, i32, i32) #2

declare dso_local i32 @spu_wait_for_u16(%struct.if_spi_card*, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @spu_write(%struct.if_spi_card*, i32, i32*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
