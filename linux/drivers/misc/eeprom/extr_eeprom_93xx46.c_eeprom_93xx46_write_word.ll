; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93xx46_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i32, i32 }

@OP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"write cmd 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeprom_93xx46_dev*, i8*, i32)* @eeprom_93xx46_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_write_word(%struct.eeprom_93xx46_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.eeprom_93xx46_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca [2 x %struct.spi_transfer], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.eeprom_93xx46_dev* %0, %struct.eeprom_93xx46_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @OP_WRITE, align 4
  %14 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %4, align 8
  %15 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %13, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %4, align 8
  %19 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 127
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  store i32 10, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 63
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  store i32 9, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %4, align 8
  %35 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @spi_message_init(%struct.spi_message* %7)
  %41 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %42 = call i32 @memset(%struct.spi_transfer* %41, i32 0, i32 32)
  %43 = bitcast i32* %12 to i8*
  %44 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 16
  %46 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 1
  store i32 2, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %52 = call i32 @spi_message_add_tail(%struct.spi_transfer* %51, %struct.spi_message* %7)
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 16
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 2
  store i32 8, i32* %60, align 4
  %61 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %62 = call i32 @spi_message_add_tail(%struct.spi_transfer* %61, %struct.spi_message* %7)
  %63 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %4, align 8
  %64 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @spi_sync(%struct.TYPE_2__* %65, %struct.spi_message* %7)
  store i32 %66, i32* %11, align 4
  %67 = call i32 @mdelay(i32 6)
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
