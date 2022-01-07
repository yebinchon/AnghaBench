; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_get_memdump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_get_memdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i32, %struct.brcmf_sdio* }
%struct.brcmf_sdio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dump at 0x%08x: size=%zu\0A\00", align 1
@MEMBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error %d on reading %d membytes at 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64)* @brcmf_sdio_bus_get_memdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_bus_get_memdump(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_sdio_dev*, align 8
  %9 = alloca %struct.brcmf_sdio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %14)
  store %struct.brcmf_bus* %15, %struct.brcmf_bus** %7, align 8
  %16 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %17 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %18, align 8
  store %struct.brcmf_sdio_dev* %19, %struct.brcmf_sdio_dev** %8, align 8
  %20 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %21 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %20, i32 0, i32 1
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %21, align 8
  store %struct.brcmf_sdio* %22, %struct.brcmf_sdio** %9, align 8
  %23 = load i32, i32* @INFO, align 4
  %24 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %25 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29)
  %31 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %36 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sdio_claim_host(i32 %38)
  br label %40

40:                                               ; preds = %75, %3
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @MEMBLOCK, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @MEMBLOCK, align 4
  %54 = sext i32 %53 to i64
  br label %60

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %56, %58
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i64 [ %54, %52 ], [ %59, %55 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @brcmf_sdiod_ramrw(%struct.brcmf_sdio_dev* %63, i32 0, i32 %64, i8* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @brcmf_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  br label %87

75:                                               ; preds = %60
  %76 = load i32, i32* %13, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr i8, i8* %77, i64 %78
  store i8* %79, i8** %5, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %40

86:                                               ; preds = %40
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %89 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sdio_release_host(i32 %90)
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @brcmf_sdiod_ramrw(%struct.brcmf_sdio_dev*, i32, i32, i8*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32, i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
