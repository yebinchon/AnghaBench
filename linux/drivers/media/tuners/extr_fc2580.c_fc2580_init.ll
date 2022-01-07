; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.fc2580_dev = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@fc2580_init_reg_vals = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc2580_dev*)* @fc2580_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc2580_init(%struct.fc2580_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc2580_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fc2580_dev* %0, %struct.fc2580_dev** %3, align 8
  %7 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %8 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %39, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fc2580_init_reg_vals, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fc2580_init_reg_vals, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fc2580_init_reg_vals, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_write(i32 %21, i32 %27, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %45

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %44 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
