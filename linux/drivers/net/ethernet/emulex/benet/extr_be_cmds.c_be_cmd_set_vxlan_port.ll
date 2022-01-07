; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_vxlan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_vxlan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_port_res_desc = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PORT_RESOURCE_DESC_TYPE_V1 = common dso_local global i32 0, align 4
@RESOURCE_DESC_SIZE_V1 = common dso_local global i32 0, align 4
@IMM_SHIFT = common dso_local global i32 0, align 4
@NOSV_SHIFT = common dso_local global i32 0, align 4
@NV_TYPE_VXLAN = common dso_local global i32 0, align 4
@SOCVID_SHIFT = common dso_local global i32 0, align 4
@RCVID_SHIFT = common dso_local global i32 0, align 4
@NV_TYPE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_vxlan_port(%struct.be_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.be_port_res_desc, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @memset(%struct.be_port_res_desc* %5, i32 0, i32 32)
  %7 = load i32, i32* @PORT_RESOURCE_DESC_TYPE_V1, align 4
  %8 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @RESOURCE_DESC_SIZE_V1, align 4
  %11 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IMM_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @NOSV_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i32, i32* @NV_TYPE_VXLAN, align 4
  %27 = load i32, i32* @SOCVID_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @RCVID_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @swab16(i64 %34)
  %36 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  br label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @NV_TYPE_DISABLED, align 4
  %39 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %5, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %25
  %42 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %43 = load i32, i32* @RESOURCE_DESC_SIZE_V1, align 4
  %44 = call i32 @be_cmd_set_profile_config(%struct.be_adapter* %42, %struct.be_port_res_desc* %5, i32 %43, i32 1, i32 1, i32 0)
  ret i32 %44
}

declare dso_local i32 @memset(%struct.be_port_res_desc*, i32, i32) #1

declare dso_local i64 @swab16(i64) #1

declare dso_local i32 @be_cmd_set_profile_config(%struct.be_adapter*, %struct.be_port_res_desc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
