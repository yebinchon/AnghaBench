; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_event_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_event_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, %struct.venus_core* }
%struct.venus_core = type { %struct.device* }
%struct.device = type { i32 }
%struct.hfi_event_data = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"dec: event session error %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_inst*, i32, %struct.hfi_event_data*)* @vdec_event_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_event_notify(%struct.venus_inst* %0, i32 %1, %struct.hfi_event_data* %2) #0 {
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_event_data*, align 8
  %7 = alloca %struct.venus_core*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hfi_event_data* %2, %struct.hfi_event_data** %6, align 8
  %9 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 2
  %11 = load %struct.venus_core*, %struct.venus_core** %10, align 8
  store %struct.venus_core* %11, %struct.venus_core** %7, align 8
  %12 = load %struct.venus_core*, %struct.venus_core** %7, align 8
  %13 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %44 [
    i32 132, label %16
    i32 131, label %24
  ]

16:                                               ; preds = %3
  %17 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.hfi_event_data*, %struct.hfi_event_data** %6, align 8
  %26 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %42 [
    i32 129, label %28
    i32 130, label %32
    i32 128, label %36
  ]

28:                                               ; preds = %24
  %29 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %30 = load %struct.hfi_event_data*, %struct.hfi_event_data** %6, align 8
  %31 = call i32 @vdec_event_change(%struct.venus_inst* %29, %struct.hfi_event_data* %30, i32 1)
  br label %43

32:                                               ; preds = %24
  %33 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %34 = load %struct.hfi_event_data*, %struct.hfi_event_data** %6, align 8
  %35 = call i32 @vdec_event_change(%struct.venus_inst* %33, %struct.hfi_event_data* %34, i32 0)
  br label %43

36:                                               ; preds = %24
  %37 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %38 = load %struct.hfi_event_data*, %struct.hfi_event_data** %6, align 8
  %39 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @venus_helper_release_buf_ref(%struct.venus_inst* %37, i32 %40)
  br label %43

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %36, %32, %28
  br label %45

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %44, %43, %16
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @vdec_event_change(%struct.venus_inst*, %struct.hfi_event_data*, i32) #1

declare dso_local i32 @venus_helper_release_buf_ref(%struct.venus_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
