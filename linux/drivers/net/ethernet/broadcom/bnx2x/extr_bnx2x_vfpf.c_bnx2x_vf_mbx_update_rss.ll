; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_update_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_update_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vfpf_rss_tlv }
%struct.vfpf_rss_tlv = type { i64, i64, i32, i32, i32, i32 }
%struct.bnx2x_config_rss_params = type { i64, i64, i32, i32*, i32, i32 }

@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i64 0, align 8
@T_ETH_RSS_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"failing rss configuration of vf %d due to size mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VFPF_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@VFPF_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@VFPF_RSS_SET_SRCH = common dso_local global i32 0, align 4
@BNX2X_RSS_SET_SRCH = common dso_local global i32 0, align 4
@VFPF_RSS_IPV4 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4 = common dso_local global i32 0, align 4
@VFPF_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV6 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6 = common dso_local global i32 0, align 4
@VFPF_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"about to hit a FW assert. aborting...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_update_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_update_rss(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.bnx2x_config_rss_params, align 8
  %8 = alloca %struct.vfpf_rss_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.vfpf_rss_tlv* %14, %struct.vfpf_rss_tlv** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %16 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @T_ETH_INDIRECTION_TABLE_SIZE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %22 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @T_ETH_RSS_KEY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20, %3
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %192

33:                                               ; preds = %20
  %34 = call i32 @memset(%struct.bnx2x_config_rss_params* %7, i32 0, i32 40)
  %35 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %38 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @T_ETH_INDIRECTION_TABLE_SIZE, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32 %36, i32 %39, i32 %41)
  %43 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %46 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32 %44, i32 %47, i32 4)
  %49 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %50 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 3
  store i32* %50, i32** %51, align 8
  %52 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %53 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %59 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @VFPF_RSS_MODE_DISABLED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %33
  %65 = load i32, i32* @BNX2X_RSS_MODE_DISABLED, align 4
  %66 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %67 = call i32 @__set_bit(i32 %65, i64* %66)
  br label %68

68:                                               ; preds = %64, %33
  %69 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %70 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VFPF_RSS_MODE_REGULAR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @BNX2X_RSS_MODE_REGULAR, align 4
  %77 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %78 = call i32 @__set_bit(i32 %76, i64* %77)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %81 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VFPF_RSS_SET_SRCH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @BNX2X_RSS_SET_SRCH, align 4
  %88 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %89 = call i32 @__set_bit(i32 %87, i64* %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %92 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VFPF_RSS_IPV4, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @BNX2X_RSS_IPV4, align 4
  %99 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %100 = call i32 @__set_bit(i32 %98, i64* %99)
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %103 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @VFPF_RSS_IPV4_TCP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @BNX2X_RSS_IPV4_TCP, align 4
  %110 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %111 = call i32 @__set_bit(i32 %109, i64* %110)
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %114 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @VFPF_RSS_IPV4_UDP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @BNX2X_RSS_IPV4_UDP, align 4
  %121 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %122 = call i32 @__set_bit(i32 %120, i64* %121)
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %125 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @VFPF_RSS_IPV6, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @BNX2X_RSS_IPV6, align 4
  %132 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %133 = call i32 @__set_bit(i32 %131, i64* %132)
  br label %134

134:                                              ; preds = %130, %123
  %135 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %136 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @VFPF_RSS_IPV6_TCP, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* @BNX2X_RSS_IPV6_TCP, align 4
  %143 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %144 = call i32 @__set_bit(i32 %142, i64* %143)
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %147 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @VFPF_RSS_IPV6_UDP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @BNX2X_RSS_IPV6_UDP, align 4
  %154 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %155 = call i32 @__set_bit(i32 %153, i64* %154)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %158 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @VFPF_RSS_IPV4_TCP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %165 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @VFPF_RSS_IPV4_UDP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %163, %156
  %171 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %172 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @VFPF_RSS_IPV6_TCP, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %170
  %178 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %8, align 8
  %179 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @VFPF_RSS_IPV6_UDP, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177, %163
  %185 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %9, align 4
  br label %192

188:                                              ; preds = %177, %170
  %189 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %190 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %191 = call i32 @bnx2x_vf_rss_update(%struct.bnx2x* %189, %struct.bnx2x_virtf* %190, %struct.bnx2x_config_rss_params* %7)
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %188, %184, %26
  %193 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %194 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %193, %struct.bnx2x_virtf* %194, i32 %195)
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @memset(%struct.bnx2x_config_rss_params*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vf_rss_update(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_config_rss_params*) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
