; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_legacy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_legacy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32 }
%struct.mei_me_hw = type { i32 }

@MEI_PG_EVENT_INTR_WAIT = common dso_local global i64 0, align 8
@MEI_PG_EVENT_INTR_RECEIVED = common dso_local global i64 0, align 8
@MEI_PG_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*)* @mei_me_pg_legacy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_pg_legacy_intr(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_me_hw*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %5 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %4)
  store %struct.mei_me_hw* %5, %struct.mei_me_hw** %3, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %7 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MEI_PG_EVENT_INTR_WAIT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %14 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %15 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @MEI_PG_OFF, align 4
  %17 = load %struct.mei_me_hw*, %struct.mei_me_hw** %3, align 8
  %18 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %20 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %19, i32 0, i32 1
  %21 = call i64 @waitqueue_active(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %25 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %24, i32 0, i32 1
  %26 = call i32 @wake_up(i32* %25)
  br label %27

27:                                               ; preds = %11, %23, %12
  ret void
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
