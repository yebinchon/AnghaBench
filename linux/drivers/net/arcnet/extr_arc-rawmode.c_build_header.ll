; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arc-rawmode.c_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arc-rawmode.c_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.archdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i64)* @build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.archdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i16 %2, i16* %8, align 2
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @ARC_HDR_SIZE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.archdr* @skb_push(%struct.sk_buff* %13, i32 %14)
  store %struct.archdr* %15, %struct.archdr** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.archdr*, %struct.archdr** %11, align 8
  %21 = getelementptr inbounds %struct.archdr, %struct.archdr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_LOOPBACK, align 4
  %27 = load i32, i32* @IFF_NOARP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.archdr*, %struct.archdr** %11, align 8
  %33 = getelementptr inbounds %struct.archdr, %struct.archdr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %4
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.archdr*, %struct.archdr** %11, align 8
  %39 = getelementptr inbounds %struct.archdr, %struct.archdr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.archdr* @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
