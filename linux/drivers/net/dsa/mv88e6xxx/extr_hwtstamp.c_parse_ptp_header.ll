; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_parse_ptp_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_parse_ptp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@PTP_CLASS_VLAN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PTP_CLASS_PMASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@UDP_HLEN = common dso_local global i32 0, align 4
@IP6_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sk_buff*, i32)* @parse_ptp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_ptp_header(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32* @skb_mac_header(%struct.sk_buff* %8)
  store i32* %9, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PTP_CLASS_VLAN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* @VLAN_HLEN, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PTP_CLASS_PMASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %48 [
    i32 130, label %24
    i32 129, label %36
    i32 128, label %44
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @ETH_HLEN, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @IPV4_HLEN(i32* %29)
  %31 = add i32 %25, %30
  %32 = load i32, i32* @UDP_HLEN, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %49

36:                                               ; preds = %20
  %37 = load i32, i32* @ETH_HLEN, align 4
  %38 = load i32, i32* @IP6_HLEN, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* @UDP_HLEN, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %20
  %45 = load i32, i32* @ETH_HLEN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %49

48:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %64

49:                                               ; preds = %44, %36, %24
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ETH_HLEN, align 4
  %54 = add i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 34
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32* null, i32** %3, align 8
  br label %64

59:                                               ; preds = %49
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %3, align 8
  br label %64

64:                                               ; preds = %59, %58, %48
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @IPV4_HLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
