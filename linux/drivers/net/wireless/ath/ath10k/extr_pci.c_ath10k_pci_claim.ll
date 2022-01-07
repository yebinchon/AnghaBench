; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to enable pci device: %d\0A\00", align 1
@BAR_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ath\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to request region BAR%d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to set dma mask to 32-bit: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"failed to set consistent dma mask to 32-bit: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to iomap BAR%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"boot pci_mem 0x%pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_claim(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %4, align 8
  %9 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = call i32 @pci_set_drvdata(%struct.pci_dev* %12, %struct.ath10k* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i32 @pci_enable_device(%struct.pci_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %96

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* @BAR_NUM, align 4
  %27 = call i32 @pci_request_region(%struct.pci_dev* %25, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = load i32, i32* @BAR_NUM, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  br label %92

35:                                               ; preds = %24
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i32 @DMA_BIT_MASK(i32 32)
  %38 = call i32 @pci_set_dma_mask(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %88

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = call i32 @DMA_BIT_MASK(i32 32)
  %48 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %88

55:                                               ; preds = %45
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = call i32 @pci_set_master(%struct.pci_dev* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = load i32, i32* @BAR_NUM, align 4
  %60 = call i32 @pci_resource_len(%struct.pci_dev* %58, i32 %59)
  %61 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = load i32, i32* @BAR_NUM, align 4
  %65 = call i32 @pci_iomap(%struct.pci_dev* %63, i32 %64, i32 0)
  %66 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %67 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %69 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %55
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = load i32, i32* @BAR_NUM, align 4
  %75 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %85

78:                                               ; preds = %55
  %79 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %80 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %81 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %82 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ath10k_dbg(%struct.ath10k* %79, i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  store i32 0, i32* %2, align 4
  br label %96

85:                                               ; preds = %72
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = call i32 @pci_clear_master(%struct.pci_dev* %86)
  br label %88

88:                                               ; preds = %85, %51, %41
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = load i32, i32* @BAR_NUM, align 4
  %91 = call i32 @pci_release_region(%struct.pci_dev* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %30
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = call i32 @pci_disable_device(%struct.pci_dev* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %78, %19
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ath10k*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
