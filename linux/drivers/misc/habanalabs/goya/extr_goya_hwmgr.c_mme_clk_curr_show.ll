; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_hwmgr.c_mme_clk_curr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_hwmgr.c_mme_clk_curr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hl_device = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@MME_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @mme_clk_curr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mme_clk_curr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.hl_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.hl_device* %11, %struct.hl_device** %8, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %13 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %20 = load i32, i32* @MME_PLL, align 4
  %21 = call i64 @hl_get_frequency(%struct.hl_device* %19, i32 %20, i32 1)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %4, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %26, %24, %15
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local %struct.hl_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i64 @hl_get_frequency(%struct.hl_device*, i32, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
