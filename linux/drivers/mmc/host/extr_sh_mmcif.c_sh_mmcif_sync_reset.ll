; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_sync_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_sync_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, i64, i64 }

@MMCIF_CE_CLK_CTRL = common dso_local global i32 0, align 4
@MMCIF_CE_VERSION = common dso_local global i32 0, align 4
@SOFT_RST_ON = common dso_local global i32 0, align 4
@SOFT_RST_OFF = common dso_local global i32 0, align 4
@SCCSTO_29 = common dso_local global i32 0, align 4
@MMCIF_CE_CLK_CTRL2 = common dso_local global i32 0, align 4
@SRSPTO_256 = common dso_local global i32 0, align 4
@SRBSYTO_29 = common dso_local global i32 0, align 4
@SRWDTO_29 = common dso_local global i32 0, align 4
@MMCIF_CE_BUF_ACC = common dso_local global i32 0, align 4
@BUF_ACC_ATYP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*)* @sh_mmcif_sync_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_sync_reset(%struct.sh_mmcif_host* %0) #0 {
  %2 = alloca %struct.sh_mmcif_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %2, align 8
  %4 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %5 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MMCIF_CE_CLK_CTRL, align 4
  %8 = call i32 @sh_mmcif_readl(i32 %6, i32 %7)
  %9 = and i32 17760256, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %11 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MMCIF_CE_VERSION, align 4
  %14 = load i32, i32* @SOFT_RST_ON, align 4
  %15 = call i32 @sh_mmcif_writel(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %17 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MMCIF_CE_VERSION, align 4
  %20 = load i32, i32* @SOFT_RST_OFF, align 4
  %21 = call i32 @sh_mmcif_writel(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %23 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @SCCSTO_29, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %32 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %37 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MMCIF_CE_CLK_CTRL2, align 4
  %40 = call i32 @sh_mmcif_writel(i32 %38, i32 %39, i32 252641280)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %43 = load i32, i32* @MMCIF_CE_CLK_CTRL, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SRSPTO_256, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SRBSYTO_29, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SRWDTO_29, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %42, i32 %43, i32 %50)
  %52 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %53 = load i32, i32* @MMCIF_CE_BUF_ACC, align 4
  %54 = load i32, i32* @BUF_ACC_ATYP, align 4
  %55 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @sh_mmcif_readl(i32, i32) #1

declare dso_local i32 @sh_mmcif_writel(i32, i32, i32) #1

declare dso_local i32 @sh_mmcif_bitset(%struct.sh_mmcif_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
