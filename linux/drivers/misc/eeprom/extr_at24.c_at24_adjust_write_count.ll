; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_adjust_write_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_adjust_write_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at24_data*, i32, i64)* @at24_adjust_write_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at24_adjust_write_count(%struct.at24_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.at24_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.at24_data* %0, %struct.at24_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.at24_data*, %struct.at24_data** %4, align 8
  %10 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.at24_data*, %struct.at24_data** %4, align 8
  %15 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, 1
  %20 = load %struct.at24_data*, %struct.at24_data** %4, align 8
  %21 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @roundup(i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub i32 %32, %33
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %31, %17
  %37 = load i64, i64* %6, align 8
  ret i64 %37
}

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
