; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_clkctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_clkctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"request for %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, i32, i32)* @brcmf_sdio_clkctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_sdio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @SDIO, align 4
  %9 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %65 [
    i32 130, label %18
    i32 128, label %30
    i32 129, label %54
  ]

18:                                               ; preds = %16
  %19 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %25 = call i32 @brcmf_sdio_sdclk(%struct.brcmf_sdio* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @brcmf_sdio_htclk(%struct.brcmf_sdio* %27, i32 1, i32 %28)
  br label %65

30:                                               ; preds = %16
  %31 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %37 = call i32 @brcmf_sdio_sdclk(%struct.brcmf_sdio* %36, i32 1)
  br label %53

38:                                               ; preds = %30
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 130
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %45 = call i32 @brcmf_sdio_htclk(%struct.brcmf_sdio* %44, i32 0, i32 0)
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %48 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @brcmf_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %43
  br label %53

53:                                               ; preds = %52, %35
  br label %65

54:                                               ; preds = %16
  %55 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %56 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %61 = call i32 @brcmf_sdio_htclk(%struct.brcmf_sdio* %60, i32 0, i32 0)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %64 = call i32 @brcmf_sdio_sdclk(%struct.brcmf_sdio* %63, i32 0)
  br label %65

65:                                               ; preds = %16, %62, %53, %26
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_sdio_sdclk(%struct.brcmf_sdio*, i32) #1

declare dso_local i32 @brcmf_sdio_htclk(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
