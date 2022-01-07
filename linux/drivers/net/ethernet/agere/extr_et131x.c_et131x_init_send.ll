; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_init_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_init_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.tx_ring }
%struct.tx_ring = type { i32*, i32*, %struct.tcb*, %struct.tcb*, %struct.tcb* }
%struct.tcb = type { %struct.tcb* }

@NUM_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_init_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_init_send(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_ring*, align 8
  %5 = alloca %struct.tcb*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %6, i32 0, i32 0
  store %struct.tx_ring* %7, %struct.tx_ring** %4, align 8
  %8 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %8, i32 0, i32 4
  %10 = load %struct.tcb*, %struct.tcb** %9, align 8
  store %struct.tcb* %10, %struct.tcb** %5, align 8
  %11 = load %struct.tcb*, %struct.tcb** %5, align 8
  %12 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %12, i32 0, i32 3
  store %struct.tcb* %11, %struct.tcb** %13, align 8
  %14 = load %struct.tcb*, %struct.tcb** %5, align 8
  %15 = load i32, i32* @NUM_TCB, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(%struct.tcb* %14, i32 0, i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NUM_TCB, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.tcb*, %struct.tcb** %5, align 8
  %26 = getelementptr inbounds %struct.tcb, %struct.tcb* %25, i64 1
  %27 = load %struct.tcb*, %struct.tcb** %5, align 8
  %28 = getelementptr inbounds %struct.tcb, %struct.tcb* %27, i32 0, i32 0
  store %struct.tcb* %26, %struct.tcb** %28, align 8
  %29 = load %struct.tcb*, %struct.tcb** %5, align 8
  %30 = getelementptr inbounds %struct.tcb, %struct.tcb* %29, i32 1
  store %struct.tcb* %30, %struct.tcb** %5, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.tcb*, %struct.tcb** %5, align 8
  %36 = getelementptr inbounds %struct.tcb, %struct.tcb* %35, i32 -1
  store %struct.tcb* %36, %struct.tcb** %5, align 8
  %37 = load %struct.tcb*, %struct.tcb** %5, align 8
  %38 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %38, i32 0, i32 2
  store %struct.tcb* %37, %struct.tcb** %39, align 8
  %40 = load %struct.tcb*, %struct.tcb** %5, align 8
  %41 = getelementptr inbounds %struct.tcb, %struct.tcb* %40, i32 0, i32 0
  store %struct.tcb* null, %struct.tcb** %41, align 8
  %42 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  ret void
}

declare dso_local i32 @memset(%struct.tcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
