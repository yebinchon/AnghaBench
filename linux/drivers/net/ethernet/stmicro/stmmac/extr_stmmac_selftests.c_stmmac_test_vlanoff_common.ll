; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_vlanoff_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_vlanoff_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stmmac_packet_attrs = type { i32 }
%struct.stmmac_test_priv = type { i32, i32, i32, %struct.TYPE_8__, i32, %struct.stmmac_packet_attrs* }
%struct.TYPE_8__ = type { %struct.stmmac_test_priv*, %struct.TYPE_7__*, i32, i8* }
%struct.sk_buff = type { i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@stmmac_test_vlan_validate = common dso_local global i32 0, align 4
@STMMAC_LB_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, i32)* @stmmac_test_vlanoff_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_vlanoff_common(%struct.stmmac_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmmac_packet_attrs, align 4
  %7 = alloca %struct.stmmac_test_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.stmmac_packet_attrs* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %156

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.stmmac_test_priv* @kzalloc(i32 64, i32 %21)
  store %struct.stmmac_test_priv* %22, %struct.stmmac_test_priv** %7, align 8
  %23 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %24 = icmp ne %struct.stmmac_test_priv* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %156

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ETH_P_8021AD, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ETH_P_8021Q, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %10, align 4
  %37 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %38 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %41 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %43 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %42, i32 0, i32 4
  %44 = call i32 @init_completion(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @ETH_P_8021Q, align 4
  %49 = call i8* @htons(i32 %48)
  br label %53

50:                                               ; preds = %35
  %51 = load i32, i32* @ETH_P_IP, align 4
  %52 = call i8* @htons(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i8* [ %49, %47 ], [ %52, %50 ]
  %55 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %56 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @stmmac_test_vlan_validate, align 4
  %59 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %60 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %63 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %66 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %67, align 8
  %68 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %69 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %70 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.stmmac_test_priv* %68, %struct.stmmac_test_priv** %71, align 8
  %72 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %73 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %72, i32 0, i32 5
  store %struct.stmmac_packet_attrs* %6, %struct.stmmac_packet_attrs** %73, align 8
  %74 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %75 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %74, i32 0, i32 2
  store i32 291, i32* %75, align 8
  %76 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %77 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %76, i32 0, i32 3
  %78 = call i32 @dev_add_pack(%struct.TYPE_8__* %77)
  %79 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %80 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i8* @htons(i32 %82)
  %84 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %85 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @vlan_vid_add(%struct.TYPE_7__* %81, i8* %83, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %53
  br label %149

91:                                               ; preds = %53
  %92 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %93 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %6, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %99 = call %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv* %98, %struct.stmmac_packet_attrs* %6)
  store %struct.sk_buff* %99, %struct.sk_buff** %8, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = icmp ne %struct.sk_buff* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %139

105:                                              ; preds = %91
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i8* @htons(i32 %107)
  %109 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %110 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %106, i8* %108, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = call i8* @htons(i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %117, i32 0)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = call i32 @dev_queue_xmit(%struct.sk_buff* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %105
  br label %139

124:                                              ; preds = %105
  %125 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %126 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %125, i32 0, i32 4
  %127 = load i32, i32* @STMMAC_LB_TIMEOUT, align 4
  %128 = call i32 @wait_for_completion_timeout(i32* %126, i32 %127)
  %129 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %130 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %137

134:                                              ; preds = %124
  %135 = load i32, i32* @ETIMEDOUT, align 4
  %136 = sub nsw i32 0, %135
  br label %137

137:                                              ; preds = %134, %133
  %138 = phi i32 [ 0, %133 ], [ %136, %134 ]
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %137, %123, %102
  %140 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %141 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i8* @htons(i32 %143)
  %145 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %146 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @vlan_vid_del(%struct.TYPE_7__* %142, i8* %144, i32 %147)
  br label %149

149:                                              ; preds = %139, %90
  %150 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %151 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %150, i32 0, i32 3
  %152 = call i32 @dev_remove_pack(%struct.TYPE_8__* %151)
  %153 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %7, align 8
  %154 = call i32 @kfree(%struct.stmmac_test_priv* %153)
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %149, %25, %17
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.stmmac_test_priv* @kzalloc(i32, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @dev_add_pack(%struct.TYPE_8__*) #2

declare dso_local i32 @vlan_vid_add(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv*, %struct.stmmac_packet_attrs*) #2

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #2

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #2

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #2

declare dso_local i32 @vlan_vid_del(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @dev_remove_pack(%struct.TYPE_8__*) #2

declare dso_local i32 @kfree(%struct.stmmac_test_priv*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
