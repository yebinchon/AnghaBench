; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_regmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_regmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i64 }
%struct.at24_client = type { %struct.i2c_client*, %struct.regmap* }
%struct.i2c_client = type { i32 }
%struct.regmap = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@at24_write_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"read %zu@%d --> %d (%ld)\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at24_data*, i8*, i32, i64)* @at24_regmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at24_regmap_read(%struct.at24_data* %0, i8* %1, i32 %2, i64 %3) #0 {
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
  %27 = call i64 @at24_adjust_read_count(%struct.at24_data* %24, i32 %25, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %29 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @at24_write_timeout, align 4
  %37 = call i64 @msecs_to_jiffies(i32 %36)
  %38 = add i64 %35, %37
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %59, %4
  %40 = load i64, i64* @jiffies, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.regmap*, %struct.regmap** %14, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @regmap_bulk_read(%struct.regmap* %41, i32 %42, i8* %43, i64 %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i64, i64* @jiffies, align 8
  %52 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %49, i32 %50, i64 %51)
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %39
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %67

57:                                               ; preds = %39
  %58 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %59

59:                                               ; preds = %57
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @time_before(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %39, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @ETIMEDOUT, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %64, %55
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local %struct.at24_client* @at24_translate_offset(%struct.at24_data*, i32*) #1

declare dso_local i64 @at24_adjust_read_count(%struct.at24_data*, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
