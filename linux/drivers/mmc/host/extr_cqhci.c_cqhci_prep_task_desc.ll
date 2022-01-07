; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_prep_task_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_prep_task_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_request = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@MMC_DATA_FORCED_PRG = common dso_local global i32 0, align 4
@MMC_DATA_DAT_TAG = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_DATA_PRIO = common dso_local global i32 0, align 4
@MMC_DATA_QBR = common dso_local global i32 0, align 4
@MMC_DATA_REL_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: cqhci: tag %d task descriptor 0x016%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_request*, i32*, i32)* @cqhci_prep_task_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_prep_task_desc(%struct.mmc_request* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_request* %0, %struct.mmc_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = call i32 @CQHCI_VALID(i32 1)
  %14 = call i32 @CQHCI_END(i32 1)
  %15 = or i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @CQHCI_INT(i32 %16)
  %18 = or i32 %15, %17
  %19 = call i32 @CQHCI_ACT(i32 5)
  %20 = or i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MMC_DATA_FORCED_PRG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @CQHCI_FORCED_PROG(i32 %27)
  %29 = or i32 %20, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MMC_DATA_DAT_TAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @CQHCI_DATA_TAG(i32 %36)
  %38 = or i32 %29, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MMC_DATA_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @CQHCI_DATA_DIR(i32 %45)
  %47 = or i32 %38, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MMC_DATA_PRIO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @CQHCI_PRIORITY(i32 %54)
  %56 = or i32 %47, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MMC_DATA_QBR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @CQHCI_QBAR(i32 %63)
  %65 = or i32 %56, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MMC_DATA_REL_WR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @CQHCI_REL_WRITE(i32 %72)
  %74 = or i32 %65, %73
  %75 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @CQHCI_BLK_COUNT(i32 %79)
  %81 = or i32 %74, %80
  %82 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @CQHCI_BLK_ADDR(i32 %87)
  %89 = or i32 %81, %88
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %91 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mmc_hostname(i32 %93)
  %95 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i64 %100)
  ret void
}

declare dso_local i32 @CQHCI_VALID(i32) #1

declare dso_local i32 @CQHCI_END(i32) #1

declare dso_local i32 @CQHCI_INT(i32) #1

declare dso_local i32 @CQHCI_ACT(i32) #1

declare dso_local i32 @CQHCI_FORCED_PROG(i32) #1

declare dso_local i32 @CQHCI_DATA_TAG(i32) #1

declare dso_local i32 @CQHCI_DATA_DIR(i32) #1

declare dso_local i32 @CQHCI_PRIORITY(i32) #1

declare dso_local i32 @CQHCI_QBAR(i32) #1

declare dso_local i32 @CQHCI_REL_WRITE(i32) #1

declare dso_local i32 @CQHCI_BLK_COUNT(i32) #1

declare dso_local i32 @CQHCI_BLK_ADDR(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
