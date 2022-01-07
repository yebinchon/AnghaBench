; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.wmt_mci_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@SDMMC_RSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @wmt_mci_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_mci_read_response(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.wmt_mci_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %8)
  store %struct.wmt_mci_priv* %9, %struct.wmt_mci_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %66, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %69

13:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %52, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %25 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SDMMC_RSP, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readb(i64 %28)
  store i32 %29, i32* %6, align 4
  br label %45

30:                                               ; preds = %20, %17
  %31 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %32 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SDMMC_RSP, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = add nsw i64 %42, 1
  %44 = call i32 @readb(i64 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %30, %23
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 8
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %3, align 8
  %59 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %57, i32* %65, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %10

69:                                               ; preds = %10
  ret void
}

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
