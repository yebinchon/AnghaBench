; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.h_ath10k_htt_get_vaddr_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.h_ath10k_htt_get_vaddr_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ath10k_htt*)* @ath10k_htt_get_vaddr_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ath10k_htt_get_vaddr_ring(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ath10k_htt*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %4 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %5 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i8* (%struct.ath10k_htt*)**
  %9 = load i8* (%struct.ath10k_htt*)*, i8* (%struct.ath10k_htt*)** %8, align 8
  %10 = icmp ne i8* (%struct.ath10k_htt*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i8* (%struct.ath10k_htt*)**
  %18 = load i8* (%struct.ath10k_htt*)*, i8* (%struct.ath10k_htt*)** %17, align 8
  %19 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %20 = call i8* %18(%struct.ath10k_htt* %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
