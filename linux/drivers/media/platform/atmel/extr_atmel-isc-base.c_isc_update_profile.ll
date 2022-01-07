; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_update_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_update_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@ISC_CTRLEN = common dso_local global i32 0, align 4
@ISC_CTRL_UPPRO = common dso_local global i32 0, align 4
@ISC_CTRLSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Time out to update profile\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*)* @isc_update_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_update_profile(%struct.isc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  %7 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %8 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %7, i32 0, i32 1
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %4, align 8
  store i32 100, i32* %6, align 4
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = load i32, i32* @ISC_CTRLEN, align 4
  %12 = load i32, i32* @ISC_CTRL_UPPRO, align 4
  %13 = call i32 @regmap_write(%struct.regmap* %10, i32 %11, i32 %12)
  %14 = load %struct.regmap*, %struct.regmap** %4, align 8
  %15 = load i32, i32* @ISC_CTRLSR, align 4
  %16 = call i32 @regmap_read(%struct.regmap* %14, i32 %15, i32* %5)
  br label %17

17:                                               ; preds = %28, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ISC_CTRL_UPPRO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %23, 0
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = call i32 @usleep_range(i32 1000, i32 2000)
  %30 = load %struct.regmap*, %struct.regmap** %4, align 8
  %31 = load i32, i32* @ISC_CTRLSR, align 4
  %32 = call i32 @regmap_read(%struct.regmap* %30, i32 %31, i32* %5)
  br label %17

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %38 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %37, i32 0, i32 0
  %39 = call i32 @v4l2_warn(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
