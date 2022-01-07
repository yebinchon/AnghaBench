; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.fc_frame_header = type { i32* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fcoe_hdr = type { i32 }

@IXGBE_ADVTXT_TUCMD_FCOE = common dso_local global i32 0, align 4
@SKB_GSO_FCOE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Wrong gso type %d:expecting SKB_GSO_FCOE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_ORIS = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_SOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown sof = 0x%x\0A\00", align 1
@IXGBE_ADVTXD_FCOEF_EOF_N = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_ORIE = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_EOF_T = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_EOF_NI = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_EOF_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown eof = 0x%x\0A\00", align 1
@FC_FC_REL_OFF = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_FCOEF_PARINC = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_L4T_RSV = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_FCOE = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CC = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MSS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fso(%struct.ixgbe_ring* %0, %struct.ixgbe_tx_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_tx_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.fc_frame_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %struct.ixgbe_tx_buffer* %1, %struct.ixgbe_tx_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %16, i32 0, i32 3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @IXGBE_ADVTXT_TUCMD_FCOE, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i64 @skb_is_gso(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SKB_GSO_FCOE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %221

41:                                               ; preds = %23, %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @skb_set_network_header(%struct.sk_buff* %42, i64 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 4
  %52 = call i32 @skb_set_transport_header(%struct.sk_buff* %47, i64 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i64 @skb_network_header(%struct.sk_buff* %53)
  %55 = inttoptr i64 %54 to %struct.fcoe_hdr*
  %56 = getelementptr inbounds %struct.fcoe_hdr, %struct.fcoe_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  switch i32 %58, label %68 [
    i32 131, label %59
    i32 130, label %61
    i32 129, label %65
    i32 128, label %66
  ]

59:                                               ; preds = %41
  %60 = load i32, i32* @IXGBE_ADVTXD_FCOEF_ORIS, align 4
  store i32 %60, i32* %11, align 4
  br label %76

61:                                               ; preds = %41
  %62 = load i32, i32* @IXGBE_ADVTXD_FCOEF_SOF, align 4
  %63 = load i32, i32* @IXGBE_ADVTXD_FCOEF_ORIS, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %11, align 4
  br label %76

65:                                               ; preds = %41
  br label %76

66:                                               ; preds = %41
  %67 = load i32, i32* @IXGBE_ADVTXD_FCOEF_SOF, align 4
  store i32 %67, i32* %11, align 4
  br label %76

68:                                               ; preds = %41
  %69 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %221

76:                                               ; preds = %66, %65, %61, %59
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 4
  %82 = call i32 @skb_copy_bits(%struct.sk_buff* %77, i32 %81, i32* %15, i32 1)
  %83 = load i32, i32* %15, align 4
  switch i32 %83, label %111 [
    i32 134, label %84
    i32 132, label %88
    i32 133, label %103
    i32 135, label %107
  ]

84:                                               ; preds = %76
  %85 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_N, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %119

88:                                               ; preds = %76
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i64 @skb_is_gso(%struct.sk_buff* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_N, align 4
  %94 = load i32, i32* @IXGBE_ADVTXD_FCOEF_ORIE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_T, align 4
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %98, %92
  br label %119

103:                                              ; preds = %76
  %104 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_NI, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %119

107:                                              ; preds = %76
  %108 = load i32, i32* @IXGBE_ADVTXD_FCOEF_EOF_A, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %119

111:                                              ; preds = %76
  %112 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %113 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @dev_warn(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %221

119:                                              ; preds = %107, %103, %102, %84
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i64 @skb_transport_header(%struct.sk_buff* %120)
  %122 = inttoptr i64 %121 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %122, %struct.fc_frame_header** %9, align 8
  %123 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %124 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FC_FC_REL_OFF, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %119
  %132 = load i32, i32* @IXGBE_ADVTXD_FCOEF_PARINC, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %131, %119
  %136 = load i32*, i32** %7, align 8
  store i32 4, i32* %136, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i64 @skb_is_gso(%struct.sk_buff* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %182

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = call i32 @skb_transport_offset(%struct.sk_buff* %141)
  %143 = sext i32 %142 to i64
  %144 = add i64 %143, 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, %144
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %152, %154
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @DIV_ROUND_UP(i32 %155, i32 %159)
  %161 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %162 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %164 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 1
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %166, %168
  %170 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %171 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @IXGBE_TX_FLAGS_TSO, align 4
  %175 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %176 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* @IXGBE_ADVTXD_TUCMD_L4T_RSV, align 4
  %180 = load i32, i32* %13, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %140, %135
  %183 = load i32, i32* @IXGBE_TX_FLAGS_FCOE, align 4
  %184 = load i32, i32* @IXGBE_TX_FLAGS_CC, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %187 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %190)
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @IXGBE_ADVTXD_MSS_SHIFT, align 4
  %195 = shl i32 %193, %194
  store i32 %195, i32* %12, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call i32 @skb_transport_offset(%struct.sk_buff* %196)
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 8
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %10, align 4
  %201 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %202 = call i32 @skb_transport_offset(%struct.sk_buff* %201)
  %203 = sub nsw i32 %202, 4
  %204 = load i32, i32* @IXGBE_ADVTXD_MACLEN_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = load i32, i32* %10, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %10, align 4
  %208 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %6, align 8
  %209 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_MASK, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* %10, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %10, align 4
  %215 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @ixgbe_tx_ctxtdesc(%struct.ixgbe_ring* %215, i32 %216, i32 %217, i32 %218, i32 %219)
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %182, %111, %68, %30
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ixgbe_tx_ctxtdesc(%struct.ixgbe_ring*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
