; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_volume_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_volume_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i32 }
%struct.ubi_notification = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to write a new fastmap: %i\00", align 1
@ubi_notifiers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_volume_notify(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_notification, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %10 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %8, i32 0, i32 1
  %11 = call i32 @ubi_do_get_device_info(%struct.ubi_device* %9, i32* %10)
  %12 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %13 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %14 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %8, i32 0, i32 0
  %15 = call i32 @ubi_do_get_volume_info(%struct.ubi_device* %12, %struct.ubi_volume* %13, i32* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %27 [
    i32 131, label %17
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %19 = call i32 @ubi_update_fastmap(%struct.ubi_device* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ubi_msg(%struct.ubi_device* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @blocking_notifier_call_chain(i32* @ubi_notifiers, i32 %28, %struct.ubi_notification* %8)
  ret i32 %29
}

declare dso_local i32 @ubi_do_get_device_info(%struct.ubi_device*, i32*) #1

declare dso_local i32 @ubi_do_get_volume_info(%struct.ubi_device*, %struct.ubi_volume*, i32*) #1

declare dso_local i32 @ubi_update_fastmap(%struct.ubi_device*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.ubi_notification*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
