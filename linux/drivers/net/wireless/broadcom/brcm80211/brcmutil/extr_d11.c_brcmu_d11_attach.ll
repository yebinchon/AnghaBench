; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_d11.c_brcmu_d11_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmu_d11inf = type { i64, i32, i32 }

@BRCMU_D11N_IOTYPE = common dso_local global i64 0, align 8
@brcmu_d11n_encchspec = common dso_local global i32 0, align 4
@brcmu_d11n_decchspec = common dso_local global i32 0, align 4
@brcmu_d11ac_encchspec = common dso_local global i32 0, align 4
@brcmu_d11ac_decchspec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmu_d11_attach(%struct.brcmu_d11inf* %0) #0 {
  %2 = alloca %struct.brcmu_d11inf*, align 8
  store %struct.brcmu_d11inf* %0, %struct.brcmu_d11inf** %2, align 8
  %3 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %2, align 8
  %4 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BRCMU_D11N_IOTYPE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @brcmu_d11n_encchspec, align 4
  %10 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %2, align 8
  %11 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @brcmu_d11n_decchspec, align 4
  %13 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %2, align 8
  %14 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @brcmu_d11ac_encchspec, align 4
  %17 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %2, align 8
  %18 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @brcmu_d11ac_decchspec, align 4
  %20 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %2, align 8
  %21 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
