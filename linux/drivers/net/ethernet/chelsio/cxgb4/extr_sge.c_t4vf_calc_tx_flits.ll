; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_t4vf_calc_tx_flits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_t4vf_calc_tx_flits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @t4vf_calc_tx_flits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4vf_calc_tx_flits(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i64 @t4vf_is_eth_imm(%struct.sk_buff* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, 4
  %13 = call i32 @DIV_ROUND_UP(i64 %12, i32 4)
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @sgl_len(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, 3
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 %33, 2
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @t4vf_is_eth_imm(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @sgl_len(i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
