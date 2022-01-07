; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_read_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_read_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i64, i64, i32 (%struct.eeprom_93cx6*)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*, i32*, i32)* @eeprom_93cx6_read_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_93cx6_read_bits(%struct.eeprom_93cx6* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.eeprom_93cx6*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %10 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %9, i32 0, i32 2
  %11 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %10, align 8
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %13 = call i32 %11(%struct.eeprom_93cx6* %12)
  %14 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %15 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %17 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %19 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %47, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %26 = call i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %25)
  %27 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %27, i32 0, i32 2
  %29 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %28, align 8
  %30 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %31 = call i32 %29(%struct.eeprom_93cx6* %30)
  %32 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %33 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %35 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = sub i32 %39, 1
  %41 = shl i32 1, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %24
  %45 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %46 = call i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
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
