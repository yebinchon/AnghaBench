; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__*, %struct.be_vf_cfg* }
%struct.TYPE_2__ = type { i32 }
%struct.be_vf_cfg = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"VLAN %d config on VF %d failed : %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i64)* @be_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.be_adapter*, align 8
  %13 = alloca %struct.be_vf_cfg*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.be_adapter* %16, %struct.be_adapter** %12, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 2
  %19 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %19, i64 %21
  store %struct.be_vf_cfg* %22, %struct.be_vf_cfg** %13, align 8
  %23 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  %24 = call i32 @sriov_enabled(%struct.be_adapter* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %90

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 4095
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 7
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %35, %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %90

44:                                               ; preds = %38
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @ETH_P_8021Q, align 4
  %47 = call i64 @htons(i32 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EPROTONOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %90

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @be_set_vf_tvt(%struct.be_adapter* %64, i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  br label %72

68:                                               ; preds = %55
  %69 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @be_clear_vf_tvt(%struct.be_adapter* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  %77 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @be_cmd_status(i32 %84)
  store i32 %85, i32* %6, align 4
  br label %90

86:                                               ; preds = %72
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %13, align 8
  %89 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %75, %49, %41, %26
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @be_set_vf_tvt(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @be_clear_vf_tvt(%struct.be_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
