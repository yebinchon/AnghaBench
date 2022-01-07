; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-i2c.c_pm860x_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-i2c.c_pm860x_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pm860x_chip = type { %struct.regmap*, %struct.regmap*, %struct.i2c_client* }
%struct.regmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm860x_bulk_read(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pm860x_chip*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.pm860x_chip* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.pm860x_chip* %13, %struct.pm860x_chip** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = load %struct.pm860x_chip*, %struct.pm860x_chip** %9, align 8
  %16 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %18 = icmp eq %struct.i2c_client* %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.pm860x_chip*, %struct.pm860x_chip** %9, align 8
  %21 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %20, i32 0, i32 1
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  br label %27

23:                                               ; preds = %4
  %24 = load %struct.pm860x_chip*, %struct.pm860x_chip** %9, align 8
  %25 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %24, i32 0, i32 0
  %26 = load %struct.regmap*, %struct.regmap** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi %struct.regmap* [ %22, %19 ], [ %26, %23 ]
  store %struct.regmap* %28, %struct.regmap** %10, align 8
  %29 = load %struct.regmap*, %struct.regmap** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regmap_raw_read(%struct.regmap* %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local %struct.pm860x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_raw_read(%struct.regmap*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
