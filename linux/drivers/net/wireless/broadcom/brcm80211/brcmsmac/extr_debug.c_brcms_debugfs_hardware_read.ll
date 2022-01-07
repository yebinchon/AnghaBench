; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_debug.c_brcms_debugfs_hardware_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_debug.c_brcms_debugfs_hardware_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.brcms_pub* }
%struct.brcms_pub = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.brcms_hardware* }
%struct.brcms_hardware = type { i32, %struct.TYPE_12__*, i32, i32, i32, %struct.bcma_device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.bcma_device = type { %struct.TYPE_8__, %struct.bcma_bus* }
%struct.TYPE_8__ = type { i32 }
%struct.bcma_bus = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@BRCMU_BOARDREV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [209 x i8] c"chipnum 0x%x\0Achiprev 0x%x\0Achippackage 0x%x\0Acorerev 0x%x\0Aboardid 0x%x\0Aboardvendor 0x%x\0Aboardrev %s\0Aboardflags 0x%x\0Aboardflags2 0x%x\0Aucoderev 0x%x\0Aradiorev 0x%x\0Aphytype 0x%x\0Aphyrev 0x%x\0Aanarev 0x%x\0Anvramrev %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @brcms_debugfs_hardware_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_debugfs_hardware_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcms_pub*, align 8
  %6 = alloca %struct.brcms_hardware*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca %struct.bcma_bus*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.brcms_pub*, %struct.brcms_pub** %12, align 8
  store %struct.brcms_pub* %13, %struct.brcms_pub** %5, align 8
  %14 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %15 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %17, align 8
  store %struct.brcms_hardware* %18, %struct.brcms_hardware** %6, align 8
  %19 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %20 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %19, i32 0, i32 5
  %21 = load %struct.bcma_device*, %struct.bcma_device** %20, align 8
  store %struct.bcma_device* %21, %struct.bcma_device** %7, align 8
  %22 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %23 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %22, i32 0, i32 1
  %24 = load %struct.bcma_bus*, %struct.bcma_bus** %23, align 8
  store %struct.bcma_bus* %24, %struct.bcma_bus** %8, align 8
  %25 = load i32, i32* @BRCMU_BOARDREV_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  %31 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  %39 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %43 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  %47 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  %51 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %55 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @brcmu_boardrev_str(i32 %56, i8* %28)
  %58 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %59 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.brcms_hardware*, %struct.brcms_hardware** %61, align 8
  %63 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %66 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.brcms_hardware*, %struct.brcms_hardware** %68, align 8
  %70 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %73 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %78 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %83 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %88 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %93 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %100 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %64, i32 %71, i32 %76, i32 %81, i32 %86, i32 %91, i32 %98, i32 %101)
  %103 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %103)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @brcmu_boardrev_str(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
