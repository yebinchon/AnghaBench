; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_term_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_term_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@ROCKER_TLV_OF_DPA_IN_PPORT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IN_PPORT_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_ETHERTYPE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_DST_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_DST_MAC_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_VLAN_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_VLAN_ID_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GOTO_TABLE_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_COPY_CPU_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*)* @ofdpa_cmd_flow_tbl_add_term_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_flow_tbl_add_term_mac(%struct.rocker_desc_info* %0, %struct.ofdpa_flow_tbl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_desc_info*, align 8
  %5 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %4, align 8
  store %struct.ofdpa_flow_tbl_entry* %1, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %6 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %7 = load i32, i32* @ROCKER_TLV_OF_DPA_IN_PPORT, align 4
  %8 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %9 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %6, i32 %7, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %132

18:                                               ; preds = %2
  %19 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %20 = load i32, i32* @ROCKER_TLV_OF_DPA_IN_PPORT_MASK, align 4
  %21 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %19, i32 %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %132

31:                                               ; preds = %18
  %32 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %33 = load i32, i32* @ROCKER_TLV_OF_DPA_ETHERTYPE, align 4
  %34 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %32, i32 %33, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %132

44:                                               ; preds = %31
  %45 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %46 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %49 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %45, i32 %46, i32 %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EMSGSIZE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %132

58:                                               ; preds = %44
  %59 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %60 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC_MASK, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %63 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %59, i32 %60, i32 %61, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %132

72:                                               ; preds = %58
  %73 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %74 = load i32, i32* @ROCKER_TLV_OF_DPA_VLAN_ID, align 4
  %75 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %76 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %73, i32 %74, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @EMSGSIZE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %132

85:                                               ; preds = %72
  %86 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %87 = load i32, i32* @ROCKER_TLV_OF_DPA_VLAN_ID_MASK, align 4
  %88 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %89 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %86, i32 %87, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @EMSGSIZE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %132

98:                                               ; preds = %85
  %99 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %100 = load i32, i32* @ROCKER_TLV_OF_DPA_GOTO_TABLE_ID, align 4
  %101 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %102 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %99, i32 %100, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* @EMSGSIZE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %132

111:                                              ; preds = %98
  %112 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %113 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %120 = load i32, i32* @ROCKER_TLV_OF_DPA_COPY_CPU_ACTION, align 4
  %121 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %122 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @rocker_tlv_put_u8(%struct.rocker_desc_info* %119, i32 %120, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i32, i32* @EMSGSIZE, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %118, %111
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %128, %108, %95, %82, %69, %55, %41, %28, %15
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_be16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put(%struct.rocker_desc_info*, i32, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u8(%struct.rocker_desc_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
