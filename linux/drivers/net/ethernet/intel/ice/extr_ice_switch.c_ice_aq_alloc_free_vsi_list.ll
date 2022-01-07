; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_alloc_free_vsi_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_alloc_free_vsi_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_alloc_free_res_elem = type { %struct.ice_aqc_res_elem*, i8*, i8* }
%struct.ice_aqc_res_elem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_SW_LKUP_MAC = common dso_local global i32 0, align 4
@ICE_SW_LKUP_MAC_VLAN = common dso_local global i32 0, align 4
@ICE_SW_LKUP_ETHERTYPE = common dso_local global i32 0, align 4
@ICE_SW_LKUP_ETHERTYPE_MAC = common dso_local global i32 0, align 4
@ICE_SW_LKUP_PROMISC = common dso_local global i32 0, align 4
@ICE_SW_LKUP_PROMISC_VLAN = common dso_local global i32 0, align 4
@ICE_AQC_RES_TYPE_VSI_LIST_REP = common dso_local global i32 0, align 4
@ICE_SW_LKUP_VLAN = common dso_local global i32 0, align 4
@ICE_AQC_RES_TYPE_VSI_LIST_PRUNE = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_free_res = common dso_local global i32 0, align 4
@ice_aqc_opc_alloc_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32*, i32, i32)* @ice_aq_alloc_free_vsi_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_alloc_free_vsi_list(%struct.ice_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_aqc_alloc_free_res_elem*, align 8
  %11 = alloca %struct.ice_aqc_res_elem*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 24, i32* %13, align 4
  %14 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %15 = call i32 @ice_hw_to_dev(%struct.ice_hw* %14)
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ice_aqc_alloc_free_res_elem* @devm_kzalloc(i32 %15, i32 %16, i32 %17)
  store %struct.ice_aqc_alloc_free_res_elem* %18, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %19 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %20 = icmp ne %struct.ice_aqc_alloc_free_res_elem* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %22, i32* %5, align 4
  br label %112

23:                                               ; preds = %4
  %24 = call i8* @cpu_to_le16(i32 1)
  %25 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %26 = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, %struct.ice_aqc_alloc_free_res_elem* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ICE_SW_LKUP_MAC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ICE_SW_LKUP_MAC_VLAN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ICE_SW_LKUP_ETHERTYPE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ICE_SW_LKUP_ETHERTYPE_MAC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ICE_SW_LKUP_PROMISC, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ICE_SW_LKUP_PROMISC_VLAN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %42, %38, %34, %30, %23
  %51 = load i32, i32* @ICE_AQC_RES_TYPE_VSI_LIST_REP, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %54 = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, %struct.ice_aqc_alloc_free_res_elem* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %67

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @ICE_AQC_RES_TYPE_VSI_LIST_PRUNE, align 4
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %63 = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, %struct.ice_aqc_alloc_free_res_elem* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %65, i32* %12, align 4
  br label %106

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ice_aqc_opc_free_res, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %76 = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, %struct.ice_aqc_alloc_free_res_elem* %75, i32 0, i32 0
  %77 = load %struct.ice_aqc_res_elem*, %struct.ice_aqc_res_elem** %76, align 8
  %78 = getelementptr inbounds %struct.ice_aqc_res_elem, %struct.ice_aqc_res_elem* %77, i64 0
  %79 = getelementptr inbounds %struct.ice_aqc_res_elem, %struct.ice_aqc_res_elem* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* %74, i8** %80, align 8
  br label %81

81:                                               ; preds = %71, %67
  %82 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %83 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ice_aq_alloc_free_res(%struct.ice_hw* %82, i32 1, %struct.ice_aqc_alloc_free_res_elem* %83, i32 %84, i32 %85, i32* null)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %106

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ice_aqc_opc_alloc_res, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %96 = getelementptr inbounds %struct.ice_aqc_alloc_free_res_elem, %struct.ice_aqc_alloc_free_res_elem* %95, i32 0, i32 0
  %97 = load %struct.ice_aqc_res_elem*, %struct.ice_aqc_res_elem** %96, align 8
  %98 = getelementptr inbounds %struct.ice_aqc_res_elem, %struct.ice_aqc_res_elem* %97, i64 0
  store %struct.ice_aqc_res_elem* %98, %struct.ice_aqc_res_elem** %11, align 8
  %99 = load %struct.ice_aqc_res_elem*, %struct.ice_aqc_res_elem** %11, align 8
  %100 = getelementptr inbounds %struct.ice_aqc_res_elem, %struct.ice_aqc_res_elem* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @le16_to_cpu(i8* %102)
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %94, %90
  br label %106

106:                                              ; preds = %105, %89, %64
  %107 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %108 = call i32 @ice_hw_to_dev(%struct.ice_hw* %107)
  %109 = load %struct.ice_aqc_alloc_free_res_elem*, %struct.ice_aqc_alloc_free_res_elem** %10, align 8
  %110 = call i32 @devm_kfree(i32 %108, %struct.ice_aqc_alloc_free_res_elem* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %21
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.ice_aqc_alloc_free_res_elem* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_alloc_free_res(%struct.ice_hw*, i32, %struct.ice_aqc_alloc_free_res_elem*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_alloc_free_res_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
