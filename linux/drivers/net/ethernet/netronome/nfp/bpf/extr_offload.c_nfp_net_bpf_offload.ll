; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_net_bpf_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_net_bpf_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_CAP = common dso_local global i32 0, align 4
@NFP_NET_BPF_CAP_RELO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FW does not support live reload\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_BPF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_bpf_offload(%struct.nfp_net* %0, %struct.bpf_prog* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %6, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %13 = icmp ne %struct.bpf_prog* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %16 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bpf_offload_dev_match(%struct.bpf_prog* %15, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %85

25:                                               ; preds = %14, %4
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %27 = icmp ne %struct.bpf_prog* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %33 = load i32, i32* @NFP_NET_CFG_BPF_CAP, align 4
  %34 = call i32 @nn_readb(%struct.nfp_net* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @NFP_NET_BPF_CAP_RELO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %41 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %85

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %28, %25
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %50 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFP_NET_CFG_CTRL_BPF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %85

59:                                               ; preds = %48, %45
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %64 = icmp ne %struct.bpf_prog* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %67 = call i32 @nfp_net_bpf_stop(%struct.nfp_net* %66)
  store i32 %67, i32* %5, align 4
  br label %85

68:                                               ; preds = %62, %59
  %69 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %70 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %72 = call i32 @nfp_net_bpf_load(%struct.nfp_net* %69, %struct.bpf_prog* %70, %struct.netlink_ext_ack* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %85

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %83 = call i32 @nfp_net_bpf_start(%struct.nfp_net* %81, %struct.netlink_ext_ack* %82)
  br label %84

84:                                               ; preds = %80, %77
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %75, %65, %56, %39, %22
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @bpf_offload_dev_match(%struct.bpf_prog*, i32) #1

declare dso_local i32 @nn_readb(%struct.nfp_net*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_net_bpf_stop(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_bpf_load(%struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_net_bpf_start(%struct.nfp_net*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
