; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_configure_2port_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_configure_2port_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i8**, i64*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@MFC_BASE_ALIGN_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"left\00", align 1
@BANK_L_CTX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@BANK_R_CTX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Allocating bank2 base failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_configure_2port_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_configure_2port_memory(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @MFC_BASE_ALIGN_ORDER, align 4
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i64, i64* @BANK_L_CTX, align 8
  %18 = call i8* @s5p_mfc_alloc_memdev(%struct.device* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* @BANK_L_CTX, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %18, i8** %23, align 8
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i64, i64* @BANK_L_CTX, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %157

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i64, i64* @BANK_R_CTX, align 8
  %37 = call i8* @s5p_mfc_alloc_memdev(%struct.device* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* @BANK_R_CTX, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %37, i8** %42, align 8
  %43 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @BANK_R_CTX, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %34
  %51 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* @BANK_L_CTX, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @device_unregister(i8* %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %157

60:                                               ; preds = %34
  %61 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %62 = call i32 @s5p_mfc_alloc_firmware(%struct.s5p_mfc_dev* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* @BANK_R_CTX, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @device_unregister(i8* %71)
  %73 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @BANK_L_CTX, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @device_unregister(i8* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %157

81:                                               ; preds = %60
  %82 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @BANK_L_CTX, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %85, i64* %90, align 8
  %91 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %92 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64, i64* @BANK_R_CTX, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @dma_alloc_coherent(i8* %96, i64 %97, i64* %6, i32 %98)
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %122, label %102

102:                                              ; preds = %81
  %103 = call i32 @mfc_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %105 = call i32 @s5p_mfc_release_firmware(%struct.s5p_mfc_dev* %104)
  %106 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %107 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* @BANK_R_CTX, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @device_unregister(i8* %111)
  %113 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %114 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* @BANK_L_CTX, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @device_unregister(i8* %118)
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %157

122:                                              ; preds = %81
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = sub i64 %123, %124
  %126 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %127 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @BANK_R_CTX, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64 %125, i64* %130, align 8
  %131 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %132 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i64, i64* @BANK_R_CTX, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @dma_free_coherent(i8* %136, i64 %137, i8* %138, i64 %139)
  %141 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %142 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* @BANK_L_CTX, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @DMA_BIT_MASK(i32 32)
  %148 = call i32 @vb2_dma_contig_set_max_seg_size(i8* %146, i32 %147)
  %149 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %150 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i64, i64* @BANK_R_CTX, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @DMA_BIT_MASK(i32 32)
  %156 = call i32 @vb2_dma_contig_set_max_seg_size(i8* %154, i32 %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %122, %102, %65, %50, %31
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i8* @s5p_mfc_alloc_memdev(%struct.device*, i8*, i64) #1

declare dso_local i32 @device_unregister(i8*) #1

declare dso_local i32 @s5p_mfc_alloc_firmware(%struct.s5p_mfc_dev*) #1

declare dso_local i8* @dma_alloc_coherent(i8*, i64, i64*, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @s5p_mfc_release_firmware(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @dma_free_coherent(i8*, i64, i8*, i64) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(i8*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
