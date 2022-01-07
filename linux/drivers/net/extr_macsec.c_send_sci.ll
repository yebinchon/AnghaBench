; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_send_sci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_send_sci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_secy = type { i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macsec_secy*)* @send_sci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_sci(%struct.macsec_secy* %0) #0 {
  %2 = alloca %struct.macsec_secy*, align 8
  %3 = alloca %struct.macsec_tx_sc*, align 8
  store %struct.macsec_secy* %0, %struct.macsec_secy** %2, align 8
  %4 = load %struct.macsec_secy*, %struct.macsec_secy** %2, align 8
  %5 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %4, i32 0, i32 1
  store %struct.macsec_tx_sc* %5, %struct.macsec_tx_sc** %3, align 8
  %6 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %3, align 8
  %7 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.macsec_secy*, %struct.macsec_secy** %2, align 8
  %12 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %3, align 8
  %17 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %3, align 8
  %22 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %15, %10
  %27 = phi i1 [ false, %15 ], [ false, %10 ], [ %25, %20 ]
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi i1 [ true, %1 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
