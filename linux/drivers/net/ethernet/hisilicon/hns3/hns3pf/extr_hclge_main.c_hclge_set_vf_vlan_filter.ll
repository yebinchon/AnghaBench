; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vf_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vf_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { i32, %struct.TYPE_4__, %struct.hclge_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.hclge_dev = type { i32, %struct.hclge_vport*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_vlan_info = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_NOCHANGE = common dso_local global i32 0, align 4
@HNAE3_DOWN_CLIENT = common dso_local global i32 0, align 4
@HNAE3_UP_CLIENT = common dso_local global i32 0, align 4
@HCLGE_VPORT_STATE_ALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32, i32, i64)* @hclge_set_vf_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vf_vlan_filter(%struct.hnae3_handle* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hclge_vport*, align 8
  %13 = alloca %struct.hclge_dev*, align 8
  %14 = alloca %struct.hclge_vlan_info, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %18 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %17)
  store %struct.hclge_vport* %18, %struct.hclge_vport** %12, align 8
  %19 = load %struct.hclge_vport*, %struct.hclge_vport** %12, align 8
  %20 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %19, i32 0, i32 2
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %20, align 8
  store %struct.hclge_dev* %21, %struct.hclge_dev** %13, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %118

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @VLAN_N_VID, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 7
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %37, %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %118

48:                                               ; preds = %42
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* @ETH_P_8021Q, align 4
  %51 = call i64 @htons(i32 %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EPROTONOSUPPORT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %118

56:                                               ; preds = %48
  %57 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  %58 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %57, i32 0, i32 1
  %59 = load %struct.hclge_vport*, %struct.hclge_vport** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %59, i64 %61
  store %struct.hclge_vport* %62, %struct.hclge_vport** %12, align 8
  %63 = load %struct.hclge_vport*, %struct.hclge_vport** %12, align 8
  %64 = load %struct.hclge_vport*, %struct.hclge_vport** %12, align 8
  %65 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @hclge_get_port_base_vlan_state(%struct.hclge_vport* %63, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @HNAE3_PORT_BASE_VLAN_NOCHANGE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %118

74:                                               ; preds = %56
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %14, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %14, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @ntohs(i64 %79)
  %81 = getelementptr inbounds %struct.hclge_vlan_info, %struct.hclge_vlan_info* %14, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %74
  %85 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  %86 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %87 = call i32 @hclge_notify_client(%struct.hclge_dev* %85, i32 %86)
  %88 = load %struct.hclge_vport*, %struct.hclge_vport** %12, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @hclge_update_port_base_vlan_cfg(%struct.hclge_vport* %88, i32 %89, %struct.hclge_vlan_info* %14)
  store i32 %90, i32* %16, align 4
  %91 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  %92 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %93 = call i32 @hclge_notify_client(%struct.hclge_dev* %91, i32 %92)
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %6, align 4
  br label %118

95:                                               ; preds = %74
  %96 = load i32, i32* @HCLGE_VPORT_STATE_ALIVE, align 4
  %97 = load %struct.hclge_vport*, %struct.hclge_vport** %12, align 8
  %98 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %97, i32 0, i32 0
  %99 = call i32 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load %struct.hclge_vport*, %struct.hclge_vport** %12, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @hclge_update_port_base_vlan_cfg(%struct.hclge_vport* %102, i32 %103, %struct.hclge_vlan_info* %14)
  store i32 %104, i32* %6, align 4
  br label %118

105:                                              ; preds = %95
  %106 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  %107 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %106, i32 0, i32 1
  %108 = load %struct.hclge_vport*, %struct.hclge_vport** %107, align 8
  %109 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %108, i64 0
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @ntohs(i64 %114)
  %116 = call i32 @hclge_push_vf_port_base_vlan_info(%struct.hclge_vport* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %105, %101, %84, %73, %53, %45, %28
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @hclge_get_port_base_vlan_state(%struct.hclge_vport*, i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @hclge_notify_client(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_update_port_base_vlan_cfg(%struct.hclge_vport*, i32, %struct.hclge_vlan_info*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_push_vf_port_base_vlan_info(%struct.hclge_vport*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
