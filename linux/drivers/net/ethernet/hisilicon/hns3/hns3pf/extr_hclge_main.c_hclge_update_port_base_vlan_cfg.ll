; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_port_base_vlan_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_port_base_vlan_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_2__, i32, %struct.hclge_dev*, %struct.hnae3_handle }
%struct.TYPE_2__ = type { %struct.hclge_vlan_info, i64 }
%struct.hclge_vlan_info = type { i32, i32, i32 }
%struct.hclge_dev = type { i32 }
%struct.hnae3_handle = type { i64 }

@HNAE3_PORT_BASE_VLAN_MODIFY = common dso_local global i64 0, align 8
@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i64 0, align 8
@HNAE3_PORT_BASE_VLAN_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_update_port_base_vlan_cfg(%struct.hclge_vport* %0, i64 %1, %struct.hclge_vlan_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hclge_vlan_info*, align 8
  %8 = alloca %struct.hnae3_handle*, align 8
  %9 = alloca %struct.hclge_vlan_info*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hclge_vlan_info* %2, %struct.hclge_vlan_info** %7, align 8
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 3
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %8, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 2
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %10, align 8
  %17 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %18 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.hclge_vlan_info* %19, %struct.hclge_vlan_info** %9, align 8
  %20 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %23 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hclge_vlan_offload_cfg(%struct.hclge_vport* %20, i64 %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %118

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HNAE3_PORT_BASE_VLAN_MODIFY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %36 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %37 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htons(i32 %38)
  %40 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %41 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %44 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hclge_set_vlan_filter_hw(%struct.hclge_dev* %35, i32 %39, i32 %42, i32 %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %118

51:                                               ; preds = %34
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %53 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %9, align 8
  %54 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @htons(i32 %55)
  %57 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %58 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %9, align 8
  %61 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @hclge_set_vlan_filter_hw(%struct.hclge_dev* %52, i32 %56, i32 %59, i32 %62, i32 1)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %118

68:                                               ; preds = %51
  br label %96

69:                                               ; preds = %30
  %70 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %73 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %9, align 8
  %74 = call i32 @hclge_update_vlan_filter_entries(%struct.hclge_vport* %70, i64 %71, %struct.hclge_vlan_info* %72, %struct.hclge_vlan_info* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %118

79:                                               ; preds = %69
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %82 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %89 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %90 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %95

91:                                               ; preds = %79
  %92 = load i64, i64* @HNAE3_PORT_BASE_VLAN_ENABLE, align 8
  %93 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %94 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %98 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %101 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 8
  %104 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %105 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %108 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %7, align 8
  %112 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %115 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %96, %77, %66, %49, %28
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @hclge_vlan_offload_cfg(%struct.hclge_vport*, i64, i32) #1

declare dso_local i32 @hclge_set_vlan_filter_hw(%struct.hclge_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @hclge_update_vlan_filter_entries(%struct.hclge_vport*, i64, %struct.hclge_vlan_info*, %struct.hclge_vlan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
