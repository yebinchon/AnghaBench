; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_vf_vlan_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_vf_vlan_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_acl_vlan_cmd = type { i32*, i32, i32 }

@FW_ACL_VLAN_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_vf_vlan_acl(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.fw_acl_vlan_cmd, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @FW_ACL_VLAN_CMD, align 4
  %7 = call i32 @FW_CMD_OP_V(i32 %6)
  %8 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FW_CMD_READ_F, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @htonl(i32 %11)
  %13 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = bitcast %struct.fw_acl_vlan_cmd* %3 to { i32*, i64 }*
  %15 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @FW_LEN16(i32* %16, i64 %18)
  %20 = trunc i64 %19 to i32
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call i32 @t4vf_wr_mbox(%struct.adapter* %23, %struct.fw_acl_vlan_cmd* %3, i32 16, %struct.fw_acl_vlan_cmd* %3)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %3, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be16_to_cpu(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %1
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @FW_LEN16(i32*, i64) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_acl_vlan_cmd*, i32, %struct.fw_acl_vlan_cmd*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
