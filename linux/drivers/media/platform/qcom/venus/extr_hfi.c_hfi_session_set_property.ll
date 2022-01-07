; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi_ops* }
%struct.hfi_ops = type { {}* }

@INST_INIT = common dso_local global i64 0, align 8
@INST_STOP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_set_property(%struct.venus_inst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hfi_ops*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hfi_ops*, %struct.hfi_ops** %12, align 8
  store %struct.hfi_ops* %13, %struct.hfi_ops** %8, align 8
  %14 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INST_INIT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INST_STOP, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %19
  %29 = load %struct.hfi_ops*, %struct.hfi_ops** %8, align 8
  %30 = getelementptr inbounds %struct.hfi_ops, %struct.hfi_ops* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.venus_inst*, i32, i8*)**
  %32 = load i32 (%struct.venus_inst*, i32, i8*)*, i32 (%struct.venus_inst*, i32, i8*)** %31, align 8
  %33 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 %32(%struct.venus_inst* %33, i32 %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
