; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i64 }
%struct.flash_file_hdr_g3 = type { i32 }
%struct.image_hdr = type { i32 }
%struct.be_dma_mem = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Flash image is not compatible with adapter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware flashed successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_fw_download(%struct.be_adapter* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.flash_file_hdr_g3*, align 8
  %8 = alloca %struct.image_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_dma_mem, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.flash_file_hdr_g3*
  store %struct.flash_file_hdr_g3* %20, %struct.flash_file_hdr_g3** %7, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %7, align 8
  %23 = call i32 @be_check_ufi_compatibility(%struct.be_adapter* %21, %struct.flash_file_hdr_g3* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %108

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  store i32 4, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @dma_alloc_coherent(%struct.device* %32, i32 %34, i32* %35, i32 %36)
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %108

45:                                               ; preds = %30
  %46 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %7, align 8
  %47 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %89, %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = add i64 4, %60
  %62 = add i64 %57, %61
  %63 = inttoptr i64 %62 to %struct.image_hdr*
  store %struct.image_hdr* %63, %struct.image_hdr** %8, align 8
  %64 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %65 = call i32 @BE2_chip(%struct.be_adapter* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %54
  %68 = load %struct.image_hdr*, %struct.image_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.image_hdr, %struct.image_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %89

74:                                               ; preds = %67, %54
  %75 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %76 = call i64 @skyhawk_chip(%struct.be_adapter* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %80 = load %struct.firmware*, %struct.firmware** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @be_flash_skyhawk(%struct.be_adapter* %79, %struct.firmware* %80, %struct.be_dma_mem* %12, i32 %81)
  store i32 %82, i32* %9, align 4
  br label %88

83:                                               ; preds = %74
  %84 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %85 = load %struct.firmware*, %struct.firmware** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @be_flash_BEx(%struct.be_adapter* %84, %struct.firmware* %85, %struct.be_dma_mem* %12, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %73
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %50

92:                                               ; preds = %50
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dma_free_coherent(%struct.device* %93, i32 %95, i32 %97, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_info(%struct.device* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %92
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %42, %25
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @be_check_ufi_compatibility(%struct.be_adapter*, %struct.flash_file_hdr_g3*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_flash_skyhawk(%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32) #1

declare dso_local i32 @be_flash_BEx(%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
