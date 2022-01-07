; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_hl_pmops_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_hl_pmops_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hl_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Going to resume PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"device pointer is NULL in resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hl_pmops_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_pmops_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hl_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.hl_device* @dev_get_drvdata(%struct.device* %5)
  store %struct.hl_device* %6, %struct.hl_device** %4, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %9 = icmp ne %struct.hl_device* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %14 = call i32 @hl_device_resume(%struct.hl_device* %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.hl_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hl_device_resume(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
