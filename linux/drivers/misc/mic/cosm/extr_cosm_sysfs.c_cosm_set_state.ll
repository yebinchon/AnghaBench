; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_cosm_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_cosm_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"State %s -> %s\0A\00", align 1
@cosm_state_string = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cosm_set_state(%struct.cosm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca i64, align 8
  store %struct.cosm_device* %0, %struct.cosm_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %6 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %5, i32 0, i32 2
  %7 = load i32*, i32** @cosm_state_string, align 8
  %8 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %9 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @cosm_state_string, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %20 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %22 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sysfs_notify_dirent(i32 %23)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @sysfs_notify_dirent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
