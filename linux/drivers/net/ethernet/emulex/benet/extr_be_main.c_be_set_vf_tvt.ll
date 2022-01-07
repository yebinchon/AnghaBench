; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_tvt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_tvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, %struct.be_vf_cfg* }
%struct.TYPE_2__ = type { i32 }
%struct.be_vf_cfg = type { i32, i32 }

@BE_NUM_VLANS_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cleared guest VLANs on VF%d\00", align 1
@BE_PRIV_FILTMGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32, i64)* @be_set_vf_tvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_tvt(%struct.be_adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.be_vf_cfg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 1
  %16 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %16, i64 %18
  store %struct.be_vf_cfg* %19, %struct.be_vf_cfg** %8, align 8
  %20 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %8, align 8
  %25 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @be_cmd_set_hsw_config(%struct.be_adapter* %27, i64 %28, i32 %30, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %82

37:                                               ; preds = %3
  %38 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %38, align 16
  %39 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @be_cmd_vlan_config(%struct.be_adapter* %39, i32 %40, i64* %23, i32 1, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %62 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %8, align 8
  %63 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @be_cmd_set_fn_privileges(%struct.be_adapter* %61, i32 %67, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %8, align 8
  %77 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %60
  br label %81

81:                                               ; preds = %80, %53
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %35
  %83 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_cmd_set_hsw_config(%struct.be_adapter*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @be_cmd_vlan_config(%struct.be_adapter*, i32, i64*, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i32 @be_cmd_set_fn_privileges(%struct.be_adapter*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
