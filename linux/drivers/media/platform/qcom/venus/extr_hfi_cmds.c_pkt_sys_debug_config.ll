; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_debug_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_debug_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_sys_set_property_pkt = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hfi_debug_config = type { i8*, i8* }

@HFI_CMD_SYS_SET_PROPERTY = common dso_local global i32 0, align 4
@HFI_PROPERTY_SYS_DEBUG_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkt_sys_debug_config(%struct.hfi_sys_set_property_pkt* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hfi_sys_set_property_pkt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_debug_config*, align 8
  store %struct.hfi_sys_set_property_pkt* %0, %struct.hfi_sys_set_property_pkt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %4, align 8
  %9 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 48, i32* %10, align 8
  %11 = load i32, i32* @HFI_CMD_SYS_SET_PROPERTY, align 4
  %12 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %4, align 8
  %13 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %4, align 8
  %16 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @HFI_PROPERTY_SYS_DEBUG_CONFIG, align 4
  %18 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %4, align 8
  %19 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %4, align 8
  %23 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = bitcast i32* %25 to %struct.hfi_debug_config*
  store %struct.hfi_debug_config* %26, %struct.hfi_debug_config** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.hfi_debug_config*, %struct.hfi_debug_config** %7, align 8
  %29 = getelementptr inbounds %struct.hfi_debug_config, %struct.hfi_debug_config* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.hfi_debug_config*, %struct.hfi_debug_config** %7, align 8
  %32 = getelementptr inbounds %struct.hfi_debug_config, %struct.hfi_debug_config* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
