; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_clear_vf_tvt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_clear_vf_tvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, %struct.be_vf_cfg* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_vf_cfg = type { i32, i32 }

@BE_RESET_VLAN_TAG_ID = common dso_local global i32 0, align 4
@BE_PRIV_FILTMGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"VF%d: FILTMGMT priv enabled\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Disable/re-enable i/f in VM to clear Transparent VLAN tag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32)* @be_clear_vf_tvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_clear_vf_tvt(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_vf_cfg*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 1
  %11 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %11, i64 %13
  store %struct.be_vf_cfg* %14, %struct.be_vf_cfg** %6, align 8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %20 = load i32, i32* @BE_RESET_VLAN_TAG_ID, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be_cmd_set_hsw_config(%struct.be_adapter* %19, i32 %20, i32 %22, i32 %25, i32 0, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %2
  %32 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %6, align 8
  %33 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %31
  %39 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %40 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @be_cmd_set_fn_privileges(%struct.be_adapter* %39, i32 %44, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %52 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %6, align 8
  %53 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %50, %38
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @be_cmd_set_hsw_config(%struct.be_adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be_cmd_set_fn_privileges(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
