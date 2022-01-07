; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_out_fmts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_out_fmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, %struct.venus_core* }
%struct.venus_core = type { i32 }
%struct.venus_caps = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_COLOR_FORMAT_UBWC_BASE = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_get_out_fmts(%struct.venus_inst* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.venus_inst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.venus_core*, align 8
  %13 = alloca %struct.venus_caps*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %19 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %18, i32 0, i32 2
  %20 = load %struct.venus_core*, %struct.venus_core** %19, align 8
  store %struct.venus_core* %20, %struct.venus_core** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @to_hfi_raw_fmt(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %95

30:                                               ; preds = %5
  %31 = load %struct.venus_core*, %struct.venus_core** %12, align 8
  %32 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %33 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %36 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core* %31, i32 %34, i32 %37)
  store %struct.venus_caps* %38, %struct.venus_caps** %13, align 8
  %39 = load %struct.venus_caps*, %struct.venus_caps** %13, align 8
  %40 = icmp ne %struct.venus_caps* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %95

44:                                               ; preds = %30
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @HFI_COLOR_FORMAT_UBWC_BASE, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load %struct.venus_caps*, %struct.venus_caps** %13, align 8
  %52 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @find_fmt_from_caps(%struct.venus_caps* %51, i32 %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.venus_caps*, %struct.venus_caps** %13, align 8
  %56 = load i32, i32* @HFI_BUFFER_OUTPUT2, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @find_fmt_from_caps(%struct.venus_caps* %55, i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %47
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %95

69:                                               ; preds = %61, %47
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.venus_caps*, %struct.venus_caps** %13, align 8
  %72 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @find_fmt_from_caps(%struct.venus_caps* %71, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 0, i32* %80, align 4
  store i32 0, i32* %6, align 4
  br label %95

81:                                               ; preds = %70
  %82 = load %struct.venus_caps*, %struct.venus_caps** %13, align 8
  %83 = load i32, i32* @HFI_BUFFER_OUTPUT2, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @find_fmt_from_caps(%struct.venus_caps* %82, i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32*, i32** %9, align 8
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %6, align 4
  br label %95

92:                                               ; preds = %81
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %88, %77, %64, %41, %27
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @to_hfi_raw_fmt(i32) #1

declare dso_local %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core*, i32, i32) #1

declare dso_local i32 @find_fmt_from_caps(%struct.venus_caps*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
