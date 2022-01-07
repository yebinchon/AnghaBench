; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.atmel_pmecc_caps = type { i32 }
%struct.atmel_pmecc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid caps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_pmecc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pmecc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.atmel_pmecc_caps*, align 8
  %6 = alloca %struct.atmel_pmecc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.atmel_pmecc_caps* @of_device_get_match_data(%struct.device* %10)
  store %struct.atmel_pmecc_caps* %11, %struct.atmel_pmecc_caps** %5, align 8
  %12 = load %struct.atmel_pmecc_caps*, %struct.atmel_pmecc_caps** %5, align 8
  %13 = icmp ne %struct.atmel_pmecc_caps* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.atmel_pmecc_caps*, %struct.atmel_pmecc_caps** %5, align 8
  %22 = call %struct.atmel_pmecc* @atmel_pmecc_create(%struct.platform_device* %20, %struct.atmel_pmecc_caps* %21, i32 0, i32 1)
  store %struct.atmel_pmecc* %22, %struct.atmel_pmecc** %6, align 8
  %23 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %24 = call i64 @IS_ERR(%struct.atmel_pmecc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.atmel_pmecc* %27)
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.atmel_pmecc* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %26, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.atmel_pmecc_caps* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.atmel_pmecc* @atmel_pmecc_create(%struct.platform_device*, %struct.atmel_pmecc_caps*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.atmel_pmecc*) #1

declare dso_local i32 @PTR_ERR(%struct.atmel_pmecc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_pmecc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
