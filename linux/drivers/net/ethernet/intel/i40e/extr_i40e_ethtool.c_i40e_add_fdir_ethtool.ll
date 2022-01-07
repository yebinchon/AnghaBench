; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_add_fdir_ethtool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_add_fdir_ethtool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i8*, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i8* }
%struct.ethtool_rxnfc = type { i32 }
%struct.i40e_rx_flow_userdef = type { i32, i32, i64 }
%struct.ethtool_rx_flow_spec = type { i32, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i40e_fdir_filter = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@__I40E_FD_SB_AUTO_DISABLED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__I40E_FD_FLUSH_REQUESTED = common dso_local global i32 0, align 4
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@I40E_FILTER_PROGRAM_DESC_DEST_DROP_PACKET = common dso_local global i64 0, align 8
@I40E_FILTER_PROGRAM_DESC_DEST_DIRECT_PACKET_QINDEX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_FILTER_PROGRAM_DESC_FD_STATUS_FD_ID = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.ethtool_rxnfc*)* @i40e_add_fdir_ethtool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_add_fdir_ethtool(%struct.i40e_vsi* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.i40e_rx_flow_userdef, align 8
  %7 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %8 = alloca %struct.i40e_fdir_filter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.i40e_pf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %19 = icmp ne %struct.i40e_vsi* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %326

23:                                               ; preds = %2
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %24, i32 0, i32 2
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %25, align 8
  store %struct.i40e_pf* %26, %struct.i40e_pf** %11, align 8
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %326

36:                                               ; preds = %23
  %37 = load i32, i32* @__I40E_FD_SB_AUTO_DISABLED, align 4
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @test_bit(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %326

46:                                               ; preds = %36
  %47 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @test_bit(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @test_bit(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %46
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %326

63:                                               ; preds = %53
  %64 = load i32, i32* @__I40E_FD_FLUSH_REQUESTED, align 4
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @test_bit(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %326

73:                                               ; preds = %63
  %74 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %74, i32 0, i32 0
  %76 = bitcast i32* %75 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %76, %struct.ethtool_rx_flow_spec** %7, align 8
  %77 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %78 = call i64 @i40e_parse_rx_flow_user_data(%struct.ethtool_rx_flow_spec* %77, %struct.i40e_rx_flow_userdef* %6)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %326

83:                                               ; preds = %73
  %84 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %85 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FLOW_MAC_EXT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %326

93:                                               ; preds = %83
  %94 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %95 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %96 = call i32 @i40e_check_fdir_input_set(%struct.i40e_vsi* %94, %struct.ethtool_rx_flow_spec* %95, %struct.i40e_rx_flow_userdef* %6)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %3, align 4
  br label %326

101:                                              ; preds = %93
  %102 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %103 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = icmp sge i64 %104, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %326

120:                                              ; preds = %101
  %121 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %122 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i64, i64* @I40E_FILTER_PROGRAM_DESC_DEST_DROP_PACKET, align 8
  store i64 %127, i64* %13, align 8
  br label %188

128:                                              ; preds = %120
  %129 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %130 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @ethtool_get_flow_spec_ring(i64 %131)
  store i64 %132, i64* %14, align 8
  %133 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %134 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @ethtool_get_flow_spec_ring_vf(i64 %135)
  store i64 %136, i64* %15, align 8
  %137 = load i64, i64* %15, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %128
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %142 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %140, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %326

148:                                              ; preds = %139
  %149 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %150 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %9, align 8
  br label %184

152:                                              ; preds = %128
  %153 = load i64, i64* %15, align 8
  %154 = add i64 %153, -1
  store i64 %154, i64* %15, align 8
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %157 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp uge i64 %155, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %326

163:                                              ; preds = %152
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %166 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %165, i32 0, i32 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %164, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %326

176:                                              ; preds = %163
  %177 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %178 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %177, i32 0, i32 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %9, align 8
  br label %184

184:                                              ; preds = %176, %148
  %185 = load i64, i64* @I40E_FILTER_PROGRAM_DESC_DEST_DIRECT_PACKET_QINDEX, align 8
  store i64 %185, i64* %13, align 8
  %186 = load i64, i64* %14, align 8
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %10, align 8
  br label %188

188:                                              ; preds = %184, %126
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call %struct.i40e_fdir_filter* @kzalloc(i32 80, i32 %189)
  store %struct.i40e_fdir_filter* %190, %struct.i40e_fdir_filter** %8, align 8
  %191 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %192 = icmp ne %struct.i40e_fdir_filter* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %326

196:                                              ; preds = %188
  %197 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %198 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %201 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %204 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %203, i32 0, i32 15
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %207 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %206, i32 0, i32 14
  store i8* %205, i8** %207, align 8
  %208 = load i64, i64* %13, align 8
  %209 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %210 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load i32, i32* @I40E_FILTER_PROGRAM_DESC_FD_STATUS_FD_ID, align 4
  %212 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %213 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %212, i32 0, i32 13
  store i32 %211, i32* %213, align 4
  %214 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %215 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @I40E_FD_SB_STAT_IDX(i32 %217)
  %219 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %220 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %219, i32 0, i32 12
  store i32 %218, i32* %220, align 8
  %221 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %222 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %227 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %226, i32 0, i32 8
  store i32 %225, i32* %227, align 8
  %228 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %229 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %234 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 4
  %235 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %236 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @FLOW_EXT, align 4
  %239 = xor i32 %238, -1
  %240 = and i32 %237, %239
  %241 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %242 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %244 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %249 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %248, i32 0, i32 11
  store i32 %247, i32* %249, align 4
  %250 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %251 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %256 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %255, i32 0, i32 10
  store i32 %254, i32* %256, align 8
  %257 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %258 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %263 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %262, i32 0, i32 9
  store i32 %261, i32* %263, align 4
  %264 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %265 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %270 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %269, i32 0, i32 8
  store i32 %268, i32* %270, align 8
  %271 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %272 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %277 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 4
  %278 = getelementptr inbounds %struct.i40e_rx_flow_userdef, %struct.i40e_rx_flow_userdef* %6, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %196
  %282 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %283 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %282, i32 0, i32 3
  store i32 1, i32* %283, align 4
  %284 = getelementptr inbounds %struct.i40e_rx_flow_userdef, %struct.i40e_rx_flow_userdef* %6, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @cpu_to_be16(i32 %285)
  %287 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %288 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %287, i32 0, i32 6
  store i32 %286, i32* %288, align 8
  %289 = getelementptr inbounds %struct.i40e_rx_flow_userdef, %struct.i40e_rx_flow_userdef* %6, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %292 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %291, i32 0, i32 5
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %281, %196
  %294 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %295 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %296 = call i32 @i40e_disallow_matching_filters(%struct.i40e_vsi* %294, %struct.i40e_fdir_filter* %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  br label %322

300:                                              ; preds = %293
  %301 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %302 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %303 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %304 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @i40e_update_ethtool_fdir_entry(%struct.i40e_vsi* %301, %struct.i40e_fdir_filter* %302, i64 %305, i32* null)
  %307 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %308 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %309 = call i32 @i40e_add_del_fdir(%struct.i40e_vsi* %307, %struct.i40e_fdir_filter* %308, i32 1)
  store i32 %309, i32* %12, align 4
  %310 = load i32, i32* %12, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %300
  br label %314

313:                                              ; preds = %300
  store i32 0, i32* %3, align 4
  br label %326

314:                                              ; preds = %312
  %315 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %316 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %315, i32 0, i32 4
  %317 = call i32 @hlist_del(i32* %316)
  %318 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %319 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %314, %299
  %323 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %8, align 8
  %324 = call i32 @kfree(%struct.i40e_fdir_filter* %323)
  %325 = load i32, i32* %12, align 4
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %322, %313, %193, %173, %160, %145, %117, %99, %90, %80, %70, %60, %43, %33, %20
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @i40e_parse_rx_flow_user_data(%struct.ethtool_rx_flow_spec*, %struct.i40e_rx_flow_userdef*) #1

declare dso_local i32 @i40e_check_fdir_input_set(%struct.i40e_vsi*, %struct.ethtool_rx_flow_spec*, %struct.i40e_rx_flow_userdef*) #1

declare dso_local i64 @ethtool_get_flow_spec_ring(i64) #1

declare dso_local i64 @ethtool_get_flow_spec_ring_vf(i64) #1

declare dso_local %struct.i40e_fdir_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @I40E_FD_SB_STAT_IDX(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @i40e_disallow_matching_filters(%struct.i40e_vsi*, %struct.i40e_fdir_filter*) #1

declare dso_local i32 @i40e_update_ethtool_fdir_entry(%struct.i40e_vsi*, %struct.i40e_fdir_filter*, i64, i32*) #1

declare dso_local i32 @i40e_add_del_fdir(%struct.i40e_vsi*, %struct.i40e_fdir_filter*, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.i40e_fdir_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
