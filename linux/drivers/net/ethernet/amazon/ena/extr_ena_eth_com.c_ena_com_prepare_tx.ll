; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i64, i32, i64, i32, i64 }
%struct.ena_com_tx_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, %struct.ena_com_buf* }
%struct.ena_com_buf = type { i32, i32 }
%struct.ena_eth_io_tx_desc = type { i32, i32, i32, i64 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"wrong Q type\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Not enough space in the tx queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"header size is too large %d max header: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_FIRST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_HEADER_LENGTH_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_HEADER_LENGTH_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_PHASE_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_COMP_REQ_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_LO_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_LO_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_DF_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_DF_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_HI_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_HI_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_TSO_EN_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_TSO_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L3_PROTO_IDX_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L3_CSUM_EN_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L3_CSUM_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_EN_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_LENGTH_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_ADDR_HI_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_LAST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_prepare_tx(%struct.ena_com_io_sq* %0, %struct.ena_com_tx_ctx* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_tx_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ena_eth_io_tx_desc*, align 8
  %9 = alloca %struct.ena_com_buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %5, align 8
  store %struct.ena_com_tx_ctx* %1, %struct.ena_com_tx_ctx** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ena_eth_io_tx_desc* null, %struct.ena_eth_io_tx_desc** %8, align 8
  %18 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %18, i32 0, i32 12
  %20 = load %struct.ena_com_buf*, %struct.ena_com_buf** %19, align 8
  store %struct.ena_com_buf* %20, %struct.ena_com_buf** %9, align 8
  %21 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %21, i32 0, i32 11
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %31 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %34 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %3
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %403

53:                                               ; preds = %3
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %56 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %65 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %403

70:                                               ; preds = %53
  %71 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %72 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %76, %70
  %81 = phi i1 [ false, %70 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %403

88:                                               ; preds = %80
  %89 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @ena_com_write_header_to_bounce(%struct.ena_com_io_sq* %89, i8* %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %4, align 4
  br label %403

98:                                               ; preds = %88
  %99 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %100 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %105 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %106 = call i64 @ena_com_meta_desc_changed(%struct.ena_com_io_sq* %104, %struct.ena_com_tx_ctx* %105)
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %103, %98
  %109 = phi i1 [ false, %98 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %115 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %116 = call i32 @ena_com_create_and_store_tx_meta_desc(%struct.ena_com_io_sq* %114, %struct.ena_com_tx_ctx* %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %4, align 4
  br label %403

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i1 [ false, %123 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %137 = call i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq* %136)
  store i32 %137, i32* %15, align 4
  %138 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %139 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %4, align 4
  br label %403

145:                                              ; preds = %130
  %146 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %147 = call %struct.ena_eth_io_tx_desc* @get_sq_desc(%struct.ena_com_io_sq* %146)
  store %struct.ena_eth_io_tx_desc* %147, %struct.ena_eth_io_tx_desc** %8, align 8
  %148 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %149 = icmp ne %struct.ena_eth_io_tx_desc* %148, null
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* @EFAULT, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %403

157:                                              ; preds = %145
  %158 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %159 = call i32 @memset(%struct.ena_eth_io_tx_desc* %158, i32 0, i32 24)
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @ENA_ETH_IO_TX_DESC_FIRST_MASK, align 4
  %164 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %165 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %157
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @ENA_ETH_IO_TX_DESC_HEADER_LENGTH_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = load i32, i32* @ENA_ETH_IO_TX_DESC_HEADER_LENGTH_MASK, align 4
  %173 = and i32 %171, %172
  %174 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %175 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %179 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %186 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* @ENA_ETH_IO_TX_DESC_COMP_REQ_MASK, align 4
  %190 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %191 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %195 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_LO_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_LO_MASK, align 4
  %200 = and i32 %198, %199
  %201 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %202 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %206 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @ENA_ETH_IO_TX_DESC_DF_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = load i32, i32* @ENA_ETH_IO_TX_DESC_DF_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %213 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %217 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = ashr i32 %218, 10
  %220 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_HI_SHIFT, align 4
  %221 = shl i32 %219, %220
  %222 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_HI_MASK, align 4
  %223 = and i32 %221, %222
  %224 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %225 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %229 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %297

232:                                              ; preds = %168
  %233 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %234 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @ENA_ETH_IO_TX_DESC_TSO_EN_SHIFT, align 4
  %237 = shl i32 %235, %236
  %238 = load i32, i32* @ENA_ETH_IO_TX_DESC_TSO_EN_MASK, align 4
  %239 = and i32 %237, %238
  %240 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %241 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  %244 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %245 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @ENA_ETH_IO_TX_DESC_L3_PROTO_IDX_MASK, align 4
  %248 = and i32 %246, %247
  %249 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %250 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %254 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_SHIFT, align 4
  %257 = shl i32 %255, %256
  %258 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_MASK, align 4
  %259 = and i32 %257, %258
  %260 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %261 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %265 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @ENA_ETH_IO_TX_DESC_L3_CSUM_EN_SHIFT, align 4
  %268 = shl i32 %266, %267
  %269 = load i32, i32* @ENA_ETH_IO_TX_DESC_L3_CSUM_EN_MASK, align 4
  %270 = and i32 %268, %269
  %271 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %272 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %276 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %275, i32 0, i32 8
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_EN_SHIFT, align 4
  %279 = shl i32 %277, %278
  %280 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_EN_MASK, align 4
  %281 = and i32 %279, %280
  %282 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %283 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %287 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_SHIFT, align 4
  %290 = shl i32 %288, %289
  %291 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_MASK, align 4
  %292 = and i32 %290, %291
  %293 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %294 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %232, %168
  store i32 0, i32* %14, align 4
  br label %298

298:                                              ; preds = %377, %297
  %299 = load i32, i32* %14, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %380

302:                                              ; preds = %298
  %303 = load i32, i32* %14, align 4
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i64 @likely(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %342

308:                                              ; preds = %302
  %309 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %310 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %309)
  store i32 %310, i32* %15, align 4
  %311 = load i32, i32* %15, align 4
  %312 = call i64 @unlikely(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %308
  %315 = load i32, i32* %15, align 4
  store i32 %315, i32* %4, align 4
  br label %403

316:                                              ; preds = %308
  %317 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %318 = call %struct.ena_eth_io_tx_desc* @get_sq_desc(%struct.ena_com_io_sq* %317)
  store %struct.ena_eth_io_tx_desc* %318, %struct.ena_eth_io_tx_desc** %8, align 8
  %319 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %320 = icmp ne %struct.ena_eth_io_tx_desc* %319, null
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = call i64 @unlikely(i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %316
  %326 = load i32, i32* @EFAULT, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %4, align 4
  br label %403

328:                                              ; preds = %316
  %329 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %330 = call i32 @memset(%struct.ena_eth_io_tx_desc* %329, i32 0, i32 24)
  %331 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %332 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_SHIFT, align 4
  %335 = shl i32 %333, %334
  %336 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_MASK, align 4
  %337 = and i32 %335, %336
  %338 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %339 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %328, %302
  %343 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %344 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @ENA_ETH_IO_TX_DESC_LENGTH_MASK, align 4
  %347 = and i32 %345, %346
  %348 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %349 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %353 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %356 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %355, i32 0, i32 5
  %357 = load i64, i64* %356, align 8
  %358 = sub nsw i64 %357, 1
  %359 = call i32 @GENMASK_ULL(i64 %358, i32 32)
  %360 = and i32 %354, %359
  %361 = ashr i32 %360, 32
  store i32 %361, i32* %17, align 4
  %362 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %363 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %367 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %366, i32 0, i32 3
  store i64 %365, i64* %367, align 8
  %368 = load i32, i32* %17, align 4
  %369 = load i32, i32* @ENA_ETH_IO_TX_DESC_ADDR_HI_MASK, align 4
  %370 = and i32 %368, %369
  %371 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %372 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %376 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %375, i32 1
  store %struct.ena_com_buf* %376, %struct.ena_com_buf** %9, align 8
  br label %377

377:                                              ; preds = %342
  %378 = load i32, i32* %14, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %14, align 4
  br label %298

380:                                              ; preds = %298
  %381 = load i32, i32* @ENA_ETH_IO_TX_DESC_LAST_MASK, align 4
  %382 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %383 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = or i32 %384, %381
  store i32 %385, i32* %383, align 8
  %386 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %387 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %386)
  store i32 %387, i32* %15, align 4
  %388 = load i32, i32* %15, align 4
  %389 = call i64 @unlikely(i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %380
  %392 = load i32, i32* %15, align 4
  store i32 %392, i32* %4, align 4
  br label %403

393:                                              ; preds = %380
  %394 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %395 = call i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq* %394)
  store i32 %395, i32* %15, align 4
  %396 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %397 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* %13, align 4
  %400 = sub nsw i32 %398, %399
  %401 = load i32*, i32** %7, align 8
  store i32 %400, i32* %401, align 4
  %402 = load i32, i32* %15, align 4
  store i32 %402, i32* %4, align 4
  br label %403

403:                                              ; preds = %393, %391, %325, %314, %154, %135, %120, %96, %85, %62, %49
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ena_com_write_header_to_bounce(%struct.ena_com_io_sq*, i8*, i32) #1

declare dso_local i64 @ena_com_meta_desc_changed(%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*) #1

declare dso_local i32 @ena_com_create_and_store_tx_meta_desc(%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*) #1

declare dso_local i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq*) #1

declare dso_local %struct.ena_eth_io_tx_desc* @get_sq_desc(%struct.ena_com_io_sq*) #1

declare dso_local i32 @memset(%struct.ena_eth_io_tx_desc*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq*) #1

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
