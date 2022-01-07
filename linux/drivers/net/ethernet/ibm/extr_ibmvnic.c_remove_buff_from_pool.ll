; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_remove_buff_from_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_remove_buff_from_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { %struct.ibmvnic_rx_pool* }
%struct.ibmvnic_rx_pool = type { i32*, i64, i32, i32, %struct.ibmvnic_rx_buff* }
%struct.ibmvnic_rx_buff = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, %struct.ibmvnic_rx_buff*)* @remove_buff_from_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_buff_from_pool(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_rx_buff* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_rx_buff*, align 8
  %5 = alloca %struct.ibmvnic_rx_pool*, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.ibmvnic_rx_buff* %1, %struct.ibmvnic_rx_buff** %4, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 0
  %8 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %7, align 8
  %9 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %8, i64 %11
  store %struct.ibmvnic_rx_pool* %12, %struct.ibmvnic_rx_pool** %5, align 8
  %13 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %4, align 8
  %16 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %17 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %16, i32 0, i32 4
  %18 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %17, align 8
  %19 = ptrtoint %struct.ibmvnic_rx_buff* %15 to i64
  %20 = ptrtoint %struct.ibmvnic_rx_buff* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 16
  %23 = trunc i64 %22 to i32
  %24 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %23, i32* %30, align 4
  %31 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %32 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  %35 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = urem i64 %34, %38
  %40 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ibmvnic_rx_pool*, %struct.ibmvnic_rx_pool** %5, align 8
  %43 = getelementptr inbounds %struct.ibmvnic_rx_pool, %struct.ibmvnic_rx_pool* %42, i32 0, i32 3
  %44 = call i32 @atomic_dec(i32* %43)
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
