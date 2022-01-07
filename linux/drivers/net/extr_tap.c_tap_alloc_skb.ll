; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.sock = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i64, i64, i64, i32, i32*)* @tap_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tap_alloc_skb(%struct.sock* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %6
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = call %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock* %26, i64 %29, i64 %32, i32 %33, i32* %34, i32 0)
  store %struct.sk_buff* %35, %struct.sk_buff** %14, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %59

39:                                               ; preds = %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @skb_reserve(%struct.sk_buff* %40, i64 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @skb_put(%struct.sk_buff* %43, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %7, align 8
  br label %59

59:                                               ; preds = %39, %38
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %60
}

declare dso_local %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock*, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
