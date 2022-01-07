; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_get_hdr_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_get_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32 }
%struct.sk_buff = type { i64 }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%union.anon = type { i8* }
%struct.ethhdr = type { i64 }
%struct.vlan_ethhdr = type { i64 }
%struct.iphdr = type { i64, i32 }
%struct.ipv6hdr = type { i64 }
%struct.tcphdr = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*, %struct.sk_buff*, %union.Vmxnet3_GenericDesc*)* @vmxnet3_get_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_get_hdr_len(%struct.vmxnet3_adapter* %0, %struct.sk_buff* %1, %union.Vmxnet3_GenericDesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %union.Vmxnet3_GenericDesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.anon, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %union.Vmxnet3_GenericDesc* %2, %union.Vmxnet3_GenericDesc** %7, align 8
  %11 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %7, align 8
  %12 = bitcast %union.Vmxnet3_GenericDesc* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ETH_P_8021Q, align 4
  %32 = call i64 @cpu_to_be16(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_8021AD, align 4
  %39 = call i64 @cpu_to_be16(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %27
  store i32 8, i32* %8, align 4
  br label %43

42:                                               ; preds = %34
  store i32 8, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %44)
  %46 = bitcast %union.anon* %10 to %struct.ethhdr**
  store %struct.ethhdr* %45, %struct.ethhdr** %46, align 8
  %47 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %7, align 8
  %48 = bitcast %union.Vmxnet3_GenericDesc* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %43
  %53 = bitcast %union.anon* %10 to %struct.ethhdr**
  %54 = load %struct.ethhdr*, %struct.ethhdr** %53, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @ETH_P_IP, align 4
  %58 = call i64 @htons(i32 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = bitcast %union.anon* %10 to %struct.vlan_ethhdr**
  %62 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %61, align 8
  %63 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ETH_P_IP, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp ne i64 %64, %66
  br label %68

68:                                               ; preds = %60, %52
  %69 = phi i1 [ false, %52 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = bitcast %union.anon* %10 to i8**
  %74 = load i8*, i8** %73, align 8
  %75 = sext i32 %72 to i64
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %73, align 8
  %77 = bitcast %union.anon* %10 to %struct.iphdr**
  %78 = load %struct.iphdr*, %struct.iphdr** %77, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IPPROTO_TCP, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUG_ON(i32 %83)
  %85 = bitcast %union.anon* %10 to %struct.iphdr**
  %86 = load %struct.iphdr*, %struct.iphdr** %85, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 2
  store i32 %89, i32* %8, align 4
  %90 = bitcast %union.anon* %10 to %struct.iphdr**
  %91 = load %struct.iphdr*, %struct.iphdr** %90, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 2
  %95 = bitcast %union.anon* %10 to i8**
  %96 = load i8*, i8** %95, align 8
  %97 = sext i32 %94 to i64
  %98 = getelementptr i8, i8* %96, i64 %97
  store i8* %98, i8** %95, align 8
  br label %143

99:                                               ; preds = %43
  %100 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %7, align 8
  %101 = bitcast %union.Vmxnet3_GenericDesc* %100 to %struct.TYPE_2__*
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %99
  %106 = bitcast %union.anon* %10 to %struct.ethhdr**
  %107 = load %struct.ethhdr*, %struct.ethhdr** %106, align 8
  %108 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @ETH_P_IPV6, align 4
  %111 = call i64 @htons(i32 %110)
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = bitcast %union.anon* %10 to %struct.vlan_ethhdr**
  %115 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %114, align 8
  %116 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @ETH_P_IPV6, align 4
  %119 = call i64 @htons(i32 %118)
  %120 = icmp ne i64 %117, %119
  br label %121

121:                                              ; preds = %113, %105
  %122 = phi i1 [ false, %105 ], [ %120, %113 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load i32, i32* %8, align 4
  %126 = bitcast %union.anon* %10 to i8**
  %127 = load i8*, i8** %126, align 8
  %128 = sext i32 %125 to i64
  %129 = getelementptr i8, i8* %127, i64 %128
  store i8* %129, i8** %126, align 8
  %130 = bitcast %union.anon* %10 to %struct.ipv6hdr**
  %131 = load %struct.ipv6hdr*, %struct.ipv6hdr** %130, align 8
  %132 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IPPROTO_TCP, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  store i32 12, i32* %4, align 4
  br label %159

137:                                              ; preds = %121
  store i32 8, i32* %8, align 4
  %138 = bitcast %union.anon* %10 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr i8, i8* %139, i64 8
  store i8* %140, i8** %138, align 8
  br label %142

141:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %159

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %68
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 4
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp ugt i64 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %159

151:                                              ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = bitcast %union.anon* %10 to %struct.tcphdr**
  %154 = load %struct.tcphdr*, %struct.tcphdr** %153, align 8
  %155 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 2
  %158 = add nsw i32 %152, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %151, %150, %141, %136, %26
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
