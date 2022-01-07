; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_init_hash_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_init_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_eth_private = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HASH_ADDR_TABLE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa168_eth_private*)* @init_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hash_table(%struct.pxa168_eth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa168_eth_private*, align 8
  store %struct.pxa168_eth_private* %0, %struct.pxa168_eth_private** %3, align 8
  %4 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %5 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %10 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HASH_ADDR_TABLE_SIZE, align 4
  %16 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %17 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @dma_alloc_coherent(i32 %14, i32 %15, i32* %17, i32 %18)
  %20 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %21 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %23 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %8
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %32 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @HASH_ADDR_TABLE_SIZE, align 4
  %35 = call i32 @memset(i64 %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %30, %29
  %37 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %38 = load i32, i32* @HTPR, align 4
  %39 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %40 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wrl(%struct.pxa168_eth_private* %37, i32 %38, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %26
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
