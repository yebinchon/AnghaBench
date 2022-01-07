; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_main.c_ath_rxbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_main.c_ath_rxbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath_common = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"skbuff alloc of size %u failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ath_rxbuf_alloc(%struct.ath_common* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %12 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  %15 = sub i64 %14, 1
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.sk_buff* @__dev_alloc_skb(i64 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = urem i64 %23, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %33 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %34, %35
  %37 = call i32 @skb_reserve(%struct.sk_buff* %31, i64 %36)
  br label %38

38:                                               ; preds = %30, %20
  br label %42

39:                                               ; preds = %3
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %40)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %44

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %4, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %45
}

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
