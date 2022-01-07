; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_rxfill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_rxfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.hp100_private = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i64, i64* }

@PERFORMANCE = common dso_local global i32 0, align 4
@MAX_RX_PDL = common dso_local global i64 0, align 8
@RX_PDA = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hp100_rxfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_rxfill(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hp100_private*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %9)
  store %struct.hp100_private* %10, %struct.hp100_private** %4, align 8
  %11 = load i32, i32* @PERFORMANCE, align 4
  %12 = call i32 @hp100_page(i32 %11)
  br label %13

13:                                               ; preds = %28, %1
  %14 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %15 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_RX_PDL, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %21 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %5, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i64 @hp100_build_rx_pdl(%struct.TYPE_3__* %23, %struct.net_device* %24)
  %26 = icmp eq i64 0, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %44

28:                                               ; preds = %19
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @RX_PDA, align 4
  %34 = call i32 @hp100_outl(i32 %32, i32 %33)
  %35 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %36 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %43 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %42, i32 0, i32 1
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  br label %13

44:                                               ; preds = %27, %13
  ret void
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i64 @hp100_build_rx_pdl(%struct.TYPE_3__*, %struct.net_device*) #1

declare dso_local i32 @hp100_outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
