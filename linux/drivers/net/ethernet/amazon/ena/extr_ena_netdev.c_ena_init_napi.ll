; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_init_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_init_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32*, i32*, %struct.ena_napi*, i32 }
%struct.ena_napi = type { i32, i32*, i32*, i32 }

@ena_io_poll = common dso_local global i32 0, align 4
@ENA_NAPI_BUDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_init_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_init_napi(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_napi*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %5
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 3
  %14 = load %struct.ena_napi*, %struct.ena_napi** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %14, i64 %16
  store %struct.ena_napi* %17, %struct.ena_napi** %3, align 8
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %21, i32 0, i32 3
  %23 = load %struct.ena_napi*, %struct.ena_napi** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %23, i64 %25
  %27 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %26, i32 0, i32 3
  %28 = load i32, i32* @ena_io_poll, align 4
  %29 = load i32, i32* @ENA_NAPI_BUDGET, align 4
  %30 = call i32 @netif_napi_add(i32 %20, i32* %27, i32 %28, i32 %29)
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.ena_napi*, %struct.ena_napi** %3, align 8
  %38 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.ena_napi*, %struct.ena_napi** %3, align 8
  %46 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ena_napi*, %struct.ena_napi** %3, align 8
  %49 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %11
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %5

53:                                               ; preds = %5
  ret void
}

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
