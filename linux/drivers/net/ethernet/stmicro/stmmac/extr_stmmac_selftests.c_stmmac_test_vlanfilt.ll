; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_vlanfilt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_vlanfilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stmmac_packet_attrs = type { i32, i32, i32, i32, i32 }
%struct.stmmac_test_priv = type { i32, i32, %struct.TYPE_8__, i32, %struct.stmmac_packet_attrs* }
%struct.TYPE_8__ = type { %struct.stmmac_test_priv*, %struct.TYPE_7__*, i32, i32 }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@stmmac_test_vlan_validate = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@STMMAC_LB_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_test_vlanfilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_vlanfilt(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.stmmac_packet_attrs, align 4
  %5 = alloca %struct.stmmac_test_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %9 = bitcast %struct.stmmac_packet_attrs* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %11 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %161

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.stmmac_test_priv* @kzalloc(i32 48, i32 %19)
  store %struct.stmmac_test_priv* %20, %struct.stmmac_test_priv** %5, align 8
  %21 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %22 = icmp ne %struct.stmmac_test_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %161

26:                                               ; preds = %18
  %27 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %28 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %30 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %29, i32 0, i32 3
  %31 = call i32 @init_completion(i32* %30)
  %32 = load i32, i32* @ETH_P_IP, align 4
  %33 = call i32 @htons(i32 %32)
  %34 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %35 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @stmmac_test_vlan_validate, align 4
  %38 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %39 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %45 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %48 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %49 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store %struct.stmmac_test_priv* %47, %struct.stmmac_test_priv** %50, align 8
  %51 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %52 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %51, i32 0, i32 4
  store %struct.stmmac_packet_attrs* %4, %struct.stmmac_packet_attrs** %52, align 8
  %53 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %54 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %53, i32 0, i32 1
  store i32 291, i32* %54, align 4
  %55 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %56 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %55, i32 0, i32 2
  %57 = call i32 @dev_add_pack(%struct.TYPE_8__* %56)
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* @ETH_P_8021Q, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %64 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vlan_vid_add(%struct.TYPE_7__* %60, i32 %62, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %26
  br label %154

70:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %140, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %143

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %77 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %83 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 2
  store i32 9, i32* %88, align 4
  %89 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 3
  store i32 9, i32* %89, align 4
  %90 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %91 = call %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv* %90, %struct.stmmac_packet_attrs* %4)
  store %struct.sk_buff* %91, %struct.sk_buff** %6, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %74
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %144

97:                                               ; preds = %74
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %98, i32 0)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @dev_queue_xmit(%struct.sk_buff* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %144

105:                                              ; preds = %97
  %106 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %107 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %106, i32 0, i32 3
  %108 = load i32, i32* @STMMAC_LB_TIMEOUT, align 4
  %109 = call i32 @wait_for_completion_timeout(i32* %107, i32 %108)
  %110 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %111 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %118

115:                                              ; preds = %105
  %116 = load i32, i32* @ETIMEDOUT, align 4
  %117 = sub nsw i32 0, %116
  br label %118

118:                                              ; preds = %115, %114
  %119 = phi i32 [ 0, %114 ], [ %117, %115 ]
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %144

126:                                              ; preds = %122, %118
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %144

135:                                              ; preds = %129, %126
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %139 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %71

143:                                              ; preds = %71
  br label %144

144:                                              ; preds = %143, %132, %125, %104, %94
  %145 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %146 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* @ETH_P_8021Q, align 4
  %149 = call i32 @htons(i32 %148)
  %150 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %151 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @vlan_vid_del(%struct.TYPE_7__* %147, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %144, %69
  %155 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %156 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %155, i32 0, i32 2
  %157 = call i32 @dev_remove_pack(%struct.TYPE_8__* %156)
  %158 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %159 = call i32 @kfree(%struct.stmmac_test_priv* %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %154, %23, %15
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.stmmac_test_priv* @kzalloc(i32, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @dev_add_pack(%struct.TYPE_8__*) #2

declare dso_local i32 @vlan_vid_add(%struct.TYPE_7__*, i32, i32) #2

declare dso_local %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv*, %struct.stmmac_packet_attrs*) #2

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #2

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #2

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #2

declare dso_local i32 @vlan_vid_del(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @dev_remove_pack(%struct.TYPE_8__*) #2

declare dso_local i32 @kfree(%struct.stmmac_test_priv*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
