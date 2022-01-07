; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_hfi_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_hfi_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_inst = type { i32 }

@HFI_ERR_SYS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@HFI_ERR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_parser(%struct.venus_core* %0, %struct.venus_inst* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_core*, align 8
  %7 = alloca %struct.venus_inst*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %6, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = ashr i32 %15, 2
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = srem i32 %19, 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @HFI_ERR_SYS_INSUFFICIENT_RESOURCES, align 4
  store i32 %23, i32* %5, align 4
  br label %84

24:                                               ; preds = %4
  %25 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %26 = call i32 @parser_init(%struct.venus_inst* %25, i32* %13, i32* %14)
  br label %27

27:                                               ; preds = %73, %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %72 [
    i32 131, label %35
    i32 130, label %41
    i32 132, label %45
    i32 128, label %48
    i32 133, label %54
    i32 129, label %60
    i32 134, label %66
  ]

35:                                               ; preds = %30
  %36 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @parse_codecs(%struct.venus_core* %36, i32* %37)
  %39 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %40 = call i32 @init_codecs(%struct.venus_core* %39)
  br label %73

41:                                               ; preds = %30
  %42 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @parse_max_sessions(%struct.venus_core* %42, i32* %43)
  br label %73

45:                                               ; preds = %30
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @parse_codecs_mask(i32* %13, i32* %14, i32* %46)
  br label %73

48:                                               ; preds = %30
  %49 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @parse_raw_formats(%struct.venus_core* %49, i32 %50, i32 %51, i32* %52)
  br label %73

54:                                               ; preds = %30
  %55 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @parse_caps(%struct.venus_core* %55, i32 %56, i32 %57, i32* %58)
  br label %73

60:                                               ; preds = %30
  %61 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @parse_profile_level(%struct.venus_core* %61, i32 %62, i32 %63, i32* %64)
  br label %73

66:                                               ; preds = %30
  %67 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @parse_alloc_mode(%struct.venus_core* %67, i32 %68, i32 %69, i32* %70)
  br label %73

72:                                               ; preds = %30
  br label %73

73:                                               ; preds = %72, %66, %60, %54, %48, %45, %41, %35
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %10, align 4
  br label %27

78:                                               ; preds = %27
  %79 = load %struct.venus_inst*, %struct.venus_inst** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @parser_fini(%struct.venus_inst* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @HFI_ERR_NONE, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %22
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @parser_init(%struct.venus_inst*, i32*, i32*) #1

declare dso_local i32 @parse_codecs(%struct.venus_core*, i32*) #1

declare dso_local i32 @init_codecs(%struct.venus_core*) #1

declare dso_local i32 @parse_max_sessions(%struct.venus_core*, i32*) #1

declare dso_local i32 @parse_codecs_mask(i32*, i32*, i32*) #1

declare dso_local i32 @parse_raw_formats(%struct.venus_core*, i32, i32, i32*) #1

declare dso_local i32 @parse_caps(%struct.venus_core*, i32, i32, i32*) #1

declare dso_local i32 @parse_profile_level(%struct.venus_core*, i32, i32, i32*) #1

declare dso_local i32 @parse_alloc_mode(%struct.venus_core*, i32, i32, i32*) #1

declare dso_local i32 @parser_fini(%struct.venus_inst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
