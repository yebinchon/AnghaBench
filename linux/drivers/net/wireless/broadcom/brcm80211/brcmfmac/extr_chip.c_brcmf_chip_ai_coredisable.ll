; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_ai_coredisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_ai_coredisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { i64, %struct.brcmf_chip_priv* }
%struct.brcmf_chip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64)*, i32 (i32, i64, i32)* }

@BCMA_RESET_CTL = common dso_local global i64 0, align 8
@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i64 0, align 8
@BCMA_IOCTL_FGC = common dso_local global i32 0, align 4
@BCMA_IOCTL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_core_priv*, i32, i32)* @brcmf_chip_ai_coredisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_ai_coredisable(%struct.brcmf_core_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_core_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_chip_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %9, i32 0, i32 1
  %11 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %10, align 8
  store %struct.brcmf_chip_priv* %11, %struct.brcmf_chip_priv** %7, align 8
  %12 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %13 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i64)*, i32 (i32, i64)** %15, align 8
  %17 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %18 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BCMA_RESET_CTL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 %16(i32 %19, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %99

31:                                               ; preds = %3
  %32 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %33 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %35, align 8
  %37 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %38 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %41 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BCMA_IOCTL, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @BCMA_IOCTL_FGC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 %36(i32 %39, i64 %44, i32 %49)
  %51 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %52 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (i32, i64)*, i32 (i32, i64)** %54, align 8
  %56 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %57 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %60 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BCMA_IOCTL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 %55(i32 %58, i64 %63)
  %65 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %66 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %68, align 8
  %70 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %71 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %74 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BCMA_RESET_CTL, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %79 = call i32 %69(i32 %72, i64 %77, i32 %78)
  %80 = call i32 @usleep_range(i32 10, i32 20)
  %81 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %82 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (i32, i64)*, i32 (i32, i64)** %84, align 8
  %86 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %87 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %90 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BCMA_RESET_CTL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 %85(i32 %88, i64 %93)
  %95 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @SPINWAIT(i32 %97, i32 300)
  br label %99

99:                                               ; preds = %31, %30
  %100 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %101 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %103, align 8
  %105 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %106 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %109 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BCMA_IOCTL, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @BCMA_IOCTL_FGC, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %117 = or i32 %115, %116
  %118 = call i32 %104(i32 %107, i64 %112, i32 %117)
  %119 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %120 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (i32, i64)*, i32 (i32, i64)** %122, align 8
  %124 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  %125 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %4, align 8
  %128 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @BCMA_IOCTL, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 %123(i32 %126, i64 %131)
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
