; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_setup_tc_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_setup_tc_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_cls_bpf_offload = type { i64, %struct.bpf_prog*, %struct.TYPE_6__, %struct.bpf_prog*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.bpf_prog = type { i32 }
%struct.nfp_net = type { %struct.TYPE_5__*, %struct.nfp_bpf_vnic*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.nfp_bpf_vnic = type { %struct.bpf_prog* }
%struct.TYPE_4__ = type { i32 }

@TC_SETUP_CLSBPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"only offload of BPF classifiers supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"NFP firmware does not support eBPF offload\00", align 1
@ETH_P_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"only ETH_P_ALL supported as filter protocol\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"only direct action with no legacy actions supported\00", align 1
@TC_CLSBPF_OFFLOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @nfp_bpf_setup_tc_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_setup_tc_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_cls_bpf_offload*, align 8
  %9 = alloca %struct.nfp_net*, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.nfp_bpf_vnic*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.tc_cls_bpf_offload*
  store %struct.tc_cls_bpf_offload* %14, %struct.tc_cls_bpf_offload** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.nfp_net*
  store %struct.nfp_net* %16, %struct.nfp_net** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TC_SETUP_CLSBPF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %22 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @NL_SET_ERR_MSG_MOD(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %147

28:                                               ; preds = %3
  %29 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %30 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %34 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %33, i32 0, i32 2
  %35 = call i32 @tc_cls_can_offload_and_chain0(i32 %32, %struct.TYPE_6__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %147

40:                                               ; preds = %28
  %41 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %42 = call i32 @nfp_net_ebpf_capable(%struct.nfp_net* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %46 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @NL_SET_ERR_MSG_MOD(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %147

52:                                               ; preds = %40
  %53 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %54 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @ETH_P_ALL, align 4
  %58 = call i64 @htons(i32 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %62 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NL_SET_ERR_MSG_MOD(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %147

68:                                               ; preds = %52
  %69 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %70 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %75 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @tcf_exts_has_actions(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73, %68
  %80 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %81 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @NL_SET_ERR_MSG_MOD(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %147

87:                                               ; preds = %73
  %88 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %89 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TC_CLSBPF_OFFLOAD, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %147

96:                                               ; preds = %87
  %97 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %98 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %97, i32 0, i32 1
  %99 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %98, align 8
  store %struct.nfp_bpf_vnic* %99, %struct.nfp_bpf_vnic** %11, align 8
  %100 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %101 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %100, i32 0, i32 3
  %102 = load %struct.bpf_prog*, %struct.bpf_prog** %101, align 8
  store %struct.bpf_prog* %102, %struct.bpf_prog** %10, align 8
  %103 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %11, align 8
  %104 = getelementptr inbounds %struct.nfp_bpf_vnic, %struct.nfp_bpf_vnic* %103, i32 0, i32 0
  %105 = load %struct.bpf_prog*, %struct.bpf_prog** %104, align 8
  %106 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %107 = icmp ne %struct.bpf_prog* %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %96
  store %struct.bpf_prog* null, %struct.bpf_prog** %10, align 8
  %109 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %110 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %109, i32 0, i32 1
  %111 = load %struct.bpf_prog*, %struct.bpf_prog** %110, align 8
  %112 = icmp ne %struct.bpf_prog* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %147

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %96
  %116 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %117 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %118 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %117, i32 0, i32 1
  %119 = load %struct.bpf_prog*, %struct.bpf_prog** %118, align 8
  %120 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %121 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %122 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @nfp_net_bpf_offload(%struct.nfp_net* %116, %struct.bpf_prog* %119, %struct.bpf_prog* %120, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %147

130:                                              ; preds = %115
  %131 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %132 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %131, i32 0, i32 1
  %133 = load %struct.bpf_prog*, %struct.bpf_prog** %132, align 8
  %134 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %11, align 8
  %135 = getelementptr inbounds %struct.nfp_bpf_vnic, %struct.nfp_bpf_vnic* %134, i32 0, i32 0
  store %struct.bpf_prog* %133, %struct.bpf_prog** %135, align 8
  %136 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %11, align 8
  %137 = getelementptr inbounds %struct.nfp_bpf_vnic, %struct.nfp_bpf_vnic* %136, i32 0, i32 0
  %138 = load %struct.bpf_prog*, %struct.bpf_prog** %137, align 8
  %139 = icmp ne %struct.bpf_prog* %138, null
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %144 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %130, %128, %113, %93, %79, %60, %44, %37, %20
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @nfp_net_ebpf_capable(%struct.nfp_net*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @tcf_exts_has_actions(i32) #1

declare dso_local i32 @nfp_net_bpf_offload(%struct.nfp_net*, %struct.bpf_prog*, %struct.bpf_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
