; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_stop_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_stop_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }

@HFI_FLUSH_ALL = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_SEEK = common dso_local global i32 0, align 4
@HFI_FLUSH_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @vdec_stop_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_stop_output(%struct.venus_inst* %0) #0 {
  %2 = alloca %struct.venus_inst*, align 8
  %3 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %5 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 131, label %7
    i32 130, label %7
    i32 128, label %7
    i32 129, label %14
    i32 132, label %14
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %9 = load i32, i32* @HFI_FLUSH_ALL, align 4
  %10 = call i32 @hfi_session_flush(%struct.venus_inst* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @VENUS_DEC_STATE_SEEK, align 4
  %12 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %13 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %19

14:                                               ; preds = %1, %1
  %15 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %16 = load i32, i32* @HFI_FLUSH_INPUT, align 4
  %17 = call i32 @hfi_session_flush(%struct.venus_inst* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14, %7
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @hfi_session_flush(%struct.venus_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
