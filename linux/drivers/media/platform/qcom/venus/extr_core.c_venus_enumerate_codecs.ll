; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_enumerate_codecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_enumerate_codecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hfi_inst_ops = type { i32 }
%struct.venus_inst = type { i32, i64, %struct.venus_core* }

@HFI_VERSION_1XX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_DEC = common dso_local global i64 0, align 8
@MAX_CODEC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*, i64)* @venus_enumerate_codecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_enumerate_codecs(%struct.venus_core* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfi_inst_ops, align 4
  %7 = alloca %struct.venus_inst*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = bitcast %struct.hfi_inst_ops* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %14 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HFI_VERSION_1XX, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.venus_inst* @kzalloc(i32 24, i32 %22)
  store %struct.venus_inst* %23, %struct.venus_inst** %7, align 8
  %24 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %25 = icmp ne %struct.venus_inst* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %21
  %30 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %31 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %30, i32 0, i32 0
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %34 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %35 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %34, i32 0, i32 2
  store %struct.venus_core* %33, %struct.venus_core** %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %38 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @VIDC_SESSION_TYPE_DEC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %44 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %50

46:                                               ; preds = %29
  %47 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %48 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %52 = call i32 @hfi_session_create(%struct.venus_inst* %51, %struct.hfi_inst_ops* %6)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %92

56:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MAX_CODEC_NUM, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = shl i64 1, %63
  %65 = load i64, i64* %9, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %85

70:                                               ; preds = %61
  %71 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @to_v4l2_codec_type(i64 %72)
  %74 = call i32 @hfi_session_init(%struct.venus_inst* %71, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %89

78:                                               ; preds = %70
  %79 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %80 = call i32 @hfi_session_deinit(%struct.venus_inst* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %89

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %83, %77
  %90 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %91 = call i32 @hfi_session_destroy(%struct.venus_inst* %90)
  br label %92

92:                                               ; preds = %89, %55
  %93 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %94 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %93, i32 0, i32 0
  %95 = call i32 @mutex_destroy(i32* %94)
  %96 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %97 = call i32 @kfree(%struct.venus_inst* %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %26, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.venus_inst* @kzalloc(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @hfi_session_create(%struct.venus_inst*, %struct.hfi_inst_ops*) #2

declare dso_local i32 @hfi_session_init(%struct.venus_inst*, i32) #2

declare dso_local i32 @to_v4l2_codec_type(i64) #2

declare dso_local i32 @hfi_session_deinit(%struct.venus_inst*) #2

declare dso_local i32 @hfi_session_destroy(%struct.venus_inst*) #2

declare dso_local i32 @mutex_destroy(i32*) #2

declare dso_local i32 @kfree(%struct.venus_inst*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
