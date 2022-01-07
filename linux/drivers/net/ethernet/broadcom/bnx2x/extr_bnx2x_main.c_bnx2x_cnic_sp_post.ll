; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_sp_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_sp_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.eth_spe*, %struct.eth_spe*, %struct.eth_spe*, i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__*, i32 }
%struct.eth_spe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SPE_HDR_CONN_TYPE = common dso_local global i64 0, align 8
@SPE_HDR_CONN_TYPE_SHIFT = common dso_local global i64 0, align 8
@SPE_HDR_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i64 0, align 8
@RAMROD_CMD_ID_ETH_CLIENT_SETUP = common dso_local global i64 0, align 8
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i64 0, align 8
@ISCSI_CONNECTION_TYPE = common dso_local global i64 0, align 8
@FCOE_CONNECTION_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown SPE type: %d\0A\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"pending on SPQ %d, on KWQ %d count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_cnic_sp_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_cnic_sp_post(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eth_spe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %185, %2
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %190

30:                                               ; preds = %25
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 2
  %33 = load %struct.eth_spe*, %struct.eth_spe** %32, align 8
  %34 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = load i64, i64* @SPE_HDR_CONN_TYPE, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @SPE_HDR_CONN_TYPE_SHIFT, align 8
  %41 = ashr i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = load %struct.eth_spe*, %struct.eth_spe** %43, align 8
  %45 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load i32, i32* @SPE_HDR_CMD_ID_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @ETH_CONNECTION_TYPE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %30
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @RAMROD_CMD_ID_ETH_CLIENT_SETUP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = call i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x* %61)
  %63 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = call i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %72, i32 0, i32 9
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %85 = call i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x* %84)
  %86 = call i32 @bnx2x_set_ctx_validation(%struct.bnx2x* %71, i32* %83, i32 %85)
  br label %87

87:                                               ; preds = %60, %56
  br label %88

88:                                               ; preds = %87, %30
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @ETH_CONNECTION_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %94 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %93, i32 0, i32 8
  %95 = call i32 @atomic_read(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %190

98:                                               ; preds = %92
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %99, i32 0, i32 8
  %101 = call i32 @atomic_dec(i32* %100)
  br label %102

102:                                              ; preds = %98
  br label %148

103:                                              ; preds = %88
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* @NONE_CONNECTION_TYPE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %109 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %108, i32 0, i32 7
  %110 = call i32 @atomic_read(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %190

113:                                              ; preds = %107
  %114 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %115 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %114, i32 0, i32 7
  %116 = call i32 @atomic_dec(i32* %115)
  br label %117

117:                                              ; preds = %113
  br label %147

118:                                              ; preds = %103
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @ISCSI_CONNECTION_TYPE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @FCOE_CONNECTION_TYPE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %122, %118
  %127 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %131 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %190

136:                                              ; preds = %126
  %137 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %136
  br label %146

142:                                              ; preds = %122
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %143)
  %145 = call i32 (...) @bnx2x_panic()
  br label %190

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %117
  br label %148

148:                                              ; preds = %147, %102
  %149 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %150 = call %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x* %149)
  store %struct.eth_spe* %150, %struct.eth_spe** %5, align 8
  %151 = load %struct.eth_spe*, %struct.eth_spe** %5, align 8
  %152 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %153 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %152, i32 0, i32 2
  %154 = load %struct.eth_spe*, %struct.eth_spe** %153, align 8
  %155 = bitcast %struct.eth_spe* %151 to i8*
  %156 = bitcast %struct.eth_spe* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 8, i1 false)
  %157 = load i32, i32* @BNX2X_MSG_SP, align 4
  %158 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %159 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %162 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @DP(i32 %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %160, i64 %163, i32 %164)
  %166 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %167 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %166, i32 0, i32 2
  %168 = load %struct.eth_spe*, %struct.eth_spe** %167, align 8
  %169 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %170 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %169, i32 0, i32 4
  %171 = load %struct.eth_spe*, %struct.eth_spe** %170, align 8
  %172 = icmp eq %struct.eth_spe* %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %148
  %174 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %175 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %174, i32 0, i32 3
  %176 = load %struct.eth_spe*, %struct.eth_spe** %175, align 8
  %177 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %178 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %177, i32 0, i32 2
  store %struct.eth_spe* %176, %struct.eth_spe** %178, align 8
  br label %184

179:                                              ; preds = %148
  %180 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %181 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %180, i32 0, i32 2
  %182 = load %struct.eth_spe*, %struct.eth_spe** %181, align 8
  %183 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %182, i32 1
  store %struct.eth_spe* %183, %struct.eth_spe** %181, align 8
  br label %184

184:                                              ; preds = %179, %173
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %187 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, -1
  store i64 %189, i64* %187, align 8
  br label %25

190:                                              ; preds = %142, %135, %112, %97, %25
  %191 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %192 = call i32 @bnx2x_sp_prod_update(%struct.bnx2x* %191)
  %193 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %194 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %193, i32 0, i32 1
  %195 = call i32 @spin_unlock_bh(i32* %194)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_ctx_validation(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @bnx2x_sp_prod_update(%struct.bnx2x*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
