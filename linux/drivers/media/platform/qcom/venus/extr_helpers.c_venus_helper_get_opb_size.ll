; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_opb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_opb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, i64, i32 }

@VIDC_SESSION_TYPE_ENC = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_get_opb_size(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %4 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %5 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VIDC_SESSION_TYPE_ENC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %11 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %25 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %31 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29, %19, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
