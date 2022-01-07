; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_set_vf_uc_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_set_vf_uc_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32, i32* }

@HCLGE_MBX_MAC_VLAN_UC_MODIFY = common dso_local global i32 0, align 4
@HCLGE_MAC_ADDR_UC = common dso_local global i32 0, align 4
@HCLGE_MBX_MAC_VLAN_UC_ADD = common dso_local global i32 0, align 4
@HCLGE_MBX_MAC_VLAN_UC_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to set unicast mac addr, unknown subcode %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HCLGE_MBX_NEED_RESP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*)* @hclge_set_vf_uc_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vf_uc_mac_addr(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %10 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32* %13, i32** %6, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %7, align 8
  %17 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HCLGE_MBX_MAC_VLAN_UC_MODIFY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  store i32* %28, i32** %9, align 8
  %29 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @hclge_rm_uc_addr_common(%struct.hclge_vport* %29, i32* %30)
  %32 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @hclge_add_uc_addr_common(%struct.hclge_vport* %32, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @hclge_add_uc_addr_common(%struct.hclge_vport* %38, i32* %39)
  br label %50

41:                                               ; preds = %24
  %42 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @HCLGE_MAC_ADDR_UC, align 4
  %45 = call i32 @hclge_rm_vport_mac_table(%struct.hclge_vport* %42, i32* %43, i32 0, i32 %44)
  %46 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @HCLGE_MAC_ADDR_UC, align 4
  %49 = call i32 @hclge_add_vport_mac_table(%struct.hclge_vport* %46, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %37
  br label %106

51:                                               ; preds = %2
  %52 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HCLGE_MBX_MAC_VLAN_UC_ADD, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @hclge_add_uc_addr_common(%struct.hclge_vport* %60, i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @HCLGE_MAC_ADDR_UC, align 4
  %69 = call i32 @hclge_add_vport_mac_table(%struct.hclge_vport* %66, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %59
  br label %105

71:                                               ; preds = %51
  %72 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HCLGE_MBX_MAC_VLAN_UC_REMOVE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @hclge_rm_uc_addr_common(%struct.hclge_vport* %80, i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @HCLGE_MAC_ADDR_UC, align 4
  %89 = call i32 @hclge_rm_vport_mac_table(%struct.hclge_vport* %86, i32* %87, i32 0, i32 %88)
  br label %90

90:                                               ; preds = %85, %79
  br label %104

91:                                               ; preds = %71
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %93 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %119

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %50
  %107 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %108 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @HCLGE_MBX_NEED_RESP_BIT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %115 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %114, %struct.hclge_mbx_vf_to_pf_cmd* %115, i32 %116, i32* null, i32 0)
  br label %118

118:                                              ; preds = %113, %106
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %91
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @hclge_rm_uc_addr_common(%struct.hclge_vport*, i32*) #1

declare dso_local i32 @hclge_add_uc_addr_common(%struct.hclge_vport*, i32*) #1

declare dso_local i32 @hclge_rm_vport_mac_table(%struct.hclge_vport*, i32*, i32, i32) #1

declare dso_local i32 @hclge_add_vport_mac_table(%struct.hclge_vport*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_gen_resp_to_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
