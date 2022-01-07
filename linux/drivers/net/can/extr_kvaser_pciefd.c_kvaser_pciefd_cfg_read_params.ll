; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_cfg_read_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_cfg_read_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i32 }
%struct.kvaser_pciefd_cfg_img = type { %struct.kvaser_pciefd_cfg_param* }
%struct.kvaser_pciefd_cfg_param = type { i32, i32 }

@KVASER_PCIEFD_CFG_PARAM_NR_CHAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd*, %struct.kvaser_pciefd_cfg_img*)* @kvaser_pciefd_cfg_read_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_cfg_read_params(%struct.kvaser_pciefd* %0, %struct.kvaser_pciefd_cfg_img* %1) #0 {
  %3 = alloca %struct.kvaser_pciefd*, align 8
  %4 = alloca %struct.kvaser_pciefd_cfg_img*, align 8
  %5 = alloca %struct.kvaser_pciefd_cfg_param*, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %3, align 8
  store %struct.kvaser_pciefd_cfg_img* %1, %struct.kvaser_pciefd_cfg_img** %4, align 8
  %6 = load %struct.kvaser_pciefd_cfg_img*, %struct.kvaser_pciefd_cfg_img** %4, align 8
  %7 = getelementptr inbounds %struct.kvaser_pciefd_cfg_img, %struct.kvaser_pciefd_cfg_img* %6, i32 0, i32 0
  %8 = load %struct.kvaser_pciefd_cfg_param*, %struct.kvaser_pciefd_cfg_param** %7, align 8
  %9 = load i64, i64* @KVASER_PCIEFD_CFG_PARAM_NR_CHAN, align 8
  %10 = getelementptr inbounds %struct.kvaser_pciefd_cfg_param, %struct.kvaser_pciefd_cfg_param* %8, i64 %9
  store %struct.kvaser_pciefd_cfg_param* %10, %struct.kvaser_pciefd_cfg_param** %5, align 8
  %11 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %12 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %11, i32 0, i32 0
  %13 = load %struct.kvaser_pciefd_cfg_param*, %struct.kvaser_pciefd_cfg_param** %5, align 8
  %14 = getelementptr inbounds %struct.kvaser_pciefd_cfg_param, %struct.kvaser_pciefd_cfg_param* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvaser_pciefd_cfg_param*, %struct.kvaser_pciefd_cfg_param** %5, align 8
  %17 = getelementptr inbounds %struct.kvaser_pciefd_cfg_param, %struct.kvaser_pciefd_cfg_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = call i32 @memcpy(i32* %12, i32 %15, i32 %19)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
