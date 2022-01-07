; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_cnic_mac_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_cnic_mac_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i32, i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@func_ext_config = common dso_local global %struct.TYPE_9__* null, align 8
@MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Read iSCSI MAC: %pM\0A\00", align 1
@NO_ISCSI_OOO_FLAG = common dso_local global i32 0, align 4
@NO_ISCSI_FLAG = common dso_local global i32 0, align 4
@MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Read FCoE L2 MAC: %pM\0A\00", align 1
@NO_FCOE_FLAG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"SD ISCSI MODE\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SD FCoE MODE\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Read FIP MAC: %pM\0A\00", align 1
@dev_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_get_cnic_mac_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i32 @BP_PORT(%struct.bnx2x* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i64 @IS_MF(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %158

24:                                               ; preds = %1
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @IS_MF_SD(%struct.bnx2x* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %110, label %28

28:                                               ; preds = %24
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MF_CFG_RD(%struct.bnx2x* %29, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %28
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MF_CFG_RD(%struct.bnx2x* %42, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MF_CFG_RD(%struct.bnx2x* %50, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bnx2x_set_mac_buf(i32* %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %62)
  br label %72

64:                                               ; preds = %28
  %65 = load i32, i32* @NO_ISCSI_OOO_FLAG, align 4
  %66 = load i32, i32* @NO_ISCSI_FLAG, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %64, %41
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MF_CFG_RD(%struct.bnx2x* %78, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_ext_config, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @MF_CFG_RD(%struct.bnx2x* %86, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @bnx2x_set_mac_buf(i32* %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %98)
  br label %106

100:                                              ; preds = %72
  %101 = load i32, i32* @NO_FCOE_FLAG, align 4
  %102 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %103 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %77
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %109 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %144

110:                                              ; preds = %24
  %111 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %112 = call i64 @BNX2X_IS_MF_SD_PROTOCOL_ISCSI(%struct.bnx2x* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %117 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @ETH_ALEN, align 4
  %122 = call i32 @memcpy(i32* %115, i32* %120, i32 %121)
  %123 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %124)
  br label %143

126:                                              ; preds = %110
  %127 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %128 = call i64 @BNX2X_IS_MF_SD_PROTOCOL_FCOE(%struct.bnx2x* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %133 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @ETH_ALEN, align 4
  %138 = call i32 @memcpy(i32* %131, i32* %136, i32 %137)
  %139 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %140)
  br label %142

142:                                              ; preds = %130, %126
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %106
  %145 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %146 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %150 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %149, i32 0, i32 3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @ETH_ALEN, align 4
  %156 = call i32 @memcpy(i32* %153, i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %148, %144
  br label %199

158:                                              ; preds = %1
  %159 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @SHMEM_RD(%struct.bnx2x* %159, i32 %165)
  store i32 %166, i32* %4, align 4
  %167 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @SHMEM_RD(%struct.bnx2x* %167, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @bnx2x_set_mac_buf(i32* %175, i32 %176, i32 %177)
  %179 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @SHMEM_RD(%struct.bnx2x* %179, i32 %185)
  store i32 %186, i32* %4, align 4
  %187 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_info, i32 0, i32 0), align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @SHMEM_RD(%struct.bnx2x* %187, i32 %193)
  store i32 %194, i32* %3, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @bnx2x_set_mac_buf(i32* %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %158, %157
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @is_valid_ether_addr(i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* @NO_ISCSI_OOO_FLAG, align 4
  %205 = load i32, i32* @NO_ISCSI_FLAG, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %208 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @eth_zero_addr(i32* %211)
  br label %213

213:                                              ; preds = %203, %199
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @is_valid_ether_addr(i32* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* @NO_FCOE_FLAG, align 4
  %219 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %220 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %224 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @eth_zero_addr(i32* %225)
  br label %227

227:                                              ; preds = %217, %213
  ret void
}

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_mac_buf(i32*, i32, i32) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, ...) #1

declare dso_local i64 @BNX2X_IS_MF_SD_PROTOCOL_ISCSI(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @BNX2X_IS_MF_SD_PROTOCOL_FCOE(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
