; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_pg_enter_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_pg_enter_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32 }

@MEI_PG_OFF = common dso_local global i64 0, align 8
@MEI_PG_EVENT_WAIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"hbm: pg entry response: state mismatch [%s, %d]\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@MEI_PG_EVENT_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_hbm_pg_enter_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_pg_enter_res(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %5 = call i64 @mei_pg_state(%struct.mei_device* %4)
  %6 = load i64, i64* @MEI_PG_OFF, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MEI_PG_EVENT_WAIT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8, %1
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %19 = call i64 @mei_pg_state(%struct.mei_device* %18)
  %20 = call i32 @mei_pg_state_str(i64 %19)
  %21 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23)
  %25 = load i32, i32* @EPROTO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %8
  %28 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %29 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @mei_pg_state(%struct.mei_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @mei_pg_state_str(i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
