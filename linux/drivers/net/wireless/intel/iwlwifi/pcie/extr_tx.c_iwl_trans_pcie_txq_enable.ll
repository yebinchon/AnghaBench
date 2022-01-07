; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_txq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_trans_txq_scd_cfg = type { i32, i32, i32, i32, i64 }
%struct.iwl_trans_pcie = type { i32, i64, i64, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"queue %d already used - expect issues\00", align 1
@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@WIN_SIZE = common dso_local global i32 0, align 4
@FRAME_LIMIT = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_ACTIVE = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_TXF = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_POS_WSL = common dso_local global i32 0, align 4
@SCD_QUEUE_STTS_REG_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Activate queue %d on FIFO %d WrPtr: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Activate queue %d WrPtr: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_txq_enable(%struct.iwl_trans* %0, i32 %1, i32 %2, %struct.iwl_trans_txq_scd_cfg* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans_txq_scd_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_trans_pcie*, align 8
  %12 = alloca %struct.iwl_txq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.iwl_trans_txq_scd_cfg* %3, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %18 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %17)
  store %struct.iwl_trans_pcie* %18, %struct.iwl_trans_pcie** %11, align 8
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 4
  %21 = load %struct.iwl_txq**, %struct.iwl_txq*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %21, i64 %23
  %25 = load %struct.iwl_txq*, %struct.iwl_txq** %24, align 8
  store %struct.iwl_txq* %25, %struct.iwl_txq** %12, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @test_and_set_bit(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %39 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %41 = icmp ne %struct.iwl_trans_txq_scd_cfg* %40, null
  br i1 %41, label %42, label %102

42:                                               ; preds = %35
  %43 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %48 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %58 = call i32 @iwl_scd_enable_set_active(%struct.iwl_trans* %57, i32 0)
  br label %59

59:                                               ; preds = %56, %51, %42
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @iwl_scd_txq_set_inactive(%struct.iwl_trans* %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %65 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @iwl_scd_txq_set_chain(%struct.iwl_trans* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %79 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %82 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @BUILD_RAxTID(i32 %80, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @iwl_pcie_txq_set_ratid_map(%struct.iwl_trans* %85, i32 %86, i32 %87)
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @iwl_scd_txq_enable_agg(%struct.iwl_trans* %89, i32 %90)
  %92 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %93 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %101

94:                                               ; preds = %72
  %95 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @iwl_scd_txq_disable_agg(%struct.iwl_trans* %95, i32 %96)
  %98 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %99 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %94, %77
  br label %132

102:                                              ; preds = %35
  %103 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %104 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %112 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = and i32 %114, 63
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %120 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br label %123

123:                                              ; preds = %117, %109, %102
  %124 = phi i1 [ false, %109 ], [ false, %102 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %128, %123
  br label %132

132:                                              ; preds = %131, %101
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 255
  %135 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %136 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 255
  %139 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %140 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %142 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, 255
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 %145, 8
  %147 = or i32 %144, %146
  %148 = call i32 @iwl_write_direct32(%struct.iwl_trans* %141, i32 %142, i32 %147)
  %149 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %150 = icmp ne %struct.iwl_trans_txq_scd_cfg* %149, null
  br i1 %150, label %151, label %223

151:                                              ; preds = %132
  %152 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %153 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %16, align 4
  %155 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @SCD_QUEUE_RDPTR(i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @iwl_write_prph(%struct.iwl_trans* %155, i32 %157, i32 %158)
  %160 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %161 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %162 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i64 @SCD_CONTEXT_QUEUE_OFFSET(i32 %164)
  %166 = add nsw i64 %163, %165
  %167 = call i32 @iwl_trans_write_mem32(%struct.iwl_trans* %160, i64 %166, i32 0)
  %168 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %169 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %170 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i64 @SCD_CONTEXT_QUEUE_OFFSET(i32 %172)
  %174 = add nsw i64 %171, %173
  %175 = add i64 %174, 4
  %176 = load i32, i32* @WIN_SIZE, align 4
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @SCD_QUEUE_CTX_REG2_VAL(i32 %176, i32 %177)
  %179 = load i32, i32* @FRAME_LIMIT, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @SCD_QUEUE_CTX_REG2_VAL(i32 %179, i32 %180)
  %182 = or i32 %178, %181
  %183 = call i32 @iwl_trans_write_mem32(%struct.iwl_trans* %168, i64 %175, i32 %182)
  %184 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @SCD_QUEUE_STATUS_BITS(i32 %185)
  %187 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_ACTIVE, align 4
  %188 = shl i32 1, %187
  %189 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %9, align 8
  %190 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_TXF, align 4
  %193 = shl i32 %191, %192
  %194 = or i32 %188, %193
  %195 = load i32, i32* @SCD_QUEUE_STTS_REG_POS_WSL, align 4
  %196 = shl i32 1, %195
  %197 = or i32 %194, %196
  %198 = load i32, i32* @SCD_QUEUE_STTS_REG_MSK, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @iwl_write_prph(%struct.iwl_trans* %184, i32 %186, i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %203 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %151
  %207 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %11, align 8
  %208 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @BIT(i32 %213)
  %215 = call i32 @iwl_scd_enable_set_active(%struct.iwl_trans* %212, i32 %214)
  br label %216

216:                                              ; preds = %211, %206, %151
  %217 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %8, align 4
  %221 = and i32 %220, 255
  %222 = call i32 (%struct.iwl_trans*, i8*, i32, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %217, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %218, i32 %219, i32 %221)
  br label %229

223:                                              ; preds = %132
  %224 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, 255
  %228 = call i32 (%struct.iwl_trans*, i8*, i32, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans* %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %227)
  br label %229

229:                                              ; preds = %223, %216
  %230 = load i32, i32* %14, align 4
  ret i32 %230
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iwl_scd_enable_set_active(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_scd_txq_set_inactive(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_scd_txq_set_chain(%struct.iwl_trans*, i32) #1

declare dso_local i32 @BUILD_RAxTID(i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_set_ratid_map(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_scd_txq_enable_agg(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_scd_txq_disable_agg(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @SCD_QUEUE_RDPTR(i32) #1

declare dso_local i32 @iwl_trans_write_mem32(%struct.iwl_trans*, i64, i32) #1

declare dso_local i64 @SCD_CONTEXT_QUEUE_OFFSET(i32) #1

declare dso_local i32 @SCD_QUEUE_CTX_REG2_VAL(i32, i32) #1

declare dso_local i32 @SCD_QUEUE_STATUS_BITS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_trans*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
