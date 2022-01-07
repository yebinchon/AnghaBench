; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_rcv_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_rcv_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.veth_rq = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_frame = type { i32, i32, i32, i32, i32 }
%struct.veth_xdp_tx_bq = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i32, i32, i32, %struct.TYPE_2__*, i8* }

@VETH_XDP_TX = common dso_local global i32 0, align 4
@VETH_XDP_REDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.veth_rq*, %struct.xdp_frame*, i32*, %struct.veth_xdp_tx_bq*)* @veth_xdp_rcv_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @veth_xdp_rcv_one(%struct.veth_rq* %0, %struct.xdp_frame* %1, i32* %2, %struct.veth_xdp_tx_bq* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.veth_rq*, align 8
  %7 = alloca %struct.xdp_frame*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.veth_xdp_tx_bq*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdp_frame, align 4
  %15 = alloca %struct.bpf_prog*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.xdp_buff, align 8
  %19 = alloca i32, align 4
  store %struct.veth_rq* %0, %struct.veth_rq** %6, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.veth_xdp_tx_bq* %3, %struct.veth_xdp_tx_bq** %9, align 8
  %20 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %21 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %24 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr i8, i8* %29, i64 -20
  store i8* %30, i8** %11, align 8
  %31 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %32 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %36 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.bpf_prog* @rcu_dereference(i32 %37)
  store %struct.bpf_prog* %38, %struct.bpf_prog** %15, align 8
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %40 = call i64 @likely(%struct.bpf_prog* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %154

42:                                               ; preds = %4
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %46 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %50 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %53 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %58 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %61 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %66 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 3
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %69 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %68, %struct.xdp_buff* %18)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  switch i32 %70, label %142 [
    i32 130, label %71
    i32 128, label %83
    i32 129, label %117
    i32 132, label %145
    i32 131, label %152
  ]

71:                                               ; preds = %42
  %72 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %73 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %74, %76
  store i32 %77, i32* %13, align 4
  %78 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %79, %81
  store i32 %82, i32* %12, align 4
  br label %153

83:                                               ; preds = %42
  %84 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %85 = bitcast %struct.xdp_frame* %14 to i8*
  %86 = bitcast %struct.xdp_frame* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 20, i1 false)
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 4
  store i8* %87, i8** %88, align 8
  %89 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %90 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %96 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %9, align 8
  %99 = call i32 @veth_xdp_tx(i32 %97, %struct.xdp_buff* %18, %struct.veth_xdp_tx_bq* %98)
  %100 = icmp slt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @unlikely(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %83
  %105 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %106 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @trace_xdp_exception(i32 %107, %struct.bpf_prog* %108, i32 %109)
  store %struct.xdp_frame* %14, %struct.xdp_frame** %7, align 8
  br label %188

111:                                              ; preds = %83
  %112 = load i32, i32* @VETH_XDP_TX, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = call i32 (...) @rcu_read_unlock()
  br label %192

117:                                              ; preds = %42
  %118 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %119 = bitcast %struct.xdp_frame* %14 to i8*
  %120 = bitcast %struct.xdp_frame* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 20, i1 false)
  %121 = load i8*, i8** %11, align 8
  %122 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 4
  store i8* %121, i8** %122, align 8
  %123 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %124 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %130 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %133 = call i32 @xdp_do_redirect(i32 %131, %struct.xdp_buff* %18, %struct.bpf_prog* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %117
  store %struct.xdp_frame* %14, %struct.xdp_frame** %7, align 8
  br label %188

136:                                              ; preds = %117
  %137 = load i32, i32* @VETH_XDP_REDIR, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = call i32 (...) @rcu_read_unlock()
  br label %192

142:                                              ; preds = %42
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @bpf_warn_invalid_xdp_action(i32 %143)
  br label %145

145:                                              ; preds = %42, %142
  %146 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %147 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @trace_xdp_exception(i32 %148, %struct.bpf_prog* %149, i32 %150)
  br label %152

152:                                              ; preds = %42, %145
  br label %188

153:                                              ; preds = %71
  br label %154

154:                                              ; preds = %153, %4
  %155 = call i32 (...) @rcu_read_unlock()
  %156 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %157 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 20, %159
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 %160, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %16, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call %struct.sk_buff* @veth_build_skb(i8* %165, i32 %166, i32 %167, i32 0)
  store %struct.sk_buff* %168, %struct.sk_buff** %17, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %170 = icmp ne %struct.sk_buff* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %154
  %172 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %173 = call i32 @xdp_return_frame(%struct.xdp_frame* %172)
  br label %186

174:                                              ; preds = %154
  %175 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %176 = call i32 @xdp_release_frame(%struct.xdp_frame* %175)
  %177 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %178 = call i32 @xdp_scrub_frame(%struct.xdp_frame* %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %180 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %181 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @eth_type_trans(%struct.sk_buff* %179, i32 %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %174, %171
  %187 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %187, %struct.sk_buff** %5, align 8
  br label %193

188:                                              ; preds = %152, %135, %104
  %189 = call i32 (...) @rcu_read_unlock()
  %190 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %191 = call i32 @xdp_return_frame(%struct.xdp_frame* %190)
  br label %192

192:                                              ; preds = %188, %136, %111
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %193

193:                                              ; preds = %192, %186
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %194
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @veth_xdp_tx(i32, %struct.xdp_buff*, %struct.veth_xdp_tx_bq*) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local %struct.sk_buff* @veth_build_skb(i8*, i32, i32, i32) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_release_frame(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_scrub_frame(%struct.xdp_frame*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
