; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_buf_update_wm_on_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_buf_update_wm_on_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfe_output = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Next buf in wrong state! %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_output*)* @vfe_buf_update_wm_on_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_buf_update_wm_on_next(%struct.vfe_device* %0, %struct.vfe_output* %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_output*, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store %struct.vfe_output* %1, %struct.vfe_output** %4, align 8
  %5 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %6 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %13 [
    i32 129, label %8
    i32 128, label %12
  ]

8:                                                ; preds = %2
  %9 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %10 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %11 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %9, %struct.vfe_output* %10, i32 3)
  br label %23

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12
  %14 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %15 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %20 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err_ratelimited(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %13, %8
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
