; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.tun_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.tun_file*, i64, i64, i64, i32)* @tun_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tun_alloc_skb(%struct.tun_file* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tun_file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.tun_file* %0, %struct.tun_file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %16 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %5
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock* %30, i64 %33, i64 %36, i32 %37, i32* %14, i32 0)
  store %struct.sk_buff* %38, %struct.sk_buff** %13, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.sk_buff* @ERR_PTR(i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  br label %64

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @skb_reserve(%struct.sk_buff* %45, i64 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @skb_put(%struct.sk_buff* %48, i64 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %6, align 8
  br label %64

64:                                               ; preds = %44, %41
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %65
}

declare dso_local %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock*, i64, i64, i32, i32*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
