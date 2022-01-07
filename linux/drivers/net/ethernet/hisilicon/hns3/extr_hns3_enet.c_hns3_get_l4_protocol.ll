; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_l4_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_l4_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%union.l3_hdr_info = type { i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i32*)* @hns3_get_l4_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_l4_protocol(%struct.sk_buff* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.l3_hdr_info, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i8* @skb_network_header(%struct.sk_buff* %13)
  %15 = bitcast %union.l3_hdr_info* %8 to i8**
  store i8* %14, i8** %15, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i8* @skb_transport_header(%struct.sk_buff* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @ETH_P_IPV6, align 4
  %22 = call i64 @htons(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = bitcast %union.l3_hdr_info* %8 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %27, i8** %10, align 8
  %28 = bitcast %union.l3_hdr_info* %8 to %struct.TYPE_3__**
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %36, i8* %43, i32* %11, i32* %12)
  br label %45

45:                                               ; preds = %35, %24
  br label %62

46:                                               ; preds = %3
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @ETH_P_IP, align 4
  %51 = call i64 @htons(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = bitcast %union.l3_hdr_info* %8 to %struct.TYPE_4__**
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %119

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  store i32 0, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %119

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i8* @skb_inner_network_header(%struct.sk_buff* %72)
  %74 = bitcast %union.l3_hdr_info* %8 to i8**
  store i8* %73, i8** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i8* @skb_inner_transport_header(%struct.sk_buff* %75)
  store i8* %76, i8** %9, align 8
  %77 = bitcast %union.l3_hdr_info* %8 to %struct.TYPE_3__**
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 6
  br i1 %81, label %82, label %104

82:                                               ; preds = %71
  %83 = bitcast %union.l3_hdr_info* %8 to i8**
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  %86 = bitcast %union.l3_hdr_info* %8 to %struct.TYPE_3__**
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %82
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %94, i8* %101, i32* %11, i32* %12)
  br label %103

103:                                              ; preds = %93, %82
  br label %116

104:                                              ; preds = %71
  %105 = bitcast %union.l3_hdr_info* %8 to %struct.TYPE_4__**
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = bitcast %union.l3_hdr_info* %8 to %struct.TYPE_4__**
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %110, %104
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %69, %58
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i8*, i32*, i32*) #1

declare dso_local i8* @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_inner_transport_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
