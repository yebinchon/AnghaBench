; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.h_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.h_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, %struct.venus_core* }
%struct.venus_core = type { i32 }
%struct.hfi_capability = type { i64, i64, i64, i64 }
%struct.venus_caps = type { i32, %struct.hfi_capability* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.venus_inst*, i64, i64)* @get_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cap(%struct.venus_inst* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.venus_core*, align 8
  %9 = alloca %struct.hfi_capability*, align 8
  %10 = alloca %struct.venus_caps*, align 8
  %11 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %13 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %12, i32 0, i32 2
  %14 = load %struct.venus_core*, %struct.venus_core** %13, align 8
  store %struct.venus_core* %14, %struct.venus_core** %8, align 8
  store %struct.hfi_capability* null, %struct.hfi_capability** %9, align 8
  %15 = load %struct.venus_core*, %struct.venus_core** %8, align 8
  %16 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %17 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %20 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core* %15, i32 %18, i32 %21)
  store %struct.venus_caps* %22, %struct.venus_caps** %10, align 8
  %23 = load %struct.venus_caps*, %struct.venus_caps** %10, align 8
  %24 = icmp ne %struct.venus_caps* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %75

26:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.venus_caps*, %struct.venus_caps** %10, align 8
  %30 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.venus_caps*, %struct.venus_caps** %10, align 8
  %35 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %34, i32 0, i32 1
  %36 = load %struct.hfi_capability*, %struct.hfi_capability** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hfi_capability, %struct.hfi_capability* %36, i64 %38
  %40 = getelementptr inbounds %struct.hfi_capability, %struct.hfi_capability* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.venus_caps*, %struct.venus_caps** %10, align 8
  %46 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %45, i32 0, i32 1
  %47 = load %struct.hfi_capability*, %struct.hfi_capability** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hfi_capability, %struct.hfi_capability* %47, i64 %49
  store %struct.hfi_capability* %50, %struct.hfi_capability** %9, align 8
  br label %55

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %27

55:                                               ; preds = %44, %27
  %56 = load %struct.hfi_capability*, %struct.hfi_capability** %9, align 8
  %57 = icmp ne %struct.hfi_capability* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i64 0, i64* %4, align 8
  br label %75

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  switch i64 %60, label %73 [
    i64 129, label %61
    i64 130, label %65
    i64 128, label %69
  ]

61:                                               ; preds = %59
  %62 = load %struct.hfi_capability*, %struct.hfi_capability** %9, align 8
  %63 = getelementptr inbounds %struct.hfi_capability, %struct.hfi_capability* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  br label %75

65:                                               ; preds = %59
  %66 = load %struct.hfi_capability*, %struct.hfi_capability** %9, align 8
  %67 = getelementptr inbounds %struct.hfi_capability, %struct.hfi_capability* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %4, align 8
  br label %75

69:                                               ; preds = %59
  %70 = load %struct.hfi_capability*, %struct.hfi_capability** %9, align 8
  %71 = getelementptr inbounds %struct.hfi_capability, %struct.hfi_capability* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %4, align 8
  br label %75

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  store i64 0, i64* %4, align 8
  br label %75

75:                                               ; preds = %74, %69, %65, %61, %58, %25
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
