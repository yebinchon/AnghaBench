; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_configure_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_configure_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@S5K5BAF_NUM_SUPPLIES = common dso_local global i32 0, align 4
@s5k5baf_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*)* @s5k5baf_configure_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_configure_regulators(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %6 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %7 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %6, i32 0, i32 1
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @S5K5BAF_NUM_SUPPLIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32*, i32** @s5k5baf_supply_names, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %20 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %18, i32* %25, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* @S5K5BAF_NUM_SUPPLIES, align 4
  %33 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %34 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @devm_regulator_bulk_get(i32* %31, i32 %32, %struct.TYPE_2__* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = call i32 @v4l2_err(%struct.i2c_client* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @v4l2_err(%struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
