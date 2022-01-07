; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pxamci_host = type { i32, %struct.mmc_request* }

@CMDAT_INIT = common dso_local global i32 0, align 4
@CMDAT_BUSY = common dso_local global i32 0, align 4
@CMDAT_DATAEN = common dso_local global i32 0, align 4
@CMDAT_DMAEN = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@CMDAT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @pxamci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxamci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.pxamci_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.pxamci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.pxamci_host* %8, %struct.pxamci_host** %5, align 8
  %9 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %10 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %9, i32 0, i32 1
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %12 = icmp ne %struct.mmc_request* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %17 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %16, i32 0, i32 1
  store %struct.mmc_request* %15, %struct.mmc_request** %17, align 8
  %18 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %19 = call i32 @pxamci_stop_clock(%struct.pxamci_host* %18)
  %20 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %21 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @CMDAT_INIT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %26 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %2
  %34 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @pxamci_setup_data(%struct.pxamci_host* %34, %struct.TYPE_2__* %37)
  %39 = load i32, i32* @CMDAT_BUSY, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @CMDAT_DATAEN, align 4
  %44 = load i32, i32* @CMDAT_DMAEN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MMC_DATA_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %33
  %57 = load i32, i32* @CMDAT_WRITE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %33
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %63 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pxamci_start_cmd(%struct.pxamci_host* %62, i32 %65, i32 %66)
  ret void
}

declare dso_local %struct.pxamci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pxamci_stop_clock(%struct.pxamci_host*) #1

declare dso_local i32 @pxamci_setup_data(%struct.pxamci_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @pxamci_start_cmd(%struct.pxamci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
