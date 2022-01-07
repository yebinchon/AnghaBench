; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_if_spi_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_if_spi_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.if_spi_card = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_7__*, %struct.lbs_private* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lbs_private = type { i32 }
%struct.firmware = type { i32 }

@IF_SPI_SCRATCH_4_REG = common dso_local global i32 0, align 4
@SUCCESSFUL_FW_DOWNLOAD_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Firmware is already loaded for Marvell WLAN 802.11 adapter\0A\00", align 1
@fw_table = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported chip_id: 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to find firmware (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [152 x i8] c"Initializing FW for Marvell WLAN 802.11 adapter (chip_id = 0x%04x, chip_rev = 0x%02x) attached to SPI bus_num %d, chip_select %d. spi->max_speed_hz=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"loaded FW for Marvell WLAN 802.11 adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*)* @if_spi_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_spi_init_card(%struct.if_spi_card* %0) #0 {
  %2 = alloca %struct.if_spi_card*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.firmware*, align 8
  store %struct.if_spi_card* %0, %struct.if_spi_card** %2, align 8
  %9 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %10 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %9, i32 0, i32 4
  %11 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  store %struct.lbs_private* %11, %struct.lbs_private** %3, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  %12 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %13 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %14 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spu_init(%struct.if_spi_card* %12, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %150

22:                                               ; preds = %1
  %23 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %24 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %25 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %24, i32 0, i32 0
  %26 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %27 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %26, i32 0, i32 2
  %28 = call i32 @spu_get_chip_revision(%struct.if_spi_card* %23, i64* %25, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %150

32:                                               ; preds = %22
  %33 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %34 = load i32, i32* @IF_SPI_SCRATCH_4_REG, align 4
  %35 = call i32 @spu_read_u32(%struct.if_spi_card* %33, i32 %34, i64* %6)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %150

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @SUCCESSFUL_FW_DOWNLOAD_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @lbs_deb_spi(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %143

45:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fw_table, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %53 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fw_table, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %46

67:                                               ; preds = %62, %46
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fw_table, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %69)
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %77 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @netdev_err(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %150

83:                                               ; preds = %67
  %84 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %85 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %89 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fw_table, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 0
  %94 = call i32 @lbs_get_firmware(i32* %87, i32 %91, %struct.TYPE_10__* %93, %struct.firmware** %7, %struct.firmware** %8)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %83
  %98 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %99 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @netdev_err(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %150

103:                                              ; preds = %83
  %104 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %105 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %108 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %111 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %118 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %123 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, ...) @lbs_deb_spi(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0), i64 %106, i32 %109, i32 %116, i32 %121, i32 %126)
  %128 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %129 = load %struct.firmware*, %struct.firmware** %7, align 8
  %130 = call i32 @if_spi_prog_helper_firmware(%struct.if_spi_card* %128, %struct.firmware* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %103
  br label %150

134:                                              ; preds = %103
  %135 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %136 = load %struct.firmware*, %struct.firmware** %8, align 8
  %137 = call i32 @if_spi_prog_main_firmware(%struct.if_spi_card* %135, %struct.firmware* %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %150

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @lbs_deb_spi(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %43
  %144 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %145 = call i32 @spu_set_interrupt_mode(%struct.if_spi_card* %144, i32 0, i32 1)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %150

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %148, %140, %133, %97, %72, %38, %31, %21
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @spu_init(%struct.if_spi_card*, i32) #1

declare dso_local i32 @spu_get_chip_revision(%struct.if_spi_card*, i64*, i32*) #1

declare dso_local i32 @spu_read_u32(%struct.if_spi_card*, i32, i64*) #1

declare dso_local i32 @lbs_deb_spi(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @lbs_get_firmware(i32*, i32, %struct.TYPE_10__*, %struct.firmware**, %struct.firmware**) #1

declare dso_local i32 @if_spi_prog_helper_firmware(%struct.if_spi_card*, %struct.firmware*) #1

declare dso_local i32 @if_spi_prog_main_firmware(%struct.if_spi_card*, %struct.firmware*) #1

declare dso_local i32 @spu_set_interrupt_mode(%struct.if_spi_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
