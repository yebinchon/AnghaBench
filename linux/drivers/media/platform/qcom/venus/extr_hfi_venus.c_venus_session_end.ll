; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.venus_hfi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@venus_fw_coverage = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"fw coverage msg ON failed\0A\00", align 1
@HFI_CMD_SYS_SESSION_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @venus_session_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_session_end(%struct.venus_inst* %0) #0 {
  %2 = alloca %struct.venus_inst*, align 8
  %3 = alloca %struct.venus_hfi_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %2, align 8
  %5 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %6 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.venus_hfi_device* @to_hfi_priv(i32 %7)
  store %struct.venus_hfi_device* %8, %struct.venus_hfi_device** %3, align 8
  %9 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %10 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i64, i64* @venus_fw_coverage, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %18 = load i64, i64* @venus_fw_coverage, align 8
  %19 = call i64 @venus_sys_set_coverage(%struct.venus_hfi_device* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %27 = load i32, i32* @HFI_CMD_SYS_SESSION_END, align 4
  %28 = call i32 @venus_session_cmd(%struct.venus_inst* %26, i32 %27)
  ret i32 %28
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(i32) #1

declare dso_local i64 @venus_sys_set_coverage(%struct.venus_hfi_device*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @venus_session_cmd(%struct.venus_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
