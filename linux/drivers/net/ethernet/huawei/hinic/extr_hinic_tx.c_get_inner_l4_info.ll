; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_get_inner_l4_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_get_inner_l4_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.hinic_l4 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OFFLOAD_DISABLE = common dso_local global i32 0, align 4
@TCP_OFFLOAD_ENABLE = common dso_local global i32 0, align 4
@UDP_OFFLOAD_ENABLE = common dso_local global i32 0, align 4
@TX_OFFLOAD_CSUM = common dso_local global i32 0, align 4
@SCTP_OFFLOAD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %union.hinic_l4*, i32, i32, i32*, i32*, i32*)* @get_inner_l4_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_inner_l4_info(%struct.sk_buff* %0, %union.hinic_l4* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %union.hinic_l4*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %union.hinic_l4* %1, %union.hinic_l4** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* @OFFLOAD_DISABLE, align 4
  %16 = load i32*, i32** %12, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %64 [
    i32 129, label %20
    i32 128, label %39
    i32 130, label %49
  ]

20:                                               ; preds = %7
  %21 = load i32, i32* @TCP_OFFLOAD_ENABLE, align 4
  %22 = load i32*, i32** %12, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %union.hinic_l4*, %union.hinic_l4** %9, align 8
  %24 = bitcast %union.hinic_l4* %23 to %struct.TYPE_2__**
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = load i32*, i32** %13, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %union.hinic_l4*, %union.hinic_l4** %9, align 8
  %33 = bitcast %union.hinic_l4* %32 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @TRANSPORT_OFFSET(i32 %34, %struct.sk_buff* %35)
  %37 = add nsw i32 %31, %36
  %38 = load i32*, i32** %14, align 8
  store i32 %37, i32* %38, align 4
  br label %65

39:                                               ; preds = %7
  %40 = load i32, i32* @UDP_OFFLOAD_ENABLE, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 4, i32* %42, align 4
  %43 = load %union.hinic_l4*, %union.hinic_l4** %9, align 8
  %44 = bitcast %union.hinic_l4* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @TRANSPORT_OFFSET(i32 %45, %struct.sk_buff* %46)
  %48 = load i32*, i32** %14, align 8
  store i32 %47, i32* %48, align 4
  br label %65

49:                                               ; preds = %7
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @TX_OFFLOAD_CSUM, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %65

54:                                               ; preds = %49
  %55 = load i32, i32* @SCTP_OFFLOAD_ENABLE, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %13, align 8
  store i32 4, i32* %57, align 4
  %58 = load %union.hinic_l4*, %union.hinic_l4** %9, align 8
  %59 = bitcast %union.hinic_l4* %58 to i32*
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = call i32 @TRANSPORT_OFFSET(i32 %60, %struct.sk_buff* %61)
  %63 = load i32*, i32** %14, align 8
  store i32 %62, i32* %63, align 4
  br label %65

64:                                               ; preds = %7
  br label %65

65:                                               ; preds = %64, %54, %53, %39, %20
  ret void
}

declare dso_local i32 @TRANSPORT_OFFSET(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
