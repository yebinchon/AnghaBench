; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_init_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_init_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.rx_ring }
%struct.rx_ring = type { i64, i32, i32 }
%struct.rfd = type { i32, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_init_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_init_recv(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.rfd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rx_ring*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  %7 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %7, i32 0, i32 0
  store %struct.rx_ring* %8, %struct.rx_ring** %6, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = load i32, i32* @GFP_DMA, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.rfd* @kzalloc(i32 16, i32 %18)
  store %struct.rfd* %19, %struct.rfd** %4, align 8
  %20 = load %struct.rfd*, %struct.rfd** %4, align 8
  %21 = icmp ne %struct.rfd* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.rfd*, %struct.rfd** %4, align 8
  %27 = getelementptr inbounds %struct.rfd, %struct.rfd* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.rfd*, %struct.rfd** %4, align 8
  %29 = getelementptr inbounds %struct.rfd, %struct.rfd* %28, i32 0, i32 0
  %30 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %31 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %30, i32 0, i32 2
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %9

40:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.rfd* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
