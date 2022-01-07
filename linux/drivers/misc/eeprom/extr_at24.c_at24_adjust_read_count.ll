; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_adjust_read_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_adjust_read_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i32 }

@AT24_FLAG_NO_RDROL = common dso_local global i32 0, align 4
@AT24_FLAG_ADDR16 = common dso_local global i32 0, align 4
@at24_io_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at24_data*, i32, i64)* @at24_adjust_read_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at24_adjust_read_count(%struct.at24_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.at24_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.at24_data* %0, %struct.at24_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.at24_data*, %struct.at24_data** %4, align 8
  %10 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AT24_FLAG_NO_RDROL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.at24_data*, %struct.at24_data** %4, align 8
  %17 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AT24_FLAG_ADDR16, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 16, i32 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %32, %15
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @at24_io_limit, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @at24_io_limit, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
