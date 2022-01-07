; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_eral.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_eral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93xx46_dev = type { i32, i32, %struct.TYPE_2__*, %struct.eeprom_93xx46_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.eeprom_93xx46_platform_data = type { i32 (%struct.eeprom_93xx46_dev.0*)*, i32 (%struct.eeprom_93xx46_dev.1*)* }
%struct.eeprom_93xx46_dev.0 = type opaque
%struct.eeprom_93xx46_dev.1 = type opaque
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@OP_START = common dso_local global i32 0, align 4
@ADDR_ERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"eral cmd 0x%04x, %d bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"erase error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeprom_93xx46_dev*)* @eeprom_93xx46_eral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_eral(%struct.eeprom_93xx46_dev* %0) #0 {
  %2 = alloca %struct.eeprom_93xx46_dev*, align 8
  %3 = alloca %struct.eeprom_93xx46_platform_data*, align 8
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eeprom_93xx46_dev* %0, %struct.eeprom_93xx46_dev** %2, align 8
  %9 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %10 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %9, i32 0, i32 3
  %11 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %10, align 8
  store %struct.eeprom_93xx46_platform_data* %11, %struct.eeprom_93xx46_platform_data** %3, align 8
  %12 = load i32, i32* @OP_START, align 4
  %13 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %14 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %18 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @ADDR_ERAL, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  store i32 10, i32* %6, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @ADDR_ERAL, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  store i32 9, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %32 = call i64 @has_quirk_instruction_length(%struct.eeprom_93xx46_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 2
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %41 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = call i32 @spi_message_init(%struct.spi_message* %4)
  %48 = call i32 @memset(%struct.spi_transfer* %5, i32 0, i32 16)
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 0
  store i32* %8, i32** %49, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 1
  store i32 2, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = call i32 @spi_message_add_tail(%struct.spi_transfer* %5, %struct.spi_message* %4)
  %54 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %55 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %58 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %57, i32 0, i32 3
  %59 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %58, align 8
  %60 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %59, i32 0, i32 1
  %61 = load i32 (%struct.eeprom_93xx46_dev.1*)*, i32 (%struct.eeprom_93xx46_dev.1*)** %60, align 8
  %62 = icmp ne i32 (%struct.eeprom_93xx46_dev.1*)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %39
  %64 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %65 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %64, i32 0, i32 3
  %66 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %65, align 8
  %67 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %66, i32 0, i32 1
  %68 = load i32 (%struct.eeprom_93xx46_dev.1*)*, i32 (%struct.eeprom_93xx46_dev.1*)** %67, align 8
  %69 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %70 = bitcast %struct.eeprom_93xx46_dev* %69 to %struct.eeprom_93xx46_dev.1*
  %71 = call i32 %68(%struct.eeprom_93xx46_dev.1* %70)
  br label %72

72:                                               ; preds = %63, %39
  %73 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %74 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @spi_sync(%struct.TYPE_2__* %75, %struct.spi_message* %4)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %81 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %72
  %87 = call i32 @mdelay(i32 6)
  %88 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %3, align 8
  %89 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %88, i32 0, i32 0
  %90 = load i32 (%struct.eeprom_93xx46_dev.0*)*, i32 (%struct.eeprom_93xx46_dev.0*)** %89, align 8
  %91 = icmp ne i32 (%struct.eeprom_93xx46_dev.0*)* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %3, align 8
  %94 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %93, i32 0, i32 0
  %95 = load i32 (%struct.eeprom_93xx46_dev.0*)*, i32 (%struct.eeprom_93xx46_dev.0*)** %94, align 8
  %96 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %97 = bitcast %struct.eeprom_93xx46_dev* %96 to %struct.eeprom_93xx46_dev.0*
  %98 = call i32 %95(%struct.eeprom_93xx46_dev.0* %97)
  br label %99

99:                                               ; preds = %92, %86
  %100 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %2, align 8
  %101 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i64 @has_quirk_instruction_length(%struct.eeprom_93xx46_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
