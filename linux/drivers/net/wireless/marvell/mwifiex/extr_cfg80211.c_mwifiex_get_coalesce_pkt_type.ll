; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_get_coalesce_pkt_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_get_coalesce_pkt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mwifiex_get_coalesce_pkt_type.ipv4_mc_mac = internal constant [2 x i32] [i32 51, i32 51], align 4
@mwifiex_get_coalesce_pkt_type.ipv6_mc_mac = internal constant [3 x i32] [i32 1, i32 0, i32 94], align 4
@mwifiex_get_coalesce_pkt_type.bc_mac = internal constant [4 x i32] [i32 255, i32 255, i32 255, i32 255], align 16
@MWIFIEX_COALESCE_MAX_BYTESEQ = common dso_local global i64 0, align 8
@PACKET_TYPE_UNICAST = common dso_local global i32 0, align 4
@PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@PACKET_TYPE_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mwifiex_get_coalesce_pkt_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_get_coalesce_pkt_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* @MWIFIEX_COALESCE_MAX_BYTESEQ, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @PACKET_TYPE_UNICAST, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %9, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @memcmp(i32* %18, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @mwifiex_get_coalesce_pkt_type.bc_mac, i64 0, i64 0), i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @PACKET_TYPE_BROADCAST, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @memcmp(i32* %24, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @mwifiex_get_coalesce_pkt_type.ipv4_mc_mac, i64 0, i64 0), i32 2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* @MWIFIEX_COALESCE_MAX_BYTESEQ, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %43, label %33

33:                                               ; preds = %27, %23
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @memcmp(i32* %34, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @mwifiex_get_coalesce_pkt_type.ipv6_mc_mac, i64 0, i64 0), i32 3)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* @MWIFIEX_COALESCE_MAX_BYTESEQ, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %27
  %44 = load i32, i32* @PACKET_TYPE_MULTICAST, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %37, %33
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43, %21, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
