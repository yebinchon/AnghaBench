; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_multi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_multi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, i32, i64, i64, i32, i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MMCIF_CE_BLOCK_SET = common dso_local global i32 0, align 4
@BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@MMCIF_WAIT_FOR_MREAD = common dso_local global i32 0, align 4
@MMCIF_CE_INT_MASK = common dso_local global i32 0, align 4
@MASK_MBUFREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*, %struct.mmc_request*)* @sh_mmcif_multi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_multi_read(%struct.sh_mmcif_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %6, i32 0, i32 0
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %5, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %2
  br label %48

21:                                               ; preds = %13
  %22 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %23 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMCIF_CE_BLOCK_SET, align 4
  %26 = call i32 @sh_mmcif_readl(i32 %24, i32 %25)
  %27 = load i32, i32* @BLOCK_SIZE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %30 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @MMCIF_WAIT_FOR_MREAD, align 4
  %32 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %33 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %35 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %37 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @sg_virt(%struct.TYPE_2__* %40)
  %42 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %43 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %45 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %46 = load i32, i32* @MASK_MBUFREN, align 4
  %47 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @sh_mmcif_readl(i32, i32) #1

declare dso_local i32 @sg_virt(%struct.TYPE_2__*) #1

declare dso_local i32 @sh_mmcif_bitset(%struct.sh_mmcif_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
