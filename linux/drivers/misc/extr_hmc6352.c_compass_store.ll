; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hmc6352.c_compass_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hmc6352.c_compass_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@compass_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64, i8*)* @compass_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compass_store(%struct.device* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load i64, i64* %12, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i64, i64* %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = call i64 @array_index_nospec(i64 %30, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = call i32 @mutex_lock(i32* @compass_mutex)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @compass_command(%struct.i2c_client* %35, i8 signext %39)
  store i32 %40, i32* %11, align 4
  %41 = call i32 @mutex_unlock(i32* @compass_mutex)
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %49

46:                                               ; preds = %29
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %44, %26, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @compass_command(%struct.i2c_client*, i8 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
