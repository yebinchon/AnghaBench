; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_dvlanfilt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_dvlanfilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stmmac_packet_attrs = type { i32, i32, i32, i32, i32 }
%struct.stmmac_test_priv = type { i32, i32, i32, %struct.TYPE_8__, i32, %struct.stmmac_packet_attrs* }
%struct.TYPE_8__ = type { %struct.stmmac_test_priv*, %struct.TYPE_7__*, i32, i32 }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@stmmac_test_vlan_validate = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@STMMAC_LB_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_test_dvlanfilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_dvlanfilt(%struct.stmmac_priv* %0) #0 {
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
  br label %163

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.stmmac_test_priv* @kzalloc(i32 56, i32 %19)
  store %struct.stmmac_test_priv* %20, %struct.stmmac_test_priv** %5, align 8
  %21 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %22 = icmp ne %struct.stmmac_test_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %163

26:                                               ; preds = %18
  %27 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %28 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %30 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %32 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %31, i32 0, i32 4
  %33 = call i32 @init_completion(i32* %32)
  %34 = load i32, i32* @ETH_P_8021Q, align 4
  %35 = call i32 @htons(i32 %34)
  %36 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %37 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @stmmac_test_vlan_validate, align 4
  %40 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %41 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %47 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %48, align 8
  %49 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %50 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %51 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store %struct.stmmac_test_priv* %49, %struct.stmmac_test_priv** %52, align 8
  %53 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %54 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %53, i32 0, i32 5
  store %struct.stmmac_packet_attrs* %4, %struct.stmmac_packet_attrs** %54, align 8
  %55 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %56 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %55, i32 0, i32 2
  store i32 291, i32* %56, align 8
  %57 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %58 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %57, i32 0, i32 3
  %59 = call i32 @dev_add_pack(%struct.TYPE_8__* %58)
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %61 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* @ETH_P_8021AD, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %66 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vlan_vid_add(%struct.TYPE_7__* %62, i32 %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %26
  br label %156

72:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %142, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %145

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 0
  store i32 2, i32* %77, align 4
  %78 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %79 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %85 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 4
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 2
  store i32 9, i32* %90, align 4
  %91 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %4, i32 0, i32 3
  store i32 9, i32* %91, align 4
  %92 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %93 = call %struct.sk_buff* @stmmac_test_get_udp_skb(%struct.stmmac_priv* %92, %struct.stmmac_packet_attrs* %4)
  store %struct.sk_buff* %93, %struct.sk_buff** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %76
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %146

99:                                               ; preds = %76
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %100, i32 0)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @dev_queue_xmit(%struct.sk_buff* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %146

107:                                              ; preds = %99
  %108 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %109 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %108, i32 0, i32 4
  %110 = load i32, i32* @STMMAC_LB_TIMEOUT, align 4
  %111 = call i32 @wait_for_completion_timeout(i32* %109, i32 %110)
  %112 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %113 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %120

117:                                              ; preds = %107
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  br label %120

120:                                              ; preds = %117, %116
  %121 = phi i32 [ 0, %116 ], [ %119, %117 ]
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  br label %146

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %146

137:                                              ; preds = %131, %128
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %141 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %73

145:                                              ; preds = %73
  br label %146

146:                                              ; preds = %145, %134, %127, %106, %96
  %147 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %148 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* @ETH_P_8021AD, align 4
  %151 = call i32 @htons(i32 %150)
  %152 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %153 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @vlan_vid_del(%struct.TYPE_7__* %149, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %146, %71
  %157 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %158 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %157, i32 0, i32 3
  %159 = call i32 @dev_remove_pack(%struct.TYPE_8__* %158)
  %160 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %5, align 8
  %161 = call i32 @kfree(%struct.stmmac_test_priv* %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %156, %23, %15
  %164 = load i32, i32* %2, align 4
  ret i32 %164
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
