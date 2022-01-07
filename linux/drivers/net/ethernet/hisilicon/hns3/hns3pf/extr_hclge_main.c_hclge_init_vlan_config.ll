; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_vlan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.hclge_vport*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.hclge_vport = type { %struct.TYPE_8__, i32, %struct.hnae3_handle }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.hnae3_handle = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@HCLGE_FILTER_TYPE_VF = common dso_local global i32 0, align 4
@HCLGE_FILTER_FE_EGRESS = common dso_local global i32 0, align 4
@HCLGE_FILTER_TYPE_PORT = common dso_local global i32 0, align 4
@HCLGE_FILTER_FE_INGRESS = common dso_local global i32 0, align 4
@HCLGE_FILTER_FE_EGRESS_V1_B = common dso_local global i32 0, align 4
@HNAE3_VLAN_FLTR = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@HCLGE_DEF_VLAN_TYPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_init_vlan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_vlan_config(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 1
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i64 0
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 2
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %4, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 33
  br i1 %19, label %20, label %59

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 1
  %30 = load %struct.hclge_vport*, %struct.hclge_vport** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %30, i64 %32
  store %struct.hclge_vport* %33, %struct.hclge_vport** %5, align 8
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = load i32, i32* @HCLGE_FILTER_TYPE_VF, align 4
  %36 = load i32, i32* @HCLGE_FILTER_FE_EGRESS, align 4
  %37 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %38 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %34, i32 %35, i32 %36, i32 1, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %138

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %51 = load i32, i32* @HCLGE_FILTER_TYPE_PORT, align 4
  %52 = load i32, i32* @HCLGE_FILTER_FE_INGRESS, align 4
  %53 = call i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %50, i32 %51, i32 %52, i32 1, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %138

58:                                               ; preds = %49
  br label %69

59:                                               ; preds = %1
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %61 = load i32, i32* @HCLGE_FILTER_TYPE_VF, align 4
  %62 = load i32, i32* @HCLGE_FILTER_FE_EGRESS_V1_B, align 4
  %63 = call i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %60, i32 %61, i32 %62, i32 1, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %138

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32, i32* @HNAE3_VLAN_FLTR, align 4
  %71 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %72 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  store i8* inttoptr (i64 33024 to i8*), i8** %77, align 8
  %78 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  store i8* inttoptr (i64 33024 to i8*), i8** %80, align 8
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i8* inttoptr (i64 33024 to i8*), i8** %83, align 8
  %84 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %85 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i8* inttoptr (i64 33024 to i8*), i8** %86, align 8
  %87 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %88 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i8* inttoptr (i64 33024 to i8*), i8** %89, align 8
  %90 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* inttoptr (i64 33024 to i8*), i8** %92, align 8
  %93 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %94 = call i32 @hclge_set_vlan_protocol_type(%struct.hclge_dev* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %69
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %138

99:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %130, %99
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %103 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %100
  %107 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %108 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %107, i32 0, i32 1
  %109 = load %struct.hclge_vport*, %struct.hclge_vport** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %109, i64 %111
  store %struct.hclge_vport* %112, %struct.hclge_vport** %5, align 8
  %113 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %114 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %8, align 4
  %118 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %119 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %120 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @hclge_vlan_offload_cfg(%struct.hclge_vport* %118, i32 %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %106
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %106
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %100

133:                                              ; preds = %100
  %134 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %135 = load i32, i32* @ETH_P_8021Q, align 4
  %136 = call i32 @htons(i32 %135)
  %137 = call i32 @hclge_set_vlan_filter(%struct.hnae3_handle* %134, i32 %136, i32 0, i32 0)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %127, %97, %66, %56, %43
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @hclge_set_vlan_protocol_type(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_vlan_offload_cfg(%struct.hclge_vport*, i32, i32) #1

declare dso_local i32 @hclge_set_vlan_filter(%struct.hnae3_handle*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
