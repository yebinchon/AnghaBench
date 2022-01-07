; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_run_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_run_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_filter = type { i32, i32, i32* }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_filter*, %struct.sk_buff*)* @run_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_filter(%struct.tap_filter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tap_filter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  store %struct.tap_filter* %0, %struct.tap_filter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  store %struct.ethhdr* %11, %struct.ethhdr** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.tap_filter*, %struct.tap_filter** %4, align 8
  %15 = getelementptr inbounds %struct.tap_filter, %struct.tap_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %20 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tap_filter*, %struct.tap_filter** %4, align 8
  %23 = getelementptr inbounds %struct.tap_filter, %struct.tap_filter* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ether_addr_equal(i32 %21, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %51

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_multicast_ether_addr(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.tap_filter*, %struct.tap_filter** %4, align 8
  %44 = getelementptr inbounds %struct.tap_filter, %struct.tap_filter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %47 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @addr_hash_test(i32 %45, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42, %31
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @addr_hash_test(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
