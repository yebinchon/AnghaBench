; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rxts = type { i32, i64, i32 }

@PTP_CLASS_VLAN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PTP_CLASS_PMASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@UDP_HLEN = common dso_local global i32 0, align 4
@IP6_HLEN = common dso_local global i32 0, align 4
@OFF_PTP_SEQUENCE_ID = common dso_local global i32 0, align 4
@PTP_CLASS_V1 = common dso_local global i32 0, align 4
@OFF_PTP_CONTROL = common dso_local global i32 0, align 4
@DP83640_PACKET_HASH_LEN = common dso_local global i32 0, align 4
@DP83640_PACKET_HASH_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.rxts*)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(%struct.sk_buff* %0, i32 %1, %struct.rxts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxts*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rxts* %2, %struct.rxts** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32* @skb_mac_header(%struct.sk_buff* %13)
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PTP_CLASS_VLAN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* @VLAN_HLEN, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PTP_CLASS_PMASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %53 [
    i32 130, label %29
    i32 129, label %41
    i32 128, label %49
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @ETH_HLEN, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @IPV4_HLEN(i32* %34)
  %36 = add i32 %30, %35
  %37 = load i32, i32* @UDP_HLEN, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %54

41:                                               ; preds = %25
  %42 = load i32, i32* @ETH_HLEN, align 4
  %43 = load i32, i32* @IP6_HLEN, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* @UDP_HLEN, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %54

49:                                               ; preds = %25
  %50 = load i32, i32* @ETH_HLEN, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %54

53:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %130

54:                                               ; preds = %49, %41, %29
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ETH_HLEN, align 4
  %59 = add i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @OFF_PTP_SEQUENCE_ID, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = icmp ult i64 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %130

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PTP_CLASS_V1, align 4
  %71 = and i32 %69, %70
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* @OFF_PTP_CONTROL, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %11, align 8
  br label %87

82:                                               ; preds = %68
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %11, align 8
  br label %87

87:                                               ; preds = %82, %74
  %88 = load %struct.rxts*, %struct.rxts** %7, align 8
  %89 = getelementptr inbounds %struct.rxts, %struct.rxts* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %130

96:                                               ; preds = %87
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* @OFF_PTP_SEQUENCE_ID, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32* %103, i32** %8, align 8
  %104 = load %struct.rxts*, %struct.rxts** %7, align 8
  %105 = getelementptr inbounds %struct.rxts, %struct.rxts* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @ntohs(i32 %108)
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %130

112:                                              ; preds = %96
  %113 = load i32, i32* @DP83640_PACKET_HASH_LEN, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* @DP83640_PACKET_HASH_OFFSET, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @ether_crc(i32 %113, i32* %120)
  %122 = ashr i32 %121, 20
  store i32 %122, i32* %9, align 4
  %123 = load %struct.rxts*, %struct.rxts** %7, align 8
  %124 = getelementptr inbounds %struct.rxts, %struct.rxts* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %130

129:                                              ; preds = %112
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %128, %111, %95, %67, %53
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @IPV4_HLEN(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @ether_crc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
