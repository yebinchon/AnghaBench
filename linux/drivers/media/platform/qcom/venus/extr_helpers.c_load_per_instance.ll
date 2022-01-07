; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_load_per_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_load_per_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, i32, i32 }

@INST_INIT = common dso_local global i64 0, align 8
@INST_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @load_per_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_per_instance(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %5 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %6 = icmp ne %struct.venus_inst* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INST_INIT, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INST_STOP, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %7, %1
  store i32 0, i32* %2, align 4
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %22 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ALIGN(i32 %23, i32 16)
  %25 = sdiv i32 %24, 16
  %26 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %27 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ALIGN(i32 %28, i32 16)
  %30 = sdiv i32 %29, 16
  %31 = mul nsw i32 %25, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %20, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
