; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_filters_validate_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_filters_validate_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.vfpf_set_q_filters_tlv = type { i32, %struct.vfpf_q_mac_vlan_filter* }
%struct.vfpf_q_mac_vlan_filter = type { i32, i32 }
%struct.pf_vf_bulletin_content = type { i32, i32 }

@MAC_ADDR_VALID = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_DEST_MAC_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"VF[%d] requested the addition of multiple macs after set_vf_mac ndo was called [%d filters]\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"VF[%d] requested the addition of a mac address not matching the one configured by set_vf_mac ndo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*)* @bnx2x_filters_validate_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_filters_validate_mac(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.vfpf_set_q_filters_tlv* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %7 = alloca %struct.pf_vf_bulletin_content*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_q_mac_vlan_filter*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.vfpf_set_q_filters_tlv* %2, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %11, i32 %14)
  store %struct.pf_vf_bulletin_content* %15, %struct.pf_vf_bulletin_content** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %17 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAC_ADDR_VALID, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %3
  store %struct.vfpf_q_mac_vlan_filter* null, %struct.vfpf_q_mac_vlan_filter** %9, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %27 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %32 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %31, i32 0, i32 1
  %33 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %33, i64 %35
  %37 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VFPF_Q_FILTER_DEST_MAC_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %63

43:                                               ; preds = %30
  %44 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %9, align 8
  %45 = icmp ne %struct.vfpf_q_mac_vlan_filter* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %48 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %51 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %87

56:                                               ; preds = %43
  %57 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %58 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %57, i32 0, i32 1
  %59 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %59, i64 %61
  store %struct.vfpf_q_mac_vlan_filter* %62, %struct.vfpf_q_mac_vlan_filter** %9, align 8
  br label %63

63:                                               ; preds = %56, %42
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %24

66:                                               ; preds = %24
  %67 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %9, align 8
  %68 = icmp ne %struct.vfpf_q_mac_vlan_filter* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %9, align 8
  %71 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %7, align 8
  %74 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ether_addr_equal(i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %87

85:                                               ; preds = %69, %66
  br label %86

86:                                               ; preds = %85, %3
  br label %87

87:                                               ; preds = %86, %78, %46
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, ...) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
