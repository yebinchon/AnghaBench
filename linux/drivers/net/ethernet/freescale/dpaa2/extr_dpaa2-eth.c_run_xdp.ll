; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_run_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_run_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dpaa2_eth_channel = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.dpaa2_eth_fq = type { i32 }
%struct.dpaa2_fd = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i32* }

@XDP_PACKET_HEADROOM = common dso_local global i32 0, align 4
@DPAA2_ETH_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i8*)* @run_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_xdp(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_channel* %1, %struct.dpaa2_eth_fq* %2, %struct.dpaa2_fd* %3, i8* %4) #0 {
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca %struct.dpaa2_eth_channel*, align 8
  %8 = alloca %struct.dpaa2_eth_fq*, align 8
  %9 = alloca %struct.dpaa2_fd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtnl_link_stats64*, align 8
  %13 = alloca %struct.bpf_prog*, align 8
  %14 = alloca %struct.xdp_buff, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %6, align 8
  store %struct.dpaa2_eth_channel* %1, %struct.dpaa2_eth_channel** %7, align 8
  store %struct.dpaa2_eth_fq* %2, %struct.dpaa2_eth_fq** %8, align 8
  store %struct.dpaa2_fd* %3, %struct.dpaa2_fd** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %18 = call i32 @dpaa2_fd_get_addr(%struct.dpaa2_fd* %17)
  store i32 %18, i32* %11, align 4
  store i32 130, i32* %15, align 4
  %19 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %20 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.rtnl_link_stats64* @this_cpu_ptr(i32 %21)
  store %struct.rtnl_link_stats64* %22, %struct.rtnl_link_stats64** %12, align 8
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %25 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.bpf_prog* @READ_ONCE(i32 %27)
  store %struct.bpf_prog* %28, %struct.bpf_prog** %13, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %13, align 8
  %30 = icmp ne %struct.bpf_prog* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  br label %186

32:                                               ; preds = %5
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %35 = call i32 @dpaa2_fd_get_offset(%struct.dpaa2_fd* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %33, i64 %36
  %38 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %42 = call i32 @dpaa2_fd_get_len(%struct.dpaa2_fd* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %40, i64 %43
  %45 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @XDP_PACKET_HEADROOM, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr i8, i8* %47, i64 %50
  %52 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %14)
  %54 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %55 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 3
  store i32* %55, i32** %56, align 8
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %13, align 8
  %58 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %57, %struct.xdp_buff* %14)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %60 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @dpaa2_fd_set_offset(%struct.dpaa2_fd* %59, i32 %66)
  %68 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %69 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %70 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @dpaa2_fd_set_len(%struct.dpaa2_fd* %68, i32 %76)
  %78 = load i32, i32* %15, align 4
  switch i32 %78, label %121 [
    i32 130, label %79
    i32 128, label %80
    i32 132, label %124
    i32 131, label %131
    i32 129, label %141
  ]

79:                                               ; preds = %32
  br label %179

80:                                               ; preds = %32
  %81 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %82 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %8, align 8
  %85 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @xdp_enqueue(%struct.dpaa2_eth_priv* %81, %struct.dpaa2_fd* %82, i8* %83, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %80
  %91 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %92 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @xdp_release_buf(%struct.dpaa2_eth_priv* %91, %struct.dpaa2_eth_channel* %92, i32 %93)
  %95 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %12, align 8
  %96 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %100 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %120

104:                                              ; preds = %80
  %105 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %12, align 8
  %106 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %110 = call i32 @dpaa2_fd_get_len(%struct.dpaa2_fd* %109)
  %111 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %12, align 8
  %112 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %116 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %104, %90
  br label %179

121:                                              ; preds = %32
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @bpf_warn_invalid_xdp_action(i32 %122)
  br label %124

124:                                              ; preds = %32, %121
  %125 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %126 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load %struct.bpf_prog*, %struct.bpf_prog** %13, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @trace_xdp_exception(%struct.TYPE_9__* %127, %struct.bpf_prog* %128, i32 %129)
  br label %131

131:                                              ; preds = %32, %124
  %132 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %133 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @xdp_release_buf(%struct.dpaa2_eth_priv* %132, %struct.dpaa2_eth_channel* %133, i32 %134)
  %136 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %137 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %179

141:                                              ; preds = %32
  %142 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %143 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %150 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %151 = call i32 @dma_unmap_page(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %153 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 2
  store i8* %156, i8** %157, align 8
  %158 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %159 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load %struct.bpf_prog*, %struct.bpf_prog** %13, align 8
  %162 = call i32 @xdp_do_redirect(%struct.TYPE_9__* %160, %struct.xdp_buff* %14, %struct.bpf_prog* %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @unlikely(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %141
  %167 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %168 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %178

172:                                              ; preds = %141
  %173 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %174 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %166
  br label %179

179:                                              ; preds = %178, %131, %120, %79
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %7, align 8
  %182 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %179, %31
  %187 = call i32 (...) @rcu_read_unlock()
  %188 = load i32, i32* %15, align 4
  ret i32 %188
}

declare dso_local i32 @dpaa2_fd_get_addr(%struct.dpaa2_fd*) #1

declare dso_local %struct.rtnl_link_stats64* @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @dpaa2_fd_get_offset(%struct.dpaa2_fd*) #1

declare dso_local i32 @dpaa2_fd_get_len(%struct.dpaa2_fd*) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @dpaa2_fd_set_offset(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @dpaa2_fd_set_len(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @xdp_enqueue(%struct.dpaa2_eth_priv*, %struct.dpaa2_fd*, i8*, i32) #1

declare dso_local i32 @xdp_release_buf(%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, i32) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(%struct.TYPE_9__*, %struct.bpf_prog*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @xdp_do_redirect(%struct.TYPE_9__*, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
