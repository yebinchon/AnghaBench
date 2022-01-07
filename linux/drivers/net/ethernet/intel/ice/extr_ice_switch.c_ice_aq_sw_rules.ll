; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_sw_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_sw_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ice_aqc_opc_add_sw_rules = common dso_local global i32 0, align 4
@ice_aqc_opc_update_sw_rules = common dso_local global i32 0, align 4
@ice_aqc_opc_remove_sw_rules = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i8*, i32, i32, i32, %struct.ice_sq_cd*)* @ice_aq_sw_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_sw_rules(%struct.ice_hw* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.ice_sq_cd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_sq_cd*, align 8
  %14 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ice_sq_cd* %5, %struct.ice_sq_cd** %13, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @ice_aqc_opc_add_sw_rules, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @ice_aqc_opc_update_sw_rules, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ice_aqc_opc_remove_sw_rules, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %22, %18, %6
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %14, i32 %29)
  %31 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %14, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %14, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %13, align 8
  %45 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %41, %struct.ice_aq_desc* %14, i8* %42, i32 %43, %struct.ice_sq_cd* %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %28, %26
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
