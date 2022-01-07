; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_buf_update_wm_on_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_buf_update_wm_on_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfe_output = type { i32 }

@VFE_OUTPUT_STOPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Last buff in wrong state! %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_output*)* @vfe_buf_update_wm_on_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_buf_update_wm_on_last(%struct.vfe_device* %0, %struct.vfe_output* %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_output*, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store %struct.vfe_output* %1, %struct.vfe_output** %4, align 8
  %5 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %6 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %21 [
    i32 129, label %8
    i32 128, label %14
  ]

8:                                                ; preds = %2
  %9 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %10 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %9, i32 0, i32 0
  store i32 128, i32* %10, align 4
  %11 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %12 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %13 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %11, %struct.vfe_output* %12, i32 1)
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* @VFE_OUTPUT_STOPPING, align 4
  %16 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %17 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %19 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %20 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %18, %struct.vfe_output* %19, i32 0)
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %23 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %28 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err_ratelimited(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %21, %14, %8
  ret void
}

declare dso_local i32 @vfe_output_frame_drop(%struct.vfe_device*, %struct.vfe_output*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
