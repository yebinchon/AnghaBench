; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_pf_get_tc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_pf_get_tc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@I40E_FLAG_TC_MQPRIO = common dso_local global i32 0, align 4
@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@I40E_DEFAULT_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_pf_get_tc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_pf_get_tc_map(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %5 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = call i32 @i40e_mqprio_get_enabled_tc(%struct.i40e_pf* %11)
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @I40E_DEFAULT_TRAFFIC_CLASS, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %13
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @i40e_dcb_get_enabled_tc(i32* %32)
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %22
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %43 = call i32 @i40e_get_iscsi_tc_map(%struct.i40e_pf* %42)
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @I40E_DEFAULT_TRAFFIC_CLASS, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %41, %29, %20, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @i40e_mqprio_get_enabled_tc(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_dcb_get_enabled_tc(i32*) #1

declare dso_local i32 @i40e_get_iscsi_tc_map(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
