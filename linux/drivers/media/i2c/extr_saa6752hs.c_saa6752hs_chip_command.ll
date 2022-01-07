; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_chip_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_chip_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @saa6752hs_chip_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_chip_command(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %24 [
    i32 131, label %10
    i32 128, label %12
    i32 129, label %14
    i32 134, label %16
    i32 133, label %18
    i32 130, label %20
    i32 132, label %22
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %11, align 1
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 3, i8* %13, align 1
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 2, i8* %15, align 1
  br label %27

16:                                               ; preds = %2
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 4, i8* %17, align 1
  br label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 5, i8* %19, align 1
  br label %27

20:                                               ; preds = %2
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 6, i8* %21, align 1
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 7, i8* %23, align 1
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %22, %20, %18, %16, %14, %12, %10
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %30 = call i32 @i2c_master_send(%struct.i2c_client* %28, i8* %29, i32 1)
  %31 = load i32, i32* @jiffies, align 4
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %31, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %58, %27
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 16, i8* %37, align 1
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %40 = call i32 @i2c_master_send(%struct.i2c_client* %38, i8* %39, i32 1)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %43 = call i32 @i2c_master_recv(%struct.i2c_client* %41, i8* %42, i32 1)
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %60

50:                                               ; preds = %36
  %51 = load i32, i32* @jiffies, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @time_after(i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %50
  %59 = call i32 @msleep(i32 10)
  br label %36

60:                                               ; preds = %55, %49
  %61 = call i32 @msleep(i32 50)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
