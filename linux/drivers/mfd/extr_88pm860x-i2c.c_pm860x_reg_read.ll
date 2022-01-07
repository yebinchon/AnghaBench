; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-i2c.c_pm860x_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-i2c.c_pm860x_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pm860x_chip = type { %struct.regmap*, %struct.regmap*, %struct.i2c_client* }
%struct.regmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm860x_reg_read(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pm860x_chip*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.pm860x_chip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.pm860x_chip* %11, %struct.pm860x_chip** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = load %struct.pm860x_chip*, %struct.pm860x_chip** %6, align 8
  %14 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %13, i32 0, i32 2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %16 = icmp eq %struct.i2c_client* %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.pm860x_chip*, %struct.pm860x_chip** %6, align 8
  %19 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %18, i32 0, i32 1
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.pm860x_chip*, %struct.pm860x_chip** %6, align 8
  %23 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %22, i32 0, i32 0
  %24 = load %struct.regmap*, %struct.regmap** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi %struct.regmap* [ %20, %17 ], [ %24, %21 ]
  store %struct.regmap* %26, %struct.regmap** %7, align 8
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @regmap_read(%struct.regmap* %27, i32 %28, i32* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.pm860x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
