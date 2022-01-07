; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_multireadb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_multireadb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_93cx6_multireadb(%struct.eeprom_93cx6* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.eeprom_93cx6*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i64*, i64** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = call i32 @eeprom_93cx6_readb(%struct.eeprom_93cx6* %15, i64 %19, i64* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local i32 @eeprom_93cx6_readb(%struct.eeprom_93cx6*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
