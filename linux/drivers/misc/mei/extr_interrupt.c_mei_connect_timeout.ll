; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_connect_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_mei_connect_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, i32, %struct.mei_device* }
%struct.mei_device = type { i64 }

@MEI_FILE_CONNECTING = common dso_local global i64 0, align 8
@MEI_FILE_DISCONNECT_REQUIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl*)* @mei_connect_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_connect_timeout(%struct.mei_cl* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %2, align 8
  %4 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %5 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %4, i32 0, i32 2
  %6 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  store %struct.mei_device* %6, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %8 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MEI_FILE_CONNECTING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %14 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i64, i64* @MEI_FILE_DISCONNECT_REQUIRED, align 8
  %19 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %20 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %22 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %21, i32 0, i32 1
  %23 = call i32 @wake_up(i32* %22)
  br label %28

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %27 = call i32 @mei_reset(%struct.mei_device* %26)
  br label %28

28:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mei_reset(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
