; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_cls.c_nfp_abm_setup_cls_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_cls.c_nfp_abm_setup_cls_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_repr = type { i32 }
%struct.flow_block_offload = type { i32 }

@nfp_abm_block_cb_list = common dso_local global i32 0, align 4
@nfp_abm_setup_tc_block_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_abm_setup_cls_block(%struct.net_device* %0, %struct.nfp_repr* %1, %struct.flow_block_offload* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_repr*, align 8
  %6 = alloca %struct.flow_block_offload*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nfp_repr* %1, %struct.nfp_repr** %5, align 8
  store %struct.flow_block_offload* %2, %struct.flow_block_offload** %6, align 8
  %7 = load %struct.flow_block_offload*, %struct.flow_block_offload** %6, align 8
  %8 = load i32, i32* @nfp_abm_setup_tc_block_cb, align 4
  %9 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %10 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %11 = call i32 @flow_block_cb_setup_simple(%struct.flow_block_offload* %7, i32* @nfp_abm_block_cb_list, i32 %8, %struct.nfp_repr* %9, %struct.nfp_repr* %10, i32 1)
  ret i32 %11
}

declare dso_local i32 @flow_block_cb_setup_simple(%struct.flow_block_offload*, i32*, i32, %struct.nfp_repr*, %struct.nfp_repr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
