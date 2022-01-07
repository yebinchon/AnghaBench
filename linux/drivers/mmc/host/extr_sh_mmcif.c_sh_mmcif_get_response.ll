; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_get_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_get_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32 }
%struct.mmc_command = type { i32, i8** }

@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMCIF_CE_RESP3 = common dso_local global i32 0, align 4
@MMCIF_CE_RESP2 = common dso_local global i32 0, align 4
@MMCIF_CE_RESP1 = common dso_local global i32 0, align 4
@MMCIF_CE_RESP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*, %struct.mmc_command*)* @sh_mmcif_get_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_get_response(%struct.sh_mmcif_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %6 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MMC_RSP_136, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %13 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MMCIF_CE_RESP3, align 4
  %16 = call i8* @sh_mmcif_readl(i32 %14, i32 %15)
  %17 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %16, i8** %20, align 8
  %21 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %22 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MMCIF_CE_RESP2, align 4
  %25 = call i8* @sh_mmcif_readl(i32 %23, i32 %24)
  %26 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %25, i8** %29, align 8
  %30 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %31 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MMCIF_CE_RESP1, align 4
  %34 = call i8* @sh_mmcif_readl(i32 %32, i32 %33)
  %35 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %40 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MMCIF_CE_RESP0, align 4
  %43 = call i8* @sh_mmcif_readl(i32 %41, i32 %42)
  %44 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 3
  store i8* %43, i8** %47, align 8
  br label %58

48:                                               ; preds = %2
  %49 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %50 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MMCIF_CE_RESP0, align 4
  %53 = call i8* @sh_mmcif_readl(i32 %51, i32 %52)
  %54 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %11
  ret void
}

declare dso_local i8* @sh_mmcif_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
