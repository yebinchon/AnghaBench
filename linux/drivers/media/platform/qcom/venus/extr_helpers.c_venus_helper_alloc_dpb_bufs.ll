; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_alloc_dpb_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_alloc_dpb_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, i32, i32, i32, %struct.venus_core* }
%struct.venus_core = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.hfi_buffer_requirements = type { i32 }
%struct.intbuf = type { i32, i32, i32, i32, i32, i32 }

@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_alloc_dpb_bufs(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi_buffer_requirements, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 5
  %16 = load %struct.venus_core*, %struct.venus_core** %15, align 8
  store %struct.venus_core* %16, %struct.venus_core** %4, align 8
  %17 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %18 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %21 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %26 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %29 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

33:                                               ; preds = %1
  %34 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %35 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %42 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  br label %56

44:                                               ; preds = %33
  %45 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %46 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %53 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %131

60:                                               ; preds = %56
  %61 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @venus_helper_get_bufreq(%struct.venus_inst* %61, i32 %62, %struct.hfi_buffer_requirements* %7)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %2, align 4
  br label %131

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements* %7, i32 %69)
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %123, %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %71
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.intbuf* @kzalloc(i32 24, i32 %76)
  store %struct.intbuf* %77, %struct.intbuf** %10, align 8
  %78 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %79 = icmp ne %struct.intbuf* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %127

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %86 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %89 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %91 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %94 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %97 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %100 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %99, i32 0, i32 5
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %103 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dma_alloc_attrs(%struct.device* %95, i32 %98, i32* %100, i32 %101, i32 %104)
  %106 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %107 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %109 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %83
  %113 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %114 = call i32 @kfree(%struct.intbuf* %113)
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  br label %127

117:                                              ; preds = %83
  %118 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %119 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %118, i32 0, i32 3
  %120 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %121 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %120, i32 0, i32 3
  %122 = call i32 @list_add_tail(i32* %119, i32* %121)
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %71

126:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %131

127:                                              ; preds = %112, %80
  %128 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %129 = call i32 @venus_helper_free_dpb_bufs(%struct.venus_inst* %128)
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %126, %66, %59, %32
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @venus_helper_get_bufreq(%struct.venus_inst*, i32, %struct.hfi_buffer_requirements*) #1

declare dso_local i32 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements*, i32) #1

declare dso_local %struct.intbuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_attrs(%struct.device*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.intbuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @venus_helper_free_dpb_bufs(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
