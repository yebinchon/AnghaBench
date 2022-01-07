; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_entry_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_entry_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { %struct.bpf_map, %struct.nfp_bpf_map* }
%struct.bpf_map = type { i32, i32 }
%struct.nfp_bpf_map = type { i32, %struct.nfp_app_bpf* }
%struct.nfp_app_bpf = type { i32 }
%struct.cmsg_reply_map_op = type { i32, i32 }
%struct.cmsg_req_map_op = type { i8*, i8*, i8* }
%struct.sk_buff = type { i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cmsg drop - type 0x%02x too short %d!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"cmsg drop - type 0x%02x too short %d for %d entries!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i32, i32*, i32*, i32, i32*, i32*)* @nfp_bpf_ctrl_entry_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_ctrl_entry_op(%struct.bpf_offloaded_map* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_offloaded_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nfp_bpf_map*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nfp_app_bpf*, align 8
  %21 = alloca %struct.bpf_map*, align 8
  %22 = alloca %struct.cmsg_reply_map_op*, align 8
  %23 = alloca %struct.cmsg_req_map_op*, align 8
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %9, align 8
  %28 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %27, i32 0, i32 1
  %29 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %28, align 8
  store %struct.nfp_bpf_map* %29, %struct.nfp_bpf_map** %16, align 8
  %30 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %16, align 8
  %31 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %30, i32 0, i32 1
  %32 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %31, align 8
  store %struct.nfp_app_bpf* %32, %struct.nfp_app_bpf** %20, align 8
  %33 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %9, align 8
  %34 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %33, i32 0, i32 0
  store %struct.bpf_map* %34, %struct.bpf_map** %21, align 8
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %217

41:                                               ; preds = %7
  %42 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %16, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @nfp_bpf_ctrl_op_cache_get(%struct.nfp_bpf_map* %42, i32 %43, i32* %44, i32* %45, i32* %46, i32* %25)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %217

51:                                               ; preds = %41
  %52 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %53 = call %struct.sk_buff* @nfp_bpf_cmsg_map_req_alloc(%struct.nfp_app_bpf* %52, i32 1)
  store %struct.sk_buff* %53, %struct.sk_buff** %24, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %26, align 4
  br label %211

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast i8* %63 to %struct.cmsg_req_map_op*
  store %struct.cmsg_req_map_op* %64, %struct.cmsg_req_map_op** %23, align 8
  %65 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %16, align 8
  %66 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @cpu_to_be32(i32 %67)
  %69 = load %struct.cmsg_req_map_op*, %struct.cmsg_req_map_op** %23, align 8
  %70 = getelementptr inbounds %struct.cmsg_req_map_op, %struct.cmsg_req_map_op* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %17, align 4
  %72 = call i8* @cpu_to_be32(i32 %71)
  %73 = load %struct.cmsg_req_map_op*, %struct.cmsg_req_map_op** %23, align 8
  %74 = getelementptr inbounds %struct.cmsg_req_map_op, %struct.cmsg_req_map_op* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.cmsg_req_map_op*, %struct.cmsg_req_map_op** %23, align 8
  %78 = getelementptr inbounds %struct.cmsg_req_map_op, %struct.cmsg_req_map_op* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %59
  %82 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %83 = load %struct.cmsg_req_map_op*, %struct.cmsg_req_map_op** %23, align 8
  %84 = call i32* @nfp_bpf_ctrl_req_key(%struct.nfp_app_bpf* %82, %struct.cmsg_req_map_op* %83, i32 0)
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.bpf_map*, %struct.bpf_map** %21, align 8
  %87 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32* %84, i32* %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %59
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %95 = load %struct.cmsg_req_map_op*, %struct.cmsg_req_map_op** %23, align 8
  %96 = call i32* @nfp_bpf_ctrl_req_val(%struct.nfp_app_bpf* %94, %struct.cmsg_req_map_op* %95, i32 0)
  %97 = load i32*, i32** %12, align 8
  %98 = load %struct.bpf_map*, %struct.bpf_map** %21, align 8
  %99 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i32* %96, i32* %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %90
  %103 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %104 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %103, i32 0, i32 0
  %105 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.sk_buff* @nfp_ccm_communicate(i32* %104, %struct.sk_buff* %105, i32 %106, i32 0)
  store %struct.sk_buff* %107, %struct.sk_buff** %24, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %109 = call i64 @IS_ERR(%struct.sk_buff* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %113 = call i32 @PTR_ERR(%struct.sk_buff* %112)
  store i32 %113, i32* %26, align 4
  br label %211

114:                                              ; preds = %102
  %115 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %118, 8
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.nfp_app_bpf*, i8*, i32, i32, ...) @cmsg_warn(%struct.nfp_app_bpf* %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %26, align 4
  br label %208

129:                                              ; preds = %114
  %130 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = bitcast i8* %133 to %struct.cmsg_reply_map_op*
  store %struct.cmsg_reply_map_op* %134, %struct.cmsg_reply_map_op** %22, align 8
  %135 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %22, align 8
  %136 = getelementptr inbounds %struct.cmsg_reply_map_op, %struct.cmsg_reply_map_op* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be32_to_cpu(i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %140 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %22, align 8
  %141 = getelementptr inbounds %struct.cmsg_reply_map_op, %struct.cmsg_reply_map_op* %140, i32 0, i32 0
  %142 = call i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf* %139, i32* %141)
  store i32 %142, i32* %26, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %26, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = add i32 %143, %148
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %129
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 0, i32* %26, align 4
  br label %156

156:                                              ; preds = %155, %152, %129
  %157 = load i32, i32* %26, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %208

160:                                              ; preds = %156
  %161 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @nfp_bpf_cmsg_map_reply_size(%struct.nfp_app_bpf* %164, i32 %165)
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %18, align 4
  %175 = call i32 (%struct.nfp_app_bpf*, i8*, i32, i32, ...) @cmsg_warn(%struct.nfp_app_bpf* %169, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %173, i32 %174)
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %26, align 4
  br label %208

178:                                              ; preds = %160
  %179 = load i32*, i32** %14, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load i32*, i32** %14, align 8
  %183 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %184 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %22, align 8
  %185 = call i32* @nfp_bpf_ctrl_reply_key(%struct.nfp_app_bpf* %183, %struct.cmsg_reply_map_op* %184, i32 0)
  %186 = load %struct.bpf_map*, %struct.bpf_map** %21, align 8
  %187 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @memcpy(i32* %182, i32* %185, i32 %188)
  br label %190

190:                                              ; preds = %181, %178
  %191 = load i32*, i32** %15, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load i32*, i32** %15, align 8
  %195 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %20, align 8
  %196 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %22, align 8
  %197 = call i32* @nfp_bpf_ctrl_reply_val(%struct.nfp_app_bpf* %195, %struct.cmsg_reply_map_op* %196, i32 0)
  %198 = load %struct.bpf_map*, %struct.bpf_map** %21, align 8
  %199 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @memcpy(i32* %194, i32* %197, i32 %200)
  br label %202

202:                                              ; preds = %193, %190
  %203 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %16, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %206 = load i32, i32* %25, align 4
  %207 = call i32 @nfp_bpf_ctrl_op_cache_put(%struct.nfp_bpf_map* %203, i32 %204, %struct.sk_buff* %205, i32 %206)
  store i32 0, i32* %8, align 4
  br label %217

208:                                              ; preds = %168, %159, %120
  %209 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %210 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %209)
  br label %211

211:                                              ; preds = %208, %111, %56
  %212 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %16, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %25, align 4
  %215 = call i32 @nfp_bpf_ctrl_op_cache_put(%struct.nfp_bpf_map* %212, i32 %213, %struct.sk_buff* null, i32 %214)
  %216 = load i32, i32* %26, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %211, %202, %50, %38
  %218 = load i32, i32* %8, align 4
  ret i32 %218
}

declare dso_local i32 @nfp_bpf_ctrl_op_cache_get(%struct.nfp_bpf_map*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @nfp_bpf_cmsg_map_req_alloc(%struct.nfp_app_bpf*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @nfp_bpf_ctrl_req_key(%struct.nfp_app_bpf*, %struct.cmsg_req_map_op*, i32) #1

declare dso_local i32* @nfp_bpf_ctrl_req_val(%struct.nfp_app_bpf*, %struct.cmsg_req_map_op*, i32) #1

declare dso_local %struct.sk_buff* @nfp_ccm_communicate(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @cmsg_warn(%struct.nfp_app_bpf*, i8*, i32, i32, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @nfp_bpf_ctrl_rc_to_errno(%struct.nfp_app_bpf*, i32*) #1

declare dso_local i32 @nfp_bpf_cmsg_map_reply_size(%struct.nfp_app_bpf*, i32) #1

declare dso_local i32* @nfp_bpf_ctrl_reply_key(%struct.nfp_app_bpf*, %struct.cmsg_reply_map_op*, i32) #1

declare dso_local i32* @nfp_bpf_ctrl_reply_val(%struct.nfp_app_bpf*, %struct.cmsg_reply_map_op*, i32) #1

declare dso_local i32 @nfp_bpf_ctrl_op_cache_put(%struct.nfp_bpf_map*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
