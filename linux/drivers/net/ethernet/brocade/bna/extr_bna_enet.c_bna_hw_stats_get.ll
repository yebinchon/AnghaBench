; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_hw_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_hw_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@BNA_CB_FAIL = common dso_local global i32 0, align 4
@BNA_CB_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_hw_stats_get(%struct.bna* %0) #0 {
  %2 = alloca %struct.bna*, align 8
  store %struct.bna* %0, %struct.bna** %2, align 8
  %3 = load %struct.bna*, %struct.bna** %2, align 8
  %4 = getelementptr inbounds %struct.bna, %struct.bna* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.bna*, %struct.bna** %2, align 8
  %10 = getelementptr inbounds %struct.bna, %struct.bna* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BNA_CB_FAIL, align 4
  %13 = load %struct.bna*, %struct.bna** %2, align 8
  %14 = getelementptr inbounds %struct.bna, %struct.bna* %13, i32 0, i32 0
  %15 = call i32 @bnad_cb_stats_get(i32 %11, i32 %12, i32* %14)
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.bna*, %struct.bna** %2, align 8
  %18 = getelementptr inbounds %struct.bna, %struct.bna* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.bna*, %struct.bna** %2, align 8
  %24 = getelementptr inbounds %struct.bna, %struct.bna* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BNA_CB_BUSY, align 4
  %27 = load %struct.bna*, %struct.bna** %2, align 8
  %28 = getelementptr inbounds %struct.bna, %struct.bna* %27, i32 0, i32 0
  %29 = call i32 @bnad_cb_stats_get(i32 %25, i32 %26, i32* %28)
  br label %33

30:                                               ; preds = %16
  %31 = load %struct.bna*, %struct.bna** %2, align 8
  %32 = call i32 @bna_bfi_stats_get(%struct.bna* %31)
  br label %33

33:                                               ; preds = %30, %22, %8
  ret void
}

declare dso_local i32 @bnad_cb_stats_get(i32, i32, i32*) #1

declare dso_local i32 @bna_bfi_stats_get(%struct.bna*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
