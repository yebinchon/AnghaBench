; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_fw_cmd_get_minidump_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_fw_cmd_get_minidump_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"Can't get template size %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to get minidump template header %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Template header checksum validation failed\0A\00", align 1
@QLC_PEX_DMA_READ_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Default minidump capture mask 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlcnic_fw_dump*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %14, align 8
  store %struct.qlcnic_hardware_context* %15, %struct.qlcnic_hardware_context** %4, align 8
  %16 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %16, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %17, %struct.qlcnic_fw_dump** %5, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = call i32 @qlcnic_fw_get_minidump_temp_size(%struct.qlcnic_adapter* %18, i64* %6, i64* %10, i64* %9)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %12, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %145

31:                                               ; preds = %1
  %32 = load i64, i64* %10, align 8
  %33 = call i32* @vzalloc(i64 %32)
  %34 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %37 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %145

43:                                               ; preds = %31
  %44 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %45 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i64*
  store i64* %47, i64** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @__qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter* %52, i64* %53, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @qlcnic_fw_flash_get_minidump_temp(%struct.qlcnic_adapter* %60, i64* %61, i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %74 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @vfree(i32* %75)
  %77 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %78 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %145

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %51
  %83 = load i64*, i64** %8, align 8
  %84 = bitcast i64* %83 to i32*
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @qlcnic_temp_checksum(i32* %84, i64 %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @vfree(i32* %97)
  %99 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %100 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %145

103:                                              ; preds = %82
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %105 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %106 = call i32 @qlcnic_cache_tmpl_hdr_values(%struct.qlcnic_adapter* %104, %struct.qlcnic_fw_dump* %105)
  %107 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %108 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %103
  %112 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %113 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* @QLC_PEX_DMA_READ_SIZE, align 4
  %119 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %120 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %119, i32 0, i32 3
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @dma_alloc_coherent(i32* %117, i32 %118, i32* %120, i32 %121)
  store i8* %122, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %111
  %126 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %127 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %133

128:                                              ; preds = %111
  %129 = load i8*, i8** %11, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %132 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %131, i32 0, i32 2
  store i32* %130, i32** %132, align 8
  br label %133

133:                                              ; preds = %128, %125
  br label %134

134:                                              ; preds = %133, %103
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %140 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_info(i32* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %144 = call i32 @qlcnic_enable_fw_dump_state(%struct.qlcnic_adapter* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %134, %89, %66, %40, %22
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @qlcnic_fw_get_minidump_temp_size(%struct.qlcnic_adapter*, i64*, i64*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32* @vzalloc(i64) #1

declare dso_local i32 @__qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter*, i64*, i64) #1

declare dso_local i32 @qlcnic_fw_flash_get_minidump_temp(%struct.qlcnic_adapter*, i64*, i64) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i64 @qlcnic_temp_checksum(i32*, i64) #1

declare dso_local i32 @qlcnic_cache_tmpl_hdr_values(%struct.qlcnic_adapter*, %struct.qlcnic_fw_dump*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_enable_fw_dump_state(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
