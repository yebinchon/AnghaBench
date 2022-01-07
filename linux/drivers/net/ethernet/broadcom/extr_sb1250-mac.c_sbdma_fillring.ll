; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbdma_fillring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbdma_fillring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmac_softc = type { i32 }
%struct.sbmacdma = type { i32 }

@SBMAC_MAX_RXDESCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbmac_softc*, %struct.sbmacdma*)* @sbdma_fillring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbdma_fillring(%struct.sbmac_softc* %0, %struct.sbmacdma* %1) #0 {
  %3 = alloca %struct.sbmac_softc*, align 8
  %4 = alloca %struct.sbmacdma*, align 8
  %5 = alloca i32, align 4
  store %struct.sbmac_softc* %0, %struct.sbmac_softc** %3, align 8
  store %struct.sbmacdma* %1, %struct.sbmacdma** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SBMAC_MAX_RXDESCR, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %13 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %14 = call i64 @sbdma_add_rcvbuffer(%struct.sbmac_softc* %12, %struct.sbmacdma* %13, i32* null)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %16, %6
  ret void
}

declare dso_local i64 @sbdma_add_rcvbuffer(%struct.sbmac_softc*, %struct.sbmacdma*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
