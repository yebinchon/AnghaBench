; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.regmap = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@twl_priv = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: Read failed (mod %d, reg 0x%02x count %d)\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl_i2c_read(i64 %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.regmap* @twl_get_regmap(i64 %12)
  store %struct.regmap* %13, %struct.regmap** %10, align 8
  %14 = load %struct.regmap*, %struct.regmap** %10, align 8
  %15 = icmp ne %struct.regmap* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.regmap*, %struct.regmap** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twl_priv, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @regmap_bulk_read(%struct.regmap* %20, i64 %29, i64* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = load i32, i32* @DRIVER_NAME, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %19
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.regmap* @twl_get_regmap(i64) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i64, i64*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
