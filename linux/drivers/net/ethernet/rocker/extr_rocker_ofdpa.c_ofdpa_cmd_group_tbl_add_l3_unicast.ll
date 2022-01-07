; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_add_l3_unicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_add_l3_unicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_group_tbl_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@ROCKER_TLV_OF_DPA_SRC_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_DST_MAC = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_VLAN_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_TTL_CHECK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GROUP_ID_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*, %struct.ofdpa_group_tbl_entry*)* @ofdpa_cmd_group_tbl_add_l3_unicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_group_tbl_add_l3_unicast(%struct.rocker_desc_info* %0, %struct.ofdpa_group_tbl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_desc_info*, align 8
  %5 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %4, align 8
  store %struct.ofdpa_group_tbl_entry* %1, %struct.ofdpa_group_tbl_entry** %5, align 8
  %6 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %7 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_zero_ether_addr(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %14 = load i32, i32* @ROCKER_TLV_OF_DPA_SRC_MAC, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %13, i32 %14, i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %12, %2
  %26 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @is_zero_ether_addr(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %34 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %33, i32 %34, i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %88

45:                                               ; preds = %32, %25
  %46 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %47 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %53 = load i32, i32* @ROCKER_TLV_OF_DPA_VLAN_ID, align 4
  %54 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %55 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %52, i32 %53, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EMSGSIZE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %88

63:                                               ; preds = %51, %45
  %64 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %65 = load i32, i32* @ROCKER_TLV_OF_DPA_TTL_CHECK, align 4
  %66 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %67 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @rocker_tlv_put_u8(%struct.rocker_desc_info* %64, i32 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EMSGSIZE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %88

75:                                               ; preds = %63
  %76 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %77 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_ID_LOWER, align 4
  %78 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %79 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %76, i32 %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %72, %60, %42, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @rocker_tlv_put(%struct.rocker_desc_info*, i32, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_be16(%struct.rocker_desc_info*, i32, i64) #1

declare dso_local i64 @rocker_tlv_put_u8(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
