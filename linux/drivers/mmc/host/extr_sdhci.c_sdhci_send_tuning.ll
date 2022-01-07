; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_send_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_send_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, i32, i32, i32*, %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_command = type { i64, i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_command* }

@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_TRNS_READ = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_send_tuning(%struct.sdhci_host* %0, i64 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.mmc_command, align 8
  %7 = alloca %struct.mmc_request, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 5
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %5, align 8
  %13 = bitcast %struct.mmc_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = bitcast %struct.mmc_request* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 3
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @MMC_RSP_R1, align 4
  %25 = load i32, i32* @MMC_CMD_ADTC, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  store %struct.mmc_request* %7, %struct.mmc_request** %28, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  store %struct.mmc_command* %6, %struct.mmc_command** %29, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %2
  %35 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @SDHCI_MAKE_BLKSZ(i64 %43, i32 128)
  %45 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %46 = call i32 @sdhci_writew(%struct.sdhci_host* %42, i32 %44, i32 %45)
  br label %53

47:                                               ; preds = %34, %2
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @SDHCI_MAKE_BLKSZ(i64 %49, i32 64)
  %51 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %52 = call i32 @sdhci_writew(%struct.sdhci_host* %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load i32, i32* @SDHCI_TRNS_READ, align 4
  %56 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %57 = call i32 @sdhci_writew(%struct.sdhci_host* %54, i32 %55, i32 %56)
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %59 = call i32 @sdhci_send_command(%struct.sdhci_host* %58, %struct.mmc_command* %6)
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %63 = call i32 @sdhci_del_timer(%struct.sdhci_host* %62, %struct.mmc_request* %7)
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %65 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 3
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @msecs_to_jiffies(i32 50)
  %79 = call i32 @wait_event_timeout(i32 %72, i32 %77, i32 %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #2

declare dso_local i32 @SDHCI_MAKE_BLKSZ(i64, i32) #2

declare dso_local i32 @sdhci_send_command(%struct.sdhci_host*, %struct.mmc_command*) #2

declare dso_local i32 @sdhci_del_timer(%struct.sdhci_host*, %struct.mmc_request*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
