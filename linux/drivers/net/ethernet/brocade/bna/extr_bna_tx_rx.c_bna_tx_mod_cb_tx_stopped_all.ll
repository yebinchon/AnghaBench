; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_mod_cb_tx_stopped_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_mod_cb_tx_stopped_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx_mod = type { i32 (i32*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bna_tx_mod_cb_tx_stopped_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_tx_mod_cb_tx_stopped_all(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bna_tx_mod*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.bna_tx_mod*
  store %struct.bna_tx_mod* %5, %struct.bna_tx_mod** %3, align 8
  %6 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %3, align 8
  %7 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %6, i32 0, i32 0
  %8 = load i32 (i32*)*, i32 (i32*)** %7, align 8
  %9 = icmp ne i32 (i32*)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %3, align 8
  %12 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %11, i32 0, i32 0
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %3, align 8
  %15 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 %13(i32* %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.bna_tx_mod*, %struct.bna_tx_mod** %3, align 8
  %21 = getelementptr inbounds %struct.bna_tx_mod, %struct.bna_tx_mod* %20, i32 0, i32 0
  store i32 (i32*)* null, i32 (i32*)** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
