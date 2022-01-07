; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_configure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i64 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_enet_configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_configure_clock(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %5 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.clk* @clk_get_parent(i32 %16)
  store %struct.clk* %17, %struct.clk** %4, align 8
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %24
  ]

21:                                               ; preds = %13
  %22 = load %struct.clk*, %struct.clk** %4, align 8
  %23 = call i32 @clk_set_rate(%struct.clk* %22, i32 2500000)
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.clk*, %struct.clk** %4, align 8
  %26 = call i32 @clk_set_rate(%struct.clk* %25, i32 25000000)
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = call i32 @clk_set_rate(%struct.clk* %28, i32 125000000)
  br label %30

30:                                               ; preds = %27, %24, %21
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
