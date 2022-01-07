; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_net_bpf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_net_bpf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.bpf_prog = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nfp_prog* }
%struct.nfp_prog = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@NFP_NET_CFG_BPF_INL_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"BPF offload not supported with potential packet access beyond HW packet split boundary\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_STACK_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"stack too large\00", align 1
@NFP_NET_CFG_BPF_MAX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"program too long\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_SIZE = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_ADDR = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_BPF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"FW command error while loading BPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* @nfp_net_bpf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_bpf_load(%struct.nfp_net* %0, %struct.bpf_prog* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %21, align 8
  store %struct.nfp_prog* %22, %struct.nfp_prog** %8, align 8
  %23 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %24 = load i32, i32* @NFP_NET_CFG_BPF_INL_MTU, align 4
  %25 = call i32 @nn_readb(%struct.nfp_net* %23, i32 %24)
  %26 = mul nsw i32 %25, 64
  %27 = sub nsw i32 %26, 32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %34 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @min(i32 %32, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %45 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %151

48:                                               ; preds = %3
  %49 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %50 = load i32, i32* @NFP_NET_CFG_BPF_STACK_SZ, align 4
  %51 = call i32 @nn_readb(%struct.nfp_net* %49, i32 %50)
  %52 = mul nsw i32 %51, 64
  store i32 %52, i32* %11, align 4
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %54 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %60 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %151

63:                                               ; preds = %48
  %64 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %65 = load i32, i32* @NFP_NET_CFG_BPF_MAX_LEN, align 4
  %66 = call i32 @nn_readw(%struct.nfp_net* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %68 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %74 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %151

77:                                               ; preds = %63
  %78 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %79 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %80 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @nfp_bpf_relo_for_vnic(%struct.nfp_prog* %78, i32 %81)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %4, align 4
  br label %151

89:                                               ; preds = %77
  %90 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %91 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %96 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @DMA_TO_DEVICE, align 4
  %102 = call i32 @dma_map_single(i32 %93, i8* %94, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %104 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i64 @dma_mapping_error(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %89
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @kfree(i8* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %151

115:                                              ; preds = %89
  %116 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %117 = load i32, i32* @NFP_NET_CFG_BPF_SIZE, align 4
  %118 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %119 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @nn_writew(%struct.nfp_net* %116, i32 %117, i32 %120)
  %122 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %123 = load i32, i32* @NFP_NET_CFG_BPF_ADDR, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @nn_writeq(%struct.nfp_net* %122, i32 %123, i32 %124)
  %126 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %127 = load i32, i32* @NFP_NET_CFG_UPDATE_BPF, align 4
  %128 = call i32 @nfp_net_reconfig(%struct.nfp_net* %126, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %133 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %115
  %135 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %136 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %141 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @DMA_TO_DEVICE, align 4
  %147 = call i32 @dma_unmap_single(i32 %138, i32 %139, i32 %145, i32 %146)
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %134, %110, %86, %72, %58, %43
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @nn_readb(%struct.nfp_net*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nn_readw(%struct.nfp_net*, i32) #1

declare dso_local i8* @nfp_bpf_relo_for_vnic(%struct.nfp_prog*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @nn_writew(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
