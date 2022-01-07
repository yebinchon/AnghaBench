; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10071_dev = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loop=%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10071_dev*, %struct.tda10071_cmd*)* @tda10071_cmd_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_cmd_execute(%struct.tda10071_dev* %0, %struct.tda10071_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda10071_dev*, align 8
  %5 = alloca %struct.tda10071_cmd*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tda10071_dev* %0, %struct.tda10071_dev** %4, align 8
  store %struct.tda10071_cmd* %1, %struct.tda10071_cmd** %5, align 8
  %10 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %11 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %14 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %22 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %25 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tda10071_cmd*, %struct.tda10071_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tda10071_cmd*, %struct.tda10071_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regmap_bulk_write(i32 %26, i32 0, i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %82

37:                                               ; preds = %20
  %38 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %39 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_write(i32 %40, i32 31, i32 1)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %82

45:                                               ; preds = %37
  store i32 1000, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  br i1 %53, label %54, label %67

54:                                               ; preds = %52
  %55 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %56 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regmap_read(i32 %57, i32 31, i32* %9)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %82

62:                                               ; preds = %54
  %63 = call i32 @usleep_range(i32 200, i32 5000)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  br label %46

67:                                               ; preds = %52
  %68 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %69 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %86

80:                                               ; preds = %67
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %92

82:                                               ; preds = %61, %44, %36
  %83 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %84 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  br label %86

86:                                               ; preds = %82, %77, %17
  %87 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
