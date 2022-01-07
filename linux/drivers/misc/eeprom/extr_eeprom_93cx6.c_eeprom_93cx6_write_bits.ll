; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_write_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32, i32, i32 (%struct.eeprom_93cx6*)*, i64, i32 (%struct.eeprom_93cx6*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*, i32, i32)* @eeprom_93cx6_write_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eeprom_93cx6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %9 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %8, i32 0, i32 4
  %10 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %9, align 8
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %12 = call i32 %10(%struct.eeprom_93cx6* %11)
  %13 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %14 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %16 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %18 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub i32 %25, 1
  %27 = shl i32 1, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %34 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %36 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %35, i32 0, i32 2
  %37 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %36, align 8
  %38 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %39 = call i32 %37(%struct.eeprom_93cx6* %38)
  %40 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %41 = call i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %40)
  %42 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %43 = call i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %42)
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %7, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %49 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %51 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %50, i32 0, i32 2
  %52 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %51, align 8
  %53 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %54 = call i32 %52(%struct.eeprom_93cx6* %53)
  ret void
}

declare dso_local i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6*) #1

declare dso_local i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
