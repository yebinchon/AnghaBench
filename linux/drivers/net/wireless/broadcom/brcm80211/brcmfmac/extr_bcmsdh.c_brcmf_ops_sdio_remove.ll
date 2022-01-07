; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_ops_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_ops_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32, i32 }
%struct.brcmf_bus = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sdio vendor ID: 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sdio device ID: 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Function: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @brcmf_ops_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_ops_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.brcmf_bus*, align 8
  %4 = alloca %struct.brcmf_sdio_dev*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load i32, i32* @SDIO, align 4
  %6 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @SDIO, align 4
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @SDIO, align 4
  %13 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SDIO, align 4
  %18 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 1
  %24 = call %struct.brcmf_sdio_dev* @dev_get_drvdata(i32* %23)
  %25 = bitcast %struct.brcmf_sdio_dev* %24 to %struct.brcmf_bus*
  store %struct.brcmf_bus* %25, %struct.brcmf_bus** %3, align 8
  %26 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %27 = icmp ne %struct.brcmf_bus* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %1
  %29 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %31, align 8
  store %struct.brcmf_sdio_dev* %32, %struct.brcmf_sdio_dev** %4, align 8
  %33 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %34 = call i32 @brcmf_sdiod_intr_unregister(%struct.brcmf_sdio_dev* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %36 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %61

40:                                               ; preds = %28
  %41 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %42 = call i32 @brcmf_sdiod_remove(%struct.brcmf_sdio_dev* %41)
  %43 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @dev_set_drvdata(i32* %46, i32* null)
  %48 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @dev_set_drvdata(i32* %51, i32* null)
  %53 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %54 = bitcast %struct.brcmf_bus* %53 to %struct.brcmf_sdio_dev*
  %55 = call i32 @kfree(%struct.brcmf_sdio_dev* %54)
  %56 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %57 = call i32 @kfree(%struct.brcmf_sdio_dev* %56)
  br label %58

58:                                               ; preds = %40, %1
  %59 = load i32, i32* @SDIO, align 4
  %60 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %39
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local %struct.brcmf_sdio_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @brcmf_sdiod_intr_unregister(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @brcmf_sdiod_remove(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.brcmf_sdio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
