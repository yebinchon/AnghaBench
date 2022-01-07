; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_single_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_single_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, i32, i32 }
%struct.mmc_request = type { i32 }

@MMCIF_CE_BLOCK_SET = common dso_local global i32 0, align 4
@BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@MMCIF_WAIT_FOR_WRITE = common dso_local global i32 0, align 4
@MMCIF_CE_INT_MASK = common dso_local global i32 0, align 4
@MASK_MBUFWEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*, %struct.mmc_request*)* @sh_mmcif_single_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_single_write(%struct.sh_mmcif_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %6 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MMCIF_CE_BLOCK_SET, align 4
  %9 = call i32 @sh_mmcif_readl(i32 %7, i32 %8)
  %10 = load i32, i32* @BLOCK_SIZE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = add nsw i32 %11, 3
  %13 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %14 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MMCIF_WAIT_FOR_WRITE, align 4
  %16 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %17 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %19 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %20 = load i32, i32* @MASK_MBUFWEN, align 4
  %21 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @sh_mmcif_readl(i32, i32) #1

declare dso_local i32 @sh_mmcif_bitset(%struct.sh_mmcif_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
