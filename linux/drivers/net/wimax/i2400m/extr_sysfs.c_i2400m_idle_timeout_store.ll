; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_sysfs.c_i2400m_idle_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_sysfs.c_i2400m_idle_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2400m = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"idle_timeout: %u: invalid msecs specification; valid values are 0, 100-300000 in 100 increments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @i2400m_idle_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2400m_idle_timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2400m*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @to_net_dev(%struct.device* %12)
  %14 = call %struct.i2400m* @net_dev_to_i2400m(i32 %13)
  store %struct.i2400m* %14, %struct.i2400m** %10, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %47

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp ult i32 %25, 100
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ugt i32 %28, 300000
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = urem i32 %31, 100
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %27, %24
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %48

38:                                               ; preds = %30, %21
  %39 = load %struct.i2400m*, %struct.i2400m** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @i2400m_set_idle_timeout(%struct.i2400m* %39, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp uge i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i64, i64* %9, align 8
  ret i64 %49
}

declare dso_local %struct.i2400m* @net_dev_to_i2400m(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @i2400m_set_idle_timeout(%struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
