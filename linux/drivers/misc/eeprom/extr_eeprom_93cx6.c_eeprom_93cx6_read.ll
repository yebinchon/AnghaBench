; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32 }

@PCI_EEPROM_READ_OPCODE = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_OPCODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_93cx6_read(%struct.eeprom_93cx6* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.eeprom_93cx6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %9 = call i32 @eeprom_93cx6_startup(%struct.eeprom_93cx6* %8)
  %10 = load i32, i32* @PCI_EEPROM_READ_OPCODE, align 4
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %12 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %10, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* @PCI_EEPROM_WIDTH_OPCODE, align 8
  %20 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %21 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = call i32 @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %17, i32 %18, i64 %24)
  %26 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @eeprom_93cx6_read_bits(%struct.eeprom_93cx6* %26, i32* %27, i32 16)
  %29 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %30 = call i32 @eeprom_93cx6_cleanup(%struct.eeprom_93cx6* %29)
  ret void
}

declare dso_local i32 @eeprom_93cx6_startup(%struct.eeprom_93cx6*) #1

declare dso_local i32 @eeprom_93cx6_write_bits(%struct.eeprom_93cx6*, i32, i64) #1

declare dso_local i32 @eeprom_93cx6_read_bits(%struct.eeprom_93cx6*, i32*, i32) #1

declare dso_local i32 @eeprom_93cx6_cleanup(%struct.eeprom_93cx6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
