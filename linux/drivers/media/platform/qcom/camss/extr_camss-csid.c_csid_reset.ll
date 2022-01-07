; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csid_device = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CSID_RESET_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CSID reset timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csid_device*)* @csid_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_reset(%struct.csid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csid_device*, align 8
  %4 = alloca i64, align 8
  store %struct.csid_device* %0, %struct.csid_device** %3, align 8
  %5 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %6 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %5, i32 0, i32 1
  %7 = call i32 @reinit_completion(i32* %6)
  %8 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %9 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %12 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @CAMSS_CSID_RST_CMD(i32 %15)
  %17 = add nsw i64 %10, %16
  %18 = call i32 @writel_relaxed(i32 32767, i64 %17)
  %19 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %20 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %19, i32 0, i32 1
  %21 = load i32, i32* @CSID_RESET_TIMEOUT_MS, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  %23 = call i64 @wait_for_completion_timeout(i32* %20, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %1
  %27 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %28 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CAMSS_CSID_RST_CMD(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
