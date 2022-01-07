; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_start_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_start_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i64, i32, %struct.mmc_data*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"setup data transfer: blocksize %08x  nr_blocks %d, offset: %08x\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@SD_BLOCKCOUNT = common dso_local global i64 0, align 8
@SD_CARDXFERDATALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*, %struct.mmc_data*)* @toshsd_start_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_start_data(%struct.toshsd_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.toshsd_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.toshsd_host* %0, %struct.toshsd_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load i32, i32* @SG_MITER_ATOMIC, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %8 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %21)
  %23 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %24 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %25 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %24, i32 0, i32 2
  store %struct.mmc_data* %23, %struct.mmc_data** %25, align 8
  %26 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MMC_DATA_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @SG_MITER_TO_SG, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %42 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %41, i32 0, i32 1
  %43 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @sg_miter_start(i32* %42, %struct.TYPE_4__* %45, i32 %48, i32 %49)
  %51 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %55 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SD_BLOCKCOUNT, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @iowrite16(i32 %53, i64 %58)
  %60 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.toshsd_host*, %struct.toshsd_host** %3, align 8
  %64 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SD_CARDXFERDATALEN, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite16(i32 %62, i64 %67)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sg_miter_start(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
