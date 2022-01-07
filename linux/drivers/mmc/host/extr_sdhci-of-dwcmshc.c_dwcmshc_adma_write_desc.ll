; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-dwcmshc.c_dwcmshc_adma_write_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-dwcmshc.c_dwcmshc_adma_write_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SZ_128M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8**, i32, i32, i32)* @dwcmshc_adma_write_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwcmshc_adma_write_desc(%struct.sdhci_host* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @BOUNDARY_OK(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i1 [ true, %5 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @sdhci_adma_write_desc(%struct.sdhci_host* %26, i8** %27, i32 %28, i32 %29, i32 %30)
  br label %58

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SZ_128M, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @SZ_128M, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @sdhci_adma_write_desc(%struct.sdhci_host* %40, i8** %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @sdhci_adma_write_desc(%struct.sdhci_host* %52, i8** %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %32, %25
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @BOUNDARY_OK(i32, i32) #1

declare dso_local i32 @sdhci_adma_write_desc(%struct.sdhci_host*, i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
