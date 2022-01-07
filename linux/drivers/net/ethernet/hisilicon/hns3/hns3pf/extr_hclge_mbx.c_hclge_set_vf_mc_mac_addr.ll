; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_set_vf_mc_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_set_vf_mc_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32* }

@HCLGE_MBX_MAC_VLAN_MC_ADD = common dso_local global i32 0, align 4
@HCLGE_MAC_ADDR_MC = common dso_local global i32 0, align 4
@HCLGE_MBX_MAC_VLAN_MC_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to set mcast mac addr, unknown subcode %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32)* @hclge_set_vf_mc_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vf_mc_mac_addr(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %5, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32* %16, i32** %8, align 8
  %17 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %18 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %17, i32 0, i32 0
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %18, align 8
  store %struct.hclge_dev* %19, %struct.hclge_dev** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HCLGE_MBX_MAC_VLAN_MC_ADD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @hclge_add_mc_addr_common(%struct.hclge_vport* %28, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @HCLGE_MAC_ADDR_MC, align 4
  %37 = call i32 @hclge_add_vport_mac_table(%struct.hclge_vport* %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %27
  br label %73

39:                                               ; preds = %3
  %40 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HCLGE_MBX_MAC_VLAN_MC_REMOVE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @hclge_rm_mc_addr_common(%struct.hclge_vport* %48, i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @HCLGE_MAC_ADDR_MC, align 4
  %57 = call i32 @hclge_rm_vport_mac_table(%struct.hclge_vport* %54, i32* %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %72

59:                                               ; preds = %39
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %83

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %78 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %77, %struct.hclge_mbx_vf_to_pf_cmd* %78, i32 %79, i32* %11, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @hclge_add_mc_addr_common(%struct.hclge_vport*, i32*) #1

declare dso_local i32 @hclge_add_vport_mac_table(%struct.hclge_vport*, i32*, i32) #1

declare dso_local i32 @hclge_rm_mc_addr_common(%struct.hclge_vport*, i32*) #1

declare dso_local i32 @hclge_rm_vport_mac_table(%struct.hclge_vport*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_gen_resp_to_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
