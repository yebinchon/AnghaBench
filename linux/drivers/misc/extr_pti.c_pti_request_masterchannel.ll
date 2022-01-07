; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_request_masterchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_request_masterchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pti_masterchannel = type { i32 }

@alloclock = common dso_local global i32 0, align 4
@drv_data = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_APP_IDS = common dso_local global i32 0, align 4
@APP_BASE_ID = common dso_local global i32 0, align 4
@MAX_OS_IDS = common dso_local global i32 0, align 4
@OS_BASE_ID = common dso_local global i32 0, align 4
@MAX_MODEM_IDS = common dso_local global i32 0, align 4
@MODEM_BASE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pti_masterchannel* @pti_request_masterchannel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pti_masterchannel*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i32 @mutex_lock(i32* @alloclock)
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %32 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %24
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX_APP_IDS, align 4
  %13 = load i32, i32* @APP_BASE_ID, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.pti_masterchannel* @get_id(i32 %11, i32 %12, i32 %13, i8* %14)
  store %struct.pti_masterchannel* %15, %struct.pti_masterchannel** %5, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX_OS_IDS, align 4
  %21 = load i32, i32* @OS_BASE_ID, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.pti_masterchannel* @get_id(i32 %19, i32 %20, i32 %21, i8* %22)
  store %struct.pti_masterchannel* %23, %struct.pti_masterchannel** %5, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_MODEM_IDS, align 4
  %29 = load i32, i32* @MODEM_BASE_ID, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call %struct.pti_masterchannel* @get_id(i32 %27, i32 %28, i32 %29, i8* %30)
  store %struct.pti_masterchannel* %31, %struct.pti_masterchannel** %5, align 8
  br label %33

32:                                               ; preds = %2
  store %struct.pti_masterchannel* null, %struct.pti_masterchannel** %5, align 8
  br label %33

33:                                               ; preds = %32, %24, %16, %8
  %34 = call i32 @mutex_unlock(i32* @alloclock)
  %35 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %5, align 8
  ret %struct.pti_masterchannel* %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pti_masterchannel* @get_id(i32, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
