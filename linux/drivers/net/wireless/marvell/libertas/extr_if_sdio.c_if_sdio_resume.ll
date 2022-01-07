; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.if_sdio_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"%s: resume: we're back\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @if_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %6)
  store %struct.sdio_func* %7, %struct.sdio_func** %3, align 8
  %8 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %9 = call %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %8)
  store %struct.if_sdio_card* %9, %struct.if_sdio_card** %4, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %12 = call i32 @sdio_func_id(%struct.sdio_func* %11)
  %13 = call i32 @dev_info(%struct.device* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %15 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %22 = call i32 @if_sdio_power_on(%struct.if_sdio_card* %21)
  %23 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %24 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %27 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @wait_event(i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %20, %1
  %33 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %34 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @lbs_resume(%struct.TYPE_2__* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @if_sdio_power_on(%struct.if_sdio_card*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @lbs_resume(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
