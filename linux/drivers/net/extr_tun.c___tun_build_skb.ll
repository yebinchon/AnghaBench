; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c___tun_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c___tun_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tun_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.page_frag = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.tun_file*, %struct.page_frag*, i8*, i32, i32, i32)* @__tun_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__tun_build_skb(%struct.tun_file* %0, %struct.page_frag* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tun_file*, align 8
  %9 = alloca %struct.page_frag*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.tun_file* %0, %struct.tun_file** %8, align 8
  store %struct.page_frag* %1, %struct.page_frag** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.sk_buff* @build_skb(i8* %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %14, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.sk_buff* @ERR_PTR(i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  br label %47

24:                                               ; preds = %6
  %25 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @skb_reserve(%struct.sk_buff* %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @skb_put(%struct.sk_buff* %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %33 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @skb_set_owner_w(%struct.sk_buff* %31, i32 %35)
  %37 = load %struct.page_frag*, %struct.page_frag** %9, align 8
  %38 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_page(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.page_frag*, %struct.page_frag** %9, align 8
  %43 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %7, align 8
  br label %47

47:                                               ; preds = %24, %20
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %48
}

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
