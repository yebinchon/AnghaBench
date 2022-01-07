; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_prepare_tx_packet_set_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_prepare_tx_packet_set_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.qed_chain }
%struct.qed_chain = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.qed_ll2_tx_packet = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.core_tx_bd* }
%struct.core_tx_bd = type { i32, i64, i32, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.qed_ll2_tx_pkt_info = type { i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, i32, i32 }

@QED_LL2_ROCE = common dso_local global i64 0, align 8
@CORE_ROCE = common dso_local global i32 0, align 4
@CORE_RROCE = common dso_local global i32 0, align 4
@CORE_TX_DEST_NW = common dso_local global i32 0, align 4
@CORE_TX_DEST_LB = common dso_local global i32 0, align 4
@CORE_TX_DEST_DROP = common dso_local global i32 0, align 4
@QED_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@IWARP_LL2_IN_ORDER_TX_QUEUE = common dso_local global i64 0, align 8
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@QED_LL2_TYPE_FCOE = common dso_local global i64 0, align 8
@CORE_TX_BD_L4_HDR_OFFSET_W = common dso_local global i32 0, align 4
@CORE_TX_BD_TX_DST = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_START_BD = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_NBDS = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_ROCE_FLAV = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_IP_CSUM = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_L4_CSUM = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_IP_LEN = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_DISABLE_STAG_INSERTION = common dso_local global i32 0, align 4
@NETIF_MSG_TX_QUEUED = common dso_local global i32 0, align 4
@QED_MSG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"LL2 [q 0x%02x cid 0x%08x type 0x%08x] Tx Producer at [0x%04x] - set with a %04x bytes %02x BDs buffer at %08x:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ll2_info*, %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_pkt_info*)* @qed_ll2_prepare_tx_packet_set_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2_prepare_tx_packet_set_bd(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1, %struct.qed_ll2_tx_packet* %2, %struct.qed_ll2_tx_pkt_info* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ll2_info*, align 8
  %7 = alloca %struct.qed_ll2_tx_packet*, align 8
  %8 = alloca %struct.qed_ll2_tx_pkt_info*, align 8
  %9 = alloca %struct.qed_chain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.core_tx_bd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.core_tx_bd**, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %6, align 8
  store %struct.qed_ll2_tx_packet* %2, %struct.qed_ll2_tx_packet** %7, align 8
  store %struct.qed_ll2_tx_pkt_info* %3, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %17 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %18 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store %struct.qed_chain* %19, %struct.qed_chain** %9, align 8
  %20 = load %struct.qed_chain*, %struct.qed_chain** %9, align 8
  %21 = call i64 @qed_chain_get_prod_idx(%struct.qed_chain* %20)
  store i64 %21, i64* %10, align 8
  store %struct.core_tx_bd* null, %struct.core_tx_bd** %11, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %23 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QED_LL2_ROCE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @CORE_ROCE, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @CORE_RROCE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %12, align 4
  %33 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %34 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %42 [
    i32 128, label %36
    i32 129, label %38
    i32 130, label %40
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @CORE_TX_DEST_NW, align 4
  store i32 %37, i32* %13, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @CORE_TX_DEST_LB, align 4
  store i32 %39, i32* %13, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @CORE_TX_DEST_DROP, align 4
  store i32 %41, i32* %13, align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @CORE_TX_DEST_LB, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %36
  %45 = load %struct.qed_chain*, %struct.qed_chain** %9, align 8
  %46 = call i64 @qed_chain_produce(%struct.qed_chain* %45)
  %47 = inttoptr i64 %46 to %struct.core_tx_bd*
  store %struct.core_tx_bd* %47, %struct.core_tx_bd** %11, align 8
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %53 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QED_LL2_TYPE_OOO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i64, i64* @IWARP_LL2_IN_ORDER_TX_QUEUE, align 8
  %60 = call i32 @cpu_to_le16(i64 %59)
  %61 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %62 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %88

63:                                               ; preds = %51, %44
  %64 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %65 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cpu_to_le16(i64 %66)
  %68 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %69 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %72 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i64 @test_bit(i32 %70, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %63
  %78 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %79 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @QED_LL2_TYPE_FCOE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %86 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %85, i32 0, i32 3
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %77, %63
  br label %88

88:                                               ; preds = %87, %58
  %89 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %90 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @CORE_TX_BD_L4_HDR_OFFSET_W, align 4
  %93 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %94 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @cpu_to_le16(i64 %95)
  %97 = call i32 @SET_FIELD(i64 %91, i32 %92, i32 %96)
  %98 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %99 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @CORE_TX_BD_TX_DST, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @SET_FIELD(i64 %100, i32 %101, i32 %102)
  %104 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %105 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i32, i32* @CORE_TX_BD_DATA_START_BD, align 4
  %111 = call i32 @SET_FIELD(i64 %109, i32 %110, i32 1)
  %112 = load i64, i64* %14, align 8
  %113 = load i32, i32* @CORE_TX_BD_DATA_NBDS, align 4
  %114 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %115 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @SET_FIELD(i64 %112, i32 %113, i32 %116)
  %118 = load i64, i64* %14, align 8
  %119 = load i32, i32* @CORE_TX_BD_DATA_ROCE_FLAV, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @SET_FIELD(i64 %118, i32 %119, i32 %120)
  %122 = load i64, i64* %14, align 8
  %123 = load i32, i32* @CORE_TX_BD_DATA_IP_CSUM, align 4
  %124 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %125 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @SET_FIELD(i64 %122, i32 %123, i32 %130)
  %132 = load i64, i64* %14, align 8
  %133 = load i32, i32* @CORE_TX_BD_DATA_L4_CSUM, align 4
  %134 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %135 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @SET_FIELD(i64 %132, i32 %133, i32 %140)
  %142 = load i64, i64* %14, align 8
  %143 = load i32, i32* @CORE_TX_BD_DATA_IP_LEN, align 4
  %144 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %145 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 @SET_FIELD(i64 %142, i32 %143, i32 %150)
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* @CORE_TX_BD_DATA_DISABLE_STAG_INSERTION, align 4
  %154 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %155 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @SET_FIELD(i64 %152, i32 %153, i32 %160)
  %162 = load i64, i64* %14, align 8
  %163 = call i32 @cpu_to_le16(i64 %162)
  %164 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %165 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %168 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %167, i32 0, i32 4
  %169 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %170 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = bitcast %struct.TYPE_12__* %168 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @DMA_REGPAIR_LE(i64 %173, i32 %171)
  %175 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %176 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @cpu_to_le16(i64 %177)
  %179 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %180 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %182 = load i32, i32* @NETIF_MSG_TX_QUEUED, align 4
  %183 = load i32, i32* @QED_MSG_LL2, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %186 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %189 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %192 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %197 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %200 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %203 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le32_to_cpu(i32 %205)
  %207 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %208 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @le32_to_cpu(i32 %210)
  %212 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %181, i32 %184, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %190, i64 %194, i64 %195, i64 %198, i32 %201, i32 %206, i32 %211)
  %213 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %214 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %218 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %216, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %88
  br label %268

222:                                              ; preds = %88
  %223 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %224 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %15, align 8
  br label %228

228:                                              ; preds = %265, %222
  %229 = load i64, i64* %15, align 8
  %230 = load %struct.qed_ll2_tx_pkt_info*, %struct.qed_ll2_tx_pkt_info** %8, align 8
  %231 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %229, %233
  br i1 %234, label %235, label %268

235:                                              ; preds = %228
  %236 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %7, align 8
  %237 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %236, i32 0, i32 0
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = load i64, i64* %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  store %struct.core_tx_bd** %241, %struct.core_tx_bd*** %16, align 8
  %242 = load %struct.qed_chain*, %struct.qed_chain** %9, align 8
  %243 = call i64 @qed_chain_produce(%struct.qed_chain* %242)
  %244 = inttoptr i64 %243 to %struct.core_tx_bd*
  %245 = load %struct.core_tx_bd**, %struct.core_tx_bd*** %16, align 8
  store %struct.core_tx_bd* %244, %struct.core_tx_bd** %245, align 8
  %246 = load %struct.core_tx_bd**, %struct.core_tx_bd*** %16, align 8
  %247 = load %struct.core_tx_bd*, %struct.core_tx_bd** %246, align 8
  %248 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  store i32 0, i32* %249, align 4
  %250 = load %struct.core_tx_bd**, %struct.core_tx_bd*** %16, align 8
  %251 = load %struct.core_tx_bd*, %struct.core_tx_bd** %250, align 8
  %252 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %251, i32 0, i32 1
  store i64 0, i64* %252, align 8
  %253 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %7, align 8
  %254 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %253, i32 0, i32 0
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = load i64, i64* %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %7, align 8
  %260 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %259, i32 0, i32 0
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %260, align 8
  %262 = load i64, i64* %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  store i64 0, i64* %264, align 8
  br label %265

265:                                              ; preds = %235
  %266 = load i64, i64* %15, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %15, align 8
  br label %228

268:                                              ; preds = %221, %228
  ret void
}

declare dso_local i64 @qed_chain_get_prod_idx(%struct.qed_chain*) #1

declare dso_local i64 @qed_chain_produce(%struct.qed_chain*) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
