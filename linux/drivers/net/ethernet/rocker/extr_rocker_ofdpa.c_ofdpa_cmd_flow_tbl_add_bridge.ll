; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i64, i32, i64, i32, i64 }

@ROCKER_TLV_OF_DPA_DST_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_DST_MAC_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_VLAN_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_TUNNEL_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GOTO_TABLE_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GROUP_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_COPY_CPU_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*)* @ofdpa_cmd_flow_tbl_add_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_flow_tbl_add_bridge(%struct.rocker_desc_info* %0, %struct.ofdpa_flow_tbl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_desc_info*, align 8
  %5 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %4, align 8
  store %struct.ofdpa_flow_tbl_entry* %1, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %6 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %7 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %14 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %13, i32 %14, i32 %15, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %134

26:                                               ; preds = %12, %2
  %27 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %35 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC_MASK, align 4
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %38 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %34, i32 %35, i32 %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EMSGSIZE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %134

47:                                               ; preds = %33, %26
  %48 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %49 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %56 = load i32, i32* @ROCKER_TLV_OF_DPA_VLAN_ID, align 4
  %57 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %58 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %55, i32 %56, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %134

67:                                               ; preds = %54, %47
  %68 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %69 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %76 = load i32, i32* @ROCKER_TLV_OF_DPA_TUNNEL_ID, align 4
  %77 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %78 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %75, i32 %76, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %134

87:                                               ; preds = %74, %67
  %88 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %89 = load i32, i32* @ROCKER_TLV_OF_DPA_GOTO_TABLE_ID, align 4
  %90 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %91 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %88, i32 %89, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @EMSGSIZE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %134

100:                                              ; preds = %87
  %101 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %102 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_ID, align 4
  %103 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %104 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %101, i32 %102, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* @EMSGSIZE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %134

113:                                              ; preds = %100
  %114 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %115 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %122 = load i32, i32* @ROCKER_TLV_OF_DPA_COPY_CPU_ACTION, align 4
  %123 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %124 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @rocker_tlv_put_u8(%struct.rocker_desc_info* %121, i32 %122, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load i32, i32* @EMSGSIZE, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %120, %113
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %130, %110, %97, %84, %64, %44, %23
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @rocker_tlv_put(%struct.rocker_desc_info*, i32, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_be16(%struct.rocker_desc_info*, i32, i64) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i64) #1

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u8(%struct.rocker_desc_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
