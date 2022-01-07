; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.goldfish_mmc_host = type { %struct.mmc_request* }

@SD_IO_SEND_OP_COND = common dso_local global i64 0, align 8
@MMC_RSP_SPI_R4 = common dso_local global i32 0, align 4
@MMC_RSP_R4 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @goldfish_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.goldfish_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.goldfish_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.goldfish_mmc_host* %7, %struct.goldfish_mmc_host** %5, align 8
  %8 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %8, i32 0, i32 0
  %10 = load %struct.mmc_request*, %struct.mmc_request** %9, align 8
  %11 = icmp ne %struct.mmc_request* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %15, i32 0, i32 0
  store %struct.mmc_request* %14, %struct.mmc_request** %16, align 8
  %17 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = call i32 @goldfish_mmc_prepare_data(%struct.goldfish_mmc_host* %17, %struct.mmc_request* %18)
  %20 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %5, align 8
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @goldfish_mmc_start_command(%struct.goldfish_mmc_host* %20, %struct.TYPE_2__* %23)
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SD_IO_SEND_OP_COND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %2
  %33 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MMC_RSP_SPI_R4, align 4
  %39 = load i32, i32* @MMC_RSP_R4, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MMC_CMD_BCR, align 4
  %42 = or i32 %40, %41
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %32, %2
  ret void
}

declare dso_local %struct.goldfish_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @goldfish_mmc_prepare_data(%struct.goldfish_mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @goldfish_mmc_start_command(%struct.goldfish_mmc_host*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
