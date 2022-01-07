; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@SDIO_FUNC1_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set F1 blocksize\0A\00", align 1
@SDIO_FUNC2_BLOCKSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set F2 blocksize\0A\00", align 1
@SDIO_WAIT_F2RDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to enable F1: err=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio_dev*)* @brcmf_sdiod_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdiod_probe(%struct.brcmf_sdio_dev* %0) #0 {
  %2 = alloca %struct.brcmf_sdio_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %4, i32 0, i32 2
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = call i32 @sdio_claim_host(%struct.TYPE_7__* %6)
  %8 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = load i32, i32* @SDIO_FUNC1_BLOCKSIZE, align 4
  %12 = call i32 @sdio_set_block_size(%struct.TYPE_7__* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @sdio_release_host(%struct.TYPE_7__* %19)
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i32, i32* @SDIO_FUNC2_BLOCKSIZE, align 4
  %26 = call i32 @sdio_set_block_size(%struct.TYPE_7__* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @sdio_release_host(%struct.TYPE_7__* %33)
  br label %81

35:                                               ; preds = %21
  %36 = load i32, i32* @SDIO_WAIT_F2RDY, align 4
  %37 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 8
  %41 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %42 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @sdio_enable_func(%struct.TYPE_7__* %43)
  store i32 %44, i32* %3, align 4
  %45 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %46 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @sdio_release_host(%struct.TYPE_7__* %47)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %81

54:                                               ; preds = %35
  %55 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %56 = call i32 @brcmf_sdiod_freezer_attach(%struct.brcmf_sdio_dev* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %81

60:                                               ; preds = %54
  %61 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %62 = call i32 @brcmf_sdio_probe(%struct.brcmf_sdio_dev* %61)
  %63 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %64 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %66 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %60
  %73 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %74 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @brcmf_sdiod_host_fixup(i32 %79)
  br label %81

81:                                               ; preds = %72, %69, %59, %51, %29, %15
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %86 = call i32 @brcmf_sdiod_remove(%struct.brcmf_sdio_dev* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @sdio_claim_host(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_set_block_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_enable_func(%struct.TYPE_7__*) #1

declare dso_local i32 @brcmf_sdiod_freezer_attach(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @brcmf_sdio_probe(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @brcmf_sdiod_host_fixup(i32) #1

declare dso_local i32 @brcmf_sdiod_remove(%struct.brcmf_sdio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
