; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_fill_rx_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_fill_rx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gelic_descr* }
%struct.gelic_descr = type { %struct.gelic_descr*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gelic_card*)* @gelic_card_fill_rx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gelic_card_fill_rx_chain(%struct.gelic_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gelic_card*, align 8
  %4 = alloca %struct.gelic_descr*, align 8
  %5 = alloca i32, align 4
  store %struct.gelic_card* %0, %struct.gelic_card** %3, align 8
  %6 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %7 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  store %struct.gelic_descr* %9, %struct.gelic_descr** %4, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %12 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %17 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %18 = call i32 @gelic_descr_prepare_rx(%struct.gelic_card* %16, %struct.gelic_descr* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %35

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %10
  %24 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %25 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %24, i32 0, i32 0
  %26 = load %struct.gelic_descr*, %struct.gelic_descr** %25, align 8
  store %struct.gelic_descr* %26, %struct.gelic_descr** %4, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.gelic_descr*, %struct.gelic_descr** %4, align 8
  %29 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %30 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.gelic_descr*, %struct.gelic_descr** %31, align 8
  %33 = icmp ne %struct.gelic_descr* %28, %32
  br i1 %33, label %10, label %34

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %37 = call i32 @gelic_card_release_rx_chain(%struct.gelic_card* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @gelic_descr_prepare_rx(%struct.gelic_card*, %struct.gelic_descr*) #1

declare dso_local i32 @gelic_card_release_rx_chain(%struct.gelic_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
