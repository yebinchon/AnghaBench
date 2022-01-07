; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_pg_exit_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_pg_exit_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32 }

@MEI_PG_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"hbm: pg exit response: state mismatch [%s, %d]\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@MEI_PG_EVENT_RECEIVED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"hbm: pg exit response: unexpected pg event = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_hbm_pg_exit_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_pg_exit_res(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %5 = call i64 @mei_pg_state(%struct.mei_device* %4)
  %6 = load i64, i64* @MEI_PG_ON, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %15 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 129
  br i1 %17, label %18, label %31

18:                                               ; preds = %13, %1
  %19 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %20 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %23 = call i64 @mei_pg_state(%struct.mei_device* %22)
  %24 = call i32 @mei_pg_state_str(i64 %23)
  %25 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @EPROTO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %13, %8
  %32 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %50 [
    i32 128, label %35
    i32 129, label %43
  ]

35:                                               ; preds = %31
  %36 = load i8*, i8** @MEI_PG_EVENT_RECEIVED, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %41 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %40, i32 0, i32 1
  %42 = call i32 @wake_up(i32* %41)
  br label %57

43:                                               ; preds = %31
  %44 = load i8*, i8** @MEI_PG_EVENT_RECEIVED, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %47 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %49 = call i32 @mei_hbm_pg_resume(%struct.mei_device* %48)
  br label %57

50:                                               ; preds = %31
  %51 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %52 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EPROTO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %43, %35
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %50, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @mei_pg_state(%struct.mei_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_pg_state_str(i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mei_hbm_pg_resume(%struct.mei_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
