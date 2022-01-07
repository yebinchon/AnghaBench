; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_7__, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5e_params = type { %struct.dim_cq_moder, %struct.dim_cq_moder }
%struct.dim_cq_moder = type { i32, i32 }
%struct.mlx5e_channel_param = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*)* @mlx5e_open_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_queues(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.mlx5e_channel_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_channel*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_channel_param*, align 8
  %8 = alloca %struct.dim_cq_moder, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_channel_param* %2, %struct.mlx5e_channel_param** %7, align 8
  %10 = bitcast %struct.dim_cq_moder* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %12 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %12, i32 0, i32 5
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = bitcast %struct.dim_cq_moder* %8 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %11, i64 %18, i32* %13, i32* %16)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %201

24:                                               ; preds = %3
  %25 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %26 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %27 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %28 = call i32 @mlx5e_open_tx_cqs(%struct.mlx5e_channel* %25, %struct.mlx5e_params* %26, %struct.mlx5e_channel_param* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %195

32:                                               ; preds = %24
  %33 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %34 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %34, i32 0, i32 0
  %36 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %36, i32 0, i32 3
  %38 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = bitcast %struct.dim_cq_moder* %35 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %33, i64 %42, i32* %37, i32* %40)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %192

47:                                               ; preds = %32
  %48 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %49 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %49, i32 0, i32 1
  %51 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %52 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %51, i32 0, i32 4
  %53 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = bitcast %struct.dim_cq_moder* %50 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %48, i64 %57, i32* %52, i32* %55)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %187

62:                                               ; preds = %47
  %63 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %69 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %69, i32 0, i32 0
  %71 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %71, i32 0, i32 3
  %73 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = bitcast %struct.dim_cq_moder* %70 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %68, i64 %77, i32* %72, i32* %75)
  br label %80

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %67
  %81 = phi i32 [ %78, %67 ], [ 0, %79 ]
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %182

85:                                               ; preds = %80
  %86 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %87 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %86, i32 0, i32 5
  %88 = call i32 @napi_enable(i32* %87)
  %89 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %90 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %91 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %92 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %91, i32 0, i32 2
  %93 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %94 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %93, i32 0, i32 0
  %95 = call i32 @mlx5e_open_icosq(%struct.mlx5e_channel* %89, %struct.mlx5e_params* %90, i32* %92, %struct.TYPE_9__* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %168

99:                                               ; preds = %85
  %100 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %101 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %102 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %103 = call i32 @mlx5e_open_sqs(%struct.mlx5e_channel* %100, %struct.mlx5e_params* %101, %struct.mlx5e_channel_param* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %164

107:                                              ; preds = %99
  %108 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %109 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %114 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %115 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %116 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %115, i32 0, i32 0
  %117 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %118 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %117, i32 0, i32 3
  %119 = call i32 @mlx5e_open_xdpsq(%struct.mlx5e_channel* %113, %struct.mlx5e_params* %114, i32* %116, i32* null, %struct.TYPE_7__* %118, i32 0)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %161

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %107
  %125 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %126 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %127 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %128 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %127, i32 0, i32 1
  %129 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %130 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %129, i32 0, i32 2
  %131 = call i32 @mlx5e_open_rq(%struct.mlx5e_channel* %125, %struct.mlx5e_params* %126, i32* %128, i32* null, i32* null, %struct.TYPE_8__* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %151

135:                                              ; preds = %124
  %136 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %137 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %138 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %139 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %138, i32 0, i32 0
  %140 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %141 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %140, i32 0, i32 1
  %142 = call i32 @mlx5e_open_xdpsq(%struct.mlx5e_channel* %136, %struct.mlx5e_params* %137, i32* %139, i32* null, %struct.TYPE_7__* %141, i32 1)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %147

146:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %201

147:                                              ; preds = %145
  %148 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %149 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %148, i32 0, i32 2
  %150 = call i32 @mlx5e_close_rq(%struct.TYPE_8__* %149)
  br label %151

151:                                              ; preds = %147, %134
  %152 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %153 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %158 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %157, i32 0, i32 3
  %159 = call i32 @mlx5e_close_xdpsq(%struct.TYPE_7__* %158)
  br label %160

160:                                              ; preds = %156, %151
  br label %161

161:                                              ; preds = %160, %122
  %162 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %163 = call i32 @mlx5e_close_sqs(%struct.mlx5e_channel* %162)
  br label %164

164:                                              ; preds = %161, %106
  %165 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %166 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %165, i32 0, i32 0
  %167 = call i32 @mlx5e_close_icosq(%struct.TYPE_9__* %166)
  br label %168

168:                                              ; preds = %164, %98
  %169 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %170 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %169, i32 0, i32 5
  %171 = call i32 @napi_disable(i32* %170)
  %172 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %178 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = call i32 @mlx5e_close_cq(i32* %179)
  br label %181

181:                                              ; preds = %176, %168
  br label %182

182:                                              ; preds = %181, %84
  %183 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %184 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = call i32 @mlx5e_close_cq(i32* %185)
  br label %187

187:                                              ; preds = %182, %61
  %188 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %189 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = call i32 @mlx5e_close_cq(i32* %190)
  br label %192

192:                                              ; preds = %187, %46
  %193 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %194 = call i32 @mlx5e_close_tx_cqs(%struct.mlx5e_channel* %193)
  br label %195

195:                                              ; preds = %192, %31
  %196 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %197 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = call i32 @mlx5e_close_cq(i32* %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %195, %146, %22
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_open_cq(%struct.mlx5e_channel*, i64, i32*, i32*) #2

declare dso_local i32 @mlx5e_open_tx_cqs(%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*) #2

declare dso_local i32 @napi_enable(i32*) #2

declare dso_local i32 @mlx5e_open_icosq(%struct.mlx5e_channel*, %struct.mlx5e_params*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @mlx5e_open_sqs(%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*) #2

declare dso_local i32 @mlx5e_open_xdpsq(%struct.mlx5e_channel*, %struct.mlx5e_params*, i32*, i32*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @mlx5e_open_rq(%struct.mlx5e_channel*, %struct.mlx5e_params*, i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @mlx5e_close_rq(%struct.TYPE_8__*) #2

declare dso_local i32 @mlx5e_close_xdpsq(%struct.TYPE_7__*) #2

declare dso_local i32 @mlx5e_close_sqs(%struct.mlx5e_channel*) #2

declare dso_local i32 @mlx5e_close_icosq(%struct.TYPE_9__*) #2

declare dso_local i32 @napi_disable(i32*) #2

declare dso_local i32 @mlx5e_close_cq(i32*) #2

declare dso_local i32 @mlx5e_close_tx_cqs(%struct.mlx5e_channel*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
