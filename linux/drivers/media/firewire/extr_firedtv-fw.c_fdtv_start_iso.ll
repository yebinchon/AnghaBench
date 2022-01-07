; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_fdtv_start_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_fdtv_start_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { %struct.fdtv_ir_context*, i32 }
%struct.fdtv_ir_context = type { i32, %struct.TYPE_3__, i32*, i64, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.fw_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_ISO_CONTEXT_RECEIVE = common dso_local global i32 0, align 4
@ISO_HEADER_SIZE = common dso_local global i32 0, align 4
@handle_iso = common dso_local global i32 0, align 4
@N_PAGES = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@N_PACKETS = common dso_local global i32 0, align 4
@FW_ISO_CONTEXT_MATCH_ALL_TAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdtv_start_iso(%struct.firedtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.fdtv_ir_context*, align 8
  %5 = alloca %struct.fw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  %8 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %9 = call %struct.fw_device* @device_of(%struct.firedtv* %8)
  store %struct.fw_device* %9, %struct.fw_device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fdtv_ir_context* @kmalloc(i32 40, i32 %10)
  store %struct.fdtv_ir_context* %11, %struct.fdtv_ir_context** %4, align 8
  %12 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %13 = icmp ne %struct.fdtv_ir_context* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %129

17:                                               ; preds = %1
  %18 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %19 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FW_ISO_CONTEXT_RECEIVE, align 4
  %22 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %23 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %26 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISO_HEADER_SIZE, align 4
  %29 = load i32, i32* @handle_iso, align 4
  %30 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %31 = call i32 @fw_iso_context_create(i32 %20, i32 %21, i32 %24, i32 %27, i32 %28, i32 %29, %struct.firedtv* %30)
  %32 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %33 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %35 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %41 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %125

44:                                               ; preds = %17
  %45 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %46 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %45, i32 0, i32 1
  %47 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %48 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @N_PAGES, align 4
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 @fw_iso_buffer_init(%struct.TYPE_3__* %46, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %120

56:                                               ; preds = %44
  %57 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %58 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %60 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %81, %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @N_PAGES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %67 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @page_address(i32 %73)
  %75 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %76 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %61

84:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @N_PACKETS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @queue_iso(%struct.fdtv_ir_context* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %113

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %102 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FW_ISO_CONTEXT_MATCH_ALL_TAGS, align 4
  %105 = call i32 @fw_iso_context_start(i32 %103, i32 -1, i32 0, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %111 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %112 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %111, i32 0, i32 0
  store %struct.fdtv_ir_context* %110, %struct.fdtv_ir_context** %112, align 8
  store i32 0, i32* %2, align 4
  br label %129

113:                                              ; preds = %108, %95
  %114 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %115 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %114, i32 0, i32 1
  %116 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %117 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fw_iso_buffer_destroy(%struct.TYPE_3__* %115, i32 %118)
  br label %120

120:                                              ; preds = %113, %55
  %121 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %122 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @fw_iso_context_destroy(i32 %123)
  br label %125

125:                                              ; preds = %120, %39
  %126 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %4, align 8
  %127 = call i32 @kfree(%struct.fdtv_ir_context* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %109, %14
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.fw_device* @device_of(%struct.firedtv*) #1

declare dso_local %struct.fdtv_ir_context* @kmalloc(i32, i32) #1

declare dso_local i32 @fw_iso_context_create(i32, i32, i32, i32, i32, i32, %struct.firedtv*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @fw_iso_buffer_init(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @queue_iso(%struct.fdtv_ir_context*, i32) #1

declare dso_local i32 @fw_iso_context_start(i32, i32, i32, i32) #1

declare dso_local i32 @fw_iso_buffer_destroy(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @fw_iso_context_destroy(i32) #1

declare dso_local i32 @kfree(%struct.fdtv_ir_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
