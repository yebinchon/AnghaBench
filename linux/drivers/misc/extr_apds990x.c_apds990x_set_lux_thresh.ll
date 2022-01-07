; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_set_lux_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_set_lux_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i32 }

@APDS_RANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*, i64*, i8*)* @apds990x_set_lux_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_set_lux_thresh(%struct.apds990x_chip* %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apds990x_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @kstrtoul(i8* %10, i32 0, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @APDS_RANGE, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %16
  %24 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %25 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %30 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %35 = call i32 @apds990x_refresh_athres(%struct.apds990x_chip* %34)
  br label %36

36:                                               ; preds = %33, %23
  %37 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %38 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %20, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apds990x_refresh_athres(%struct.apds990x_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
