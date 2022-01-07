; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MAC address is already in use by the PF\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"MAC address is already in use by VF %d\0A\00", align 1
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [110 x i8] c"MAC address change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"MAC Address %pM  is configured for VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_sriov*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qlcnic_vf_info*, align 8
  %13 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %19, align 8
  store %struct.qlcnic_sriov* %20, %struct.qlcnic_sriov** %9, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %22 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %117

27:                                               ; preds = %3
  %28 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %29 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @is_valid_ether_addr(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @ether_addr_equal(i32* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %117

53:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %60 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %59, i32 0, i32 1
  %61 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %61, i64 %63
  store %struct.qlcnic_vf_info* %64, %struct.qlcnic_vf_info** %12, align 8
  %65 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %66 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i64 @ether_addr_equal(i32* %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %117

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %54

83:                                               ; preds = %54
  %84 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %85 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %84, i32 0, i32 1
  %86 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %86, i64 %88
  store %struct.qlcnic_vf_info* %89, %struct.qlcnic_vf_info** %12, align 8
  %90 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %91 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %13, align 8
  %95 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %96 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %97 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %96, i32 0, i32 0
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %101, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %117

106:                                              ; preds = %83
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i32* %107, i32* %108, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @netdev_info(%struct.net_device* %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32* %114, i32 %115)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %106, %100, %73, %48, %38, %24
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
