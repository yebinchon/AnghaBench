; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_verify_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_verify_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hfi_buffer_requirements = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@HFI_BUFFER_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @venc_verify_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_verify_conf(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_buffer_requirements, align 8
  %6 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %7 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %8 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %20 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %18
  %27 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %28 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %29 = call i32 @venus_helper_get_bufreq(%struct.venus_inst* %27, i32 %28, %struct.hfi_buffer_requirements* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %77

34:                                               ; preds = %26
  %35 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %36 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %43 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements* %5, i32 %45)
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %77

51:                                               ; preds = %41
  %52 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %53 = load i32, i32* @HFI_BUFFER_INPUT, align 4
  %54 = call i32 @venus_helper_get_bufreq(%struct.venus_inst* %52, i32 %53, %struct.hfi_buffer_requirements* %5)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %51
  %60 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %61 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %5, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %68 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements* %5, i32 %70)
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66, %59
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %57, %48, %32, %23
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @venus_helper_get_bufreq(%struct.venus_inst*, i32, %struct.hfi_buffer_requirements*) #1

declare dso_local i64 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
