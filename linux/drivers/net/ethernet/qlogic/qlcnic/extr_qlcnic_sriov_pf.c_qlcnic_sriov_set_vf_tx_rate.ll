; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32, i32 }
%struct.qlcnic_info = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLC_VF_MIN_TX_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid max Tx rate, allowed range is [%d - %d]\00", align 1
@QLC_VF_MAX_TX_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid min Tx rate, allowed range is [%d - %d]\00", align 1
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Setting Max Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Setting Min Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_set_vf_tx_rate(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_adapter*, align 8
  %11 = alloca %struct.qlcnic_sriov*, align 8
  %12 = alloca %struct.qlcnic_vf_info*, align 8
  %13 = alloca %struct.qlcnic_info, align 4
  %14 = alloca %struct.qlcnic_vport*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.qlcnic_adapter* %17, %struct.qlcnic_adapter** %10, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %21, align 8
  store %struct.qlcnic_sriov* %22, %struct.qlcnic_sriov** %11, align 8
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %24 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %148

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %11, align 8
  %32 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %148

38:                                               ; preds = %29
  %39 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %11, align 8
  %40 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %39, i32 0, i32 1
  %41 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %41, i64 %43
  store %struct.qlcnic_vf_info* %44, %struct.qlcnic_vf_info** %12, align 8
  %45 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %46 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %45, i32 0, i32 1
  %47 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %46, align 8
  store %struct.qlcnic_vport* %47, %struct.qlcnic_vport** %14, align 8
  %48 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %49 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @QLC_VF_MIN_TX_RATE, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %59, 10000
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %58
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @QLC_VF_MAX_TX_RATE, align 4
  %69 = call i32 @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %148

72:                                               ; preds = %61, %55
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 10000, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @QLC_VF_MIN_TX_RATE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %79
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load i32, i32* @QLC_VF_MIN_TX_RATE, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @netdev_err(%struct.net_device* %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %148

94:                                               ; preds = %83, %76
  %95 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %96 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %97 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %96, i32 0, i32 0
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter* %101, %struct.qlcnic_info* %13, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %148

108:                                              ; preds = %100
  %109 = load i32, i32* %9, align 4
  %110 = sdiv i32 %109, 100
  %111 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %13, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sdiv i32 %112, 100
  %114 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %13, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @BIT_0, align 4
  %116 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %13, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i64 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter* %117, %struct.qlcnic_info* %13, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %148

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %94
  %126 = load i32, i32* %9, align 4
  %127 = sdiv i32 %126, 100
  %128 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %129 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %133 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @netdev_info(%struct.net_device* %130, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = sdiv i32 %137, 100
  %139 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %140 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %144 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @netdev_info(%struct.net_device* %141, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %145, i32 %146)
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %125, %121, %105, %87, %65, %35, %26
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
