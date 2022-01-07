; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_intbufs_set_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_intbufs_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, %struct.venus_core* }
%struct.venus_core = type { %struct.device* }
%struct.device = type { i32 }
%struct.hfi_buffer_requirements = type { i32, i64, i32 }
%struct.hfi_buffer_desc = type { i32, i32, i32, i64 }
%struct.intbuf = type { i32, i32, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set session buffers failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, i32)* @intbufs_set_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intbufs_set_buffer(%struct.venus_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_core*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hfi_buffer_requirements, align 8
  %9 = alloca %struct.hfi_buffer_desc, align 8
  %10 = alloca %struct.intbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 1
  %15 = load %struct.venus_core*, %struct.venus_core** %14, align 8
  store %struct.venus_core* %15, %struct.venus_core** %6, align 8
  %16 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %17 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @venus_helper_get_bufreq(%struct.venus_inst* %19, i32 %20, %struct.hfi_buffer_requirements* %8)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %8, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %129

30:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %106, %30
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %109

36:                                               ; preds = %31
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.intbuf* @kzalloc(i32 32, i32 %37)
  store %struct.intbuf* %38, %struct.intbuf** %10, align 8
  %39 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %40 = icmp ne %struct.intbuf* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %125

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %8, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %48 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %52 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %54 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %57 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %60 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %63 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %62, i32 0, i32 1
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %66 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_alloc_attrs(%struct.device* %58, i64 %61, i32* %63, i32 %64, i32 %67)
  %69 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %70 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %72 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %44
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %125

78:                                               ; preds = %44
  %79 = call i32 @memset(%struct.hfi_buffer_desc* %9, i32 0, i32 24)
  %80 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %81 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %9, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %85 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %9, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %9, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %90 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %94 = call i32 @hfi_session_set_buffers(%struct.venus_inst* %93, %struct.hfi_buffer_desc* %9)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %78
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %110

100:                                              ; preds = %78
  %101 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %102 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %101, i32 0, i32 4
  %103 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %104 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %103, i32 0, i32 0
  %105 = call i32 @list_add_tail(i32* %102, i32* %104)
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %31

109:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %129

110:                                              ; preds = %97
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %113 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %116 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %119 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %122 = getelementptr inbounds %struct.intbuf, %struct.intbuf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dma_free_attrs(%struct.device* %111, i64 %114, i32 %117, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %110, %75, %41
  %126 = load %struct.intbuf*, %struct.intbuf** %10, align 8
  %127 = call i32 @kfree(%struct.intbuf* %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %109, %29, %24
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @venus_helper_get_bufreq(%struct.venus_inst*, i32, %struct.hfi_buffer_requirements*) #1

declare dso_local %struct.intbuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_attrs(%struct.device*, i64, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.hfi_buffer_desc*, i32, i32) #1

declare dso_local i32 @hfi_session_set_buffers(%struct.venus_inst*, %struct.hfi_buffer_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_attrs(%struct.device*, i64, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.intbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
