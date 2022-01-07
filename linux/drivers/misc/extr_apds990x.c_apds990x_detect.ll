; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@APDS990X_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ID read failed\0A\00", align 1
@APDS990X_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"REV read failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"APDS-990x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*)* @apds990x_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_detect(%struct.apds990x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apds990x_chip*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %3, align 8
  %7 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %11 = load i32, i32* @APDS990X_ID, align 4
  %12 = call i32 @apds990x_read_byte(%struct.apds990x_chip* %10, i32 %11, i32* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %22 = load i32, i32* @APDS990X_REV, align 4
  %23 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %24 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %23, i32 0, i32 0
  %25 = call i32 @apds990x_read_byte(%struct.apds990x_chip* %21, i32 %22, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %40 [
    i32 130, label %35
    i32 128, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %33, %33, %33
  %36 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %37 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %28, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @apds990x_read_byte(%struct.apds990x_chip*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
