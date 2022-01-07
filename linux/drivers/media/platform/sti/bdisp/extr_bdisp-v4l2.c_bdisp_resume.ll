; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bdisp_dev = type { i32, i32 }

@ST_M2M_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @bdisp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bdisp_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.bdisp_dev* @dev_get_drvdata(%struct.device* %7)
  store %struct.bdisp_dev* %8, %struct.bdisp_dev** %4, align 8
  %9 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %10 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @ST_M2M_OPEN, align 4
  %14 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %15 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %18 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @pm_runtime_suspended(%struct.device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @bdisp_runtime_resume(%struct.device* %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.bdisp_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @bdisp_runtime_resume(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
