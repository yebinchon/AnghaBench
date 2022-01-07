; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_print_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"TPS658621A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TPS658621C/D\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"TPS658623\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"TPS658640\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"TPS658643\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TPS6586X\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Found %s, VERSIONCRC is %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32)* @tps6586x_print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps6586x_print_version(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %12 [
    i32 133, label %7
    i32 132, label %8
    i32 131, label %9
    i32 130, label %10
    i32 129, label %10
    i32 128, label %11
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %13

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %13

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %13

10:                                               ; preds = %2, %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %13

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %13

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_info(i32* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %16, i32 %17)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
