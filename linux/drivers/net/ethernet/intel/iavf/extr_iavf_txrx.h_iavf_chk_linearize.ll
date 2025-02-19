; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.h_iavf_chk_linearize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.h_iavf_chk_linearize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@IAVF_MAX_BUFFER_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @iavf_chk_linearize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_chk_linearize(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IAVF_MAX_BUFFER_TXD, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_is_gso(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @__iavf_chk_linearize(%struct.sk_buff* %18)
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IAVF_MAX_BUFFER_TXD, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %17, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @__iavf_chk_linearize(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
