; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_q_qs_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_q_qs_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, i64, %struct.hclge_vport* }
%struct.hclge_vport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i64 }

@HCLGE_FLAG_TC_BASE_SCH_MODE = common dso_local global i64 0, align 8
@HCLGE_FLAG_VNET_BASE_SCH_MODE = common dso_local global i64 0, align 8
@HNAE3_MAX_TC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_pri_q_qs_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_q_qs_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hnae3_knic_private_info*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 2
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  store %struct.hclge_vport* %11, %struct.hclge_vport** %4, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HCLGE_FLAG_TC_BASE_SCH_MODE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %25, i64 %26
  %28 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %29, %struct.hnae3_knic_private_info** %8, align 8
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %52, %24
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %8, align 8
  %33 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %38 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %38, i64 %39
  %41 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @hclge_tm_qs_to_pri_map_cfg(%struct.hclge_dev* %37, i64 %44, i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %128

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %30

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %18

59:                                               ; preds = %18
  br label %106

60:                                               ; preds = %1
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HCLGE_FLAG_VNET_BASE_SCH_MODE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %60
  store i64 0, i64* %7, align 8
  br label %67

67:                                               ; preds = %98, %66
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %67
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @HNAE3_MAX_TC, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %80 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %80, i64 %81
  %83 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @hclge_tm_qs_to_pri_map_cfg(%struct.hclge_dev* %79, i64 %86, i64 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %128

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %6, align 8
  br label %74

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %67

101:                                              ; preds = %67
  br label %105

102:                                              ; preds = %60
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %128

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %59
  store i64 0, i64* %6, align 8
  br label %107

107:                                              ; preds = %124, %106
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %110 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %115 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %116 = call i32 @hclge_vport_q_to_qs_map(%struct.hclge_dev* %114, %struct.hclge_vport* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %128

121:                                              ; preds = %113
  %122 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %123 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %122, i32 1
  store %struct.hclge_vport* %123, %struct.hclge_vport** %4, align 8
  br label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %107

127:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %119, %102, %91, %49
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @hclge_tm_qs_to_pri_map_cfg(%struct.hclge_dev*, i64, i64) #1

declare dso_local i32 @hclge_vport_q_to_qs_map(%struct.hclge_dev*, %struct.hclge_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
