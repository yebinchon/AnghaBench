; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_check_vf_permission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_check_vf_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, %struct.TYPE_5__, i64, i32, %struct.i40e_pf* }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_pf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.virtchnl_ether_addr_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@I40E_VIRTCHNL_VF_CAP_PRIVILEGE = common dso_local global i32 0, align 4
@I40E_VC_MAX_MAC_ADDR_PER_VF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [102 x i8] c"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid VF MAC addr %pM\0A\00", align 1
@I40E_ERR_INVALID_MAC_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [123 x i8] c"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, %struct.virtchnl_ether_addr_list*)* @i40e_check_vf_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_check_vf_permission(%struct.i40e_vf* %0, %struct.virtchnl_ether_addr_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca %struct.virtchnl_ether_addr_list*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store %struct.virtchnl_ether_addr_list* %1, %struct.virtchnl_ether_addr_list** %5, align 8
  %9 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %9, i32 0, i32 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %6, align 8
  %12 = load i32, i32* @I40E_VIRTCHNL_VF_CAP_PRIVILEGE, align 4
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 3
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %2
  %18 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %22 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = load i64, i64* @I40E_VC_MAX_MAC_ADDR_PER_VF, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %103

36:                                               ; preds = %17, %2
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %99, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %40 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %102

43:                                               ; preds = %37
  %44 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %45 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @is_broadcast_ether_addr(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %43
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @is_zero_ether_addr(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %43
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %64)
  %66 = load i32, i32* @I40E_ERR_INVALID_MAC_ADDR, align 4
  store i32 %66, i32* %3, align 4
  br label %103

67:                                               ; preds = %55
  %68 = load i32, i32* @I40E_VIRTCHNL_VF_CAP_PRIVILEGE, align 4
  %69 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %70 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %69, i32 0, i32 3
  %71 = call i32 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @is_multicast_ether_addr(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %73
  %78 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %85 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ether_addr_equal(i32* %83, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @EPERM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %103

98:                                               ; preds = %82, %77, %73, %67
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %37

102:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %90, %59, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
