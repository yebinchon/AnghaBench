; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i32 }
%struct.at24_client = type { %struct.i2c_client*, %struct.regmap* }
%struct.i2c_client = type { i32 }
%struct.regmap = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@at24_write_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"write %zu@%d --> %d (%ld)\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at24_data*, i8*, i32, i64)* @at24_regmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at24_regmap_write(%struct.at24_data* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.at24_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.at24_client*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca i32, align 4
  store %struct.at24_data* %0, %struct.at24_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %17 = call %struct.at24_client* @at24_translate_offset(%struct.at24_data* %16, i32* %8)
  store %struct.at24_client* %17, %struct.at24_client** %12, align 8
  %18 = load %struct.at24_client*, %struct.at24_client** %12, align 8
  %19 = getelementptr inbounds %struct.at24_client, %struct.at24_client* %18, i32 0, i32 1
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %14, align 8
  %21 = load %struct.at24_client*, %struct.at24_client** %12, align 8
  %22 = getelementptr inbounds %struct.at24_client, %struct.at24_client* %21, i32 0, i32 0
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %13, align 8
  %24 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @at24_adjust_write_count(%struct.at24_data* %24, i32 %25, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @at24_write_timeout, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add i64 %28, %30
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %52, %4
  %33 = load i64, i64* @jiffies, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.regmap*, %struct.regmap** %14, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @regmap_bulk_write(%struct.regmap* %34, i32 %35, i8* %36, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i64, i64* @jiffies, align 8
  %45 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %42, i32 %43, i64 %44)
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %60

50:                                               ; preds = %32
  %51 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %52

52:                                               ; preds = %50
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @time_before(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %32, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @ETIMEDOUT, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.at24_client* @at24_translate_offset(%struct.at24_data*, i32*) #1

declare dso_local i64 @at24_adjust_write_count(%struct.at24_data*, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
