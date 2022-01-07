; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_update_tx_rings_intr_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_update_tx_rings_intr_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_update_tx_rings_intr_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_update_tx_rings_intr_moderation(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %5 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ena_com_get_nonadaptive_moderation_interval_tx(i32 %7)
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_tx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
