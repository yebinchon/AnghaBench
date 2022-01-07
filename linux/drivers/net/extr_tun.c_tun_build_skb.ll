; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.page_frag }
%struct.page_frag = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tun_struct = type { i32 }
%struct.tun_file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.virtio_net_hdr = type { i64 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i32* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TUN_RX_PAD = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@XDP_REDIRECT = common dso_local global i64 0, align 8
@XDP_TX = common dso_local global i64 0, align 8
@XDP_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.tun_struct*, %struct.tun_file*, %struct.iov_iter*, %struct.virtio_net_hdr*, i32, i32*)* @tun_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tun_build_skb(%struct.tun_struct* %0, %struct.tun_file* %1, %struct.iov_iter* %2, %struct.virtio_net_hdr* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tun_struct*, align 8
  %9 = alloca %struct.tun_file*, align 8
  %10 = alloca %struct.iov_iter*, align 8
  %11 = alloca %struct.virtio_net_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.page_frag*, align 8
  %15 = alloca %struct.bpf_prog*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.xdp_buff, align 8
  %22 = alloca i64, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %8, align 8
  store %struct.tun_file* %1, %struct.tun_file** %9, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %10, align 8
  store %struct.virtio_net_hdr* %3, %struct.virtio_net_hdr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.page_frag* %24, %struct.page_frag** %14, align 8
  %25 = call i32 @SKB_DATA_ALIGN(i32 4)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* @TUN_RX_PAD, align 4
  store i32 %26, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %29 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.bpf_prog* @rcu_dereference(i32 %30)
  store %struct.bpf_prog* %31, %struct.bpf_prog** %15, align 8
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %33 = icmp ne %struct.bpf_prog* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %19, align 4
  br label %40

40:                                               ; preds = %34, %6
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %19, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @SKB_DATA_ALIGN(i32 %43)
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %16, align 4
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %49 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %52 = call i32 @ALIGN(i32 %50, i32 %51)
  %53 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %54 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @skb_page_frag_refill(i32 %55, %struct.page_frag* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %40
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.sk_buff* @ERR_PTR(i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %7, align 8
  br label %217

68:                                               ; preds = %40
  %69 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %70 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @page_address(i32 %71)
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %75 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8* %78, i8** %17, align 8
  %79 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %80 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %83 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %89 = call i64 @copy_page_from_iter(i32 %81, i32 %86, i32 %87, %struct.iov_iter* %88)
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %68
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  %97 = call %struct.sk_buff* @ERR_PTR(i32 %96)
  store %struct.sk_buff* %97, %struct.sk_buff** %7, align 8
  br label %217

98:                                               ; preds = %68
  %99 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %11, align 8
  %100 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %105 = icmp ne %struct.bpf_prog* %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %103, %98
  %107 = load i32*, i32** %13, align 8
  store i32 1, i32* %107, align 4
  %108 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %109 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call %struct.sk_buff* @__tun_build_skb(%struct.tun_file* %108, %struct.page_frag* %109, i8* %110, i32 %111, i32 %112, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %7, align 8
  br label %217

115:                                              ; preds = %103
  %116 = load i32*, i32** %13, align 8
  store i32 0, i32* %116, align 4
  %117 = call i32 (...) @local_bh_disable()
  %118 = call i32 (...) @rcu_read_lock()
  %119 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %120 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.bpf_prog* @rcu_dereference(i32 %121)
  store %struct.bpf_prog* %122, %struct.bpf_prog** %15, align 8
  %123 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %124 = icmp ne %struct.bpf_prog* %123, null
  br i1 %124, label %125, label %199

125:                                              ; preds = %115
  %126 = load i8*, i8** %17, align 8
  %127 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 0
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %21)
  %134 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 2
  store i8* %138, i8** %139, align 8
  %140 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %141 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 3
  store i32* %141, i32** %142, align 8
  %143 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %144 = call i64 @bpf_prog_run_xdp(%struct.bpf_prog* %143, %struct.xdp_buff* %21)
  store i64 %144, i64* %22, align 8
  %145 = load i64, i64* %22, align 8
  %146 = load i64, i64* @XDP_REDIRECT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %125
  %149 = load i64, i64* %22, align 8
  %150 = load i64, i64* @XDP_TX, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148, %125
  %153 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %154 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_page(i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %159 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %152, %148
  %163 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %164 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %165 = load i64, i64* %22, align 8
  %166 = call i32 @tun_xdp_act(%struct.tun_struct* %163, %struct.bpf_prog* %164, %struct.xdp_buff* %21, i64 %165)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %209

170:                                              ; preds = %162
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* @XDP_REDIRECT, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = call i32 (...) @xdp_do_flush_map()
  br label %177

177:                                              ; preds = %175, %170
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* @XDP_PASS, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %214

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %184 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %19, align 4
  %191 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = ptrtoint i8* %192 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %182, %115
  %200 = call i32 (...) @rcu_read_unlock()
  %201 = call i32 (...) @local_bh_enable()
  %202 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %203 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %204 = load i8*, i8** %17, align 8
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %19, align 4
  %208 = call %struct.sk_buff* @__tun_build_skb(%struct.tun_file* %202, %struct.page_frag* %203, i8* %204, i32 %205, i32 %206, i32 %207)
  store %struct.sk_buff* %208, %struct.sk_buff** %7, align 8
  br label %217

209:                                              ; preds = %169
  %210 = load %struct.page_frag*, %struct.page_frag** %14, align 8
  %211 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @put_page(i32 %212)
  br label %214

214:                                              ; preds = %209, %181
  %215 = call i32 (...) @rcu_read_unlock()
  %216 = call i32 (...) @local_bh_enable()
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %217

217:                                              ; preds = %214, %199, %106, %94, %64
  %218 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %218
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_page_frag_refill(i32, %struct.page_frag*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @copy_page_from_iter(i32, i32, i32, %struct.iov_iter*) #1

declare dso_local %struct.sk_buff* @__tun_build_skb(%struct.tun_file*, %struct.page_frag*, i8*, i32, i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i64 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @tun_xdp_act(%struct.tun_struct*, %struct.bpf_prog*, %struct.xdp_buff*, i64) #1

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
