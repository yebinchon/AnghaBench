; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%union.i40e_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_rx_ptype_decoded = type { i64, i64, i64, i32, i64 }

@I40E_RXD_QW1_PTYPE_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_PTYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_RXD_QW1_ERROR_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_ERROR_SHIFT = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_SHIFT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@I40E_RX_DESC_STATUS_L3L4P_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_PTYPE_OUTER_IP = common dso_local global i64 0, align 8
@I40E_RX_PTYPE_OUTER_IPV4 = common dso_local global i64 0, align 8
@I40E_RX_PTYPE_OUTER_IPV6 = common dso_local global i64 0, align 8
@I40E_RX_DESC_ERROR_IPE_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_ERROR_EIPE_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_STATUS_IPV6EXADD_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_ERROR_L4E_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_ERROR_PPRS_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_PTYPE_TUNNEL_IP_GRENAT = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, %struct.sk_buff*, %union.i40e_rx_desc*)* @i40e_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_rx_checksum(%struct.i40e_vsi* %0, %struct.sk_buff* %1, %union.i40e_rx_desc* %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.i40e_rx_desc*, align 8
  %7 = alloca %struct.i40e_rx_ptype_decoded, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_rx_ptype_decoded, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %union.i40e_rx_desc* %2, %union.i40e_rx_desc** %6, align 8
  %15 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %6, align 8
  %16 = bitcast %union.i40e_rx_desc* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le64_to_cpu(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @I40E_RXD_QW1_PTYPE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @I40E_RXD_QW1_PTYPE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @I40E_RXD_QW1_ERROR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @I40E_RXD_QW1_ERROR_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @I40E_RXD_QW1_STATUS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @I40E_RXD_QW1_STATUS_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  call void @decode_rx_desc_ptype(%struct.i40e_rx_ptype_decoded* sret %14, i32 %36)
  %37 = bitcast %struct.i40e_rx_ptype_decoded* %7 to i8*
  %38 = bitcast %struct.i40e_rx_ptype_decoded* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 40, i1 false)
  %39 = load i32, i32* @CHECKSUM_NONE, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %42)
  %44 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %3
  br label %154

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @I40E_RX_DESC_STATUS_L3L4P_SHIFT, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %154

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %60
  br label %154

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @I40E_RX_PTYPE_OUTER_IP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @I40E_RX_PTYPE_OUTER_IPV4, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @I40E_RX_PTYPE_OUTER_IP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @I40E_RX_PTYPE_OUTER_IPV6, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi i1 [ false, %79 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @I40E_RX_DESC_ERROR_IPE_SHIFT, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32, i32* @I40E_RX_DESC_ERROR_EIPE_SHIFT, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = or i32 %99, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %147

106:                                              ; preds = %96, %91
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @I40E_RX_DESC_STATUS_IPV6EXADD_SHIFT, align 4
  %112 = call i32 @BIT(i32 %111)
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %154

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @I40E_RX_DESC_ERROR_L4E_SHIFT, align 4
  %119 = call i32 @BIT(i32 %118)
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %147

123:                                              ; preds = %116
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @I40E_RX_DESC_ERROR_PPRS_SHIFT, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %154

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @I40E_RX_PTYPE_TUNNEL_IP_GRENAT, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %130
  %139 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %7, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %145 [
    i32 129, label %141
    i32 128, label %141
    i32 130, label %141
  ]

141:                                              ; preds = %138, %138, %138
  %142 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %141
  br label %146

146:                                              ; preds = %145
  br label %154

147:                                              ; preds = %122, %105
  %148 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %149 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %146, %129, %115, %68, %59, %52
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local void @decode_rx_desc_ptype(%struct.i40e_rx_ptype_decoded* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
