; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz_mmc_prepare_data_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz_mmc_prepare_data_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_command* }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*)* @jz_mmc_prepare_data_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz_mmc_prepare_data_transfer(%struct.jz4740_mmc_host* %0) #0 {
  %2 = alloca %struct.jz4740_mmc_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %2, align 8
  %6 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %3, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %4, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MMC_DATA_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @SG_MITER_TO_SG, align 4
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @SG_MITER_FROM_SG, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %26 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %25, i32 0, i32 0
  %27 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sg_miter_start(i32* %26, i32 %29, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @sg_miter_start(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
