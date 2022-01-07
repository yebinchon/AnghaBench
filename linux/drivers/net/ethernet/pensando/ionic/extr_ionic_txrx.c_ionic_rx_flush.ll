; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ionic_dev }
%struct.ionic_dev = type { i32 }

@IONIC_INTR_CRED_RESET_COALESCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_rx_flush(%struct.ionic_cq* %0) #0 {
  %2 = alloca %struct.ionic_cq*, align 8
  %3 = alloca %struct.ionic_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.ionic_cq* %0, %struct.ionic_cq** %2, align 8
  %5 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %6 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.ionic_dev* %10, %struct.ionic_dev** %3, align 8
  %11 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %12 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %13 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ionic_rx_walk_cq(%struct.ionic_cq* %11, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %23 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @IONIC_INTR_CRED_RESET_COALESCE, align 4
  %29 = call i32 @ionic_intr_credits(i32 %21, i32 %26, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %1
  ret void
}

declare dso_local i64 @ionic_rx_walk_cq(%struct.ionic_cq*, i32) #1

declare dso_local i32 @ionic_intr_credits(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
