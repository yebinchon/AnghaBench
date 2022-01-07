; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_TYPE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_TABLE_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_PRIORITY = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_HARDTIME = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_COOKIE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @ofdpa_cmd_flow_tbl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_flow_tbl_add(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  %9 = alloca %struct.rocker_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ofdpa_flow_tbl_entry*
  store %struct.ofdpa_flow_tbl_entry* %12, %struct.ofdpa_flow_tbl_entry** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %14 = load i32, i32* @ROCKER_TLV_CMD_TYPE, align 4
  %15 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %16 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %13, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %116

23:                                               ; preds = %3
  %24 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %25 = load i32, i32* @ROCKER_TLV_CMD_INFO, align 4
  %26 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %24, i32 %25)
  store %struct.rocker_tlv* %26, %struct.rocker_tlv** %9, align 8
  %27 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %28 = icmp ne %struct.rocker_tlv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %116

32:                                               ; preds = %23
  %33 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %34 = load i32, i32* @ROCKER_TLV_OF_DPA_TABLE_ID, align 4
  %35 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %36 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %33, i32 %34, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %116

44:                                               ; preds = %32
  %45 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %46 = load i32, i32* @ROCKER_TLV_OF_DPA_PRIORITY, align 4
  %47 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %48 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %45, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %116

56:                                               ; preds = %44
  %57 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %58 = load i32, i32* @ROCKER_TLV_OF_DPA_HARDTIME, align 4
  %59 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %57, i32 %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %116

64:                                               ; preds = %56
  %65 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %66 = load i32, i32* @ROCKER_TLV_OF_DPA_COOKIE, align 4
  %67 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %68 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @rocker_tlv_put_u64(%struct.rocker_desc_info* %65, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EMSGSIZE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %116

75:                                               ; preds = %64
  %76 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %77 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %104 [
    i32 131, label %80
    i32 128, label %84
    i32 130, label %88
    i32 129, label %92
    i32 132, label %96
    i32 133, label %100
  ]

80:                                               ; preds = %75
  %81 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %82 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %83 = call i32 @ofdpa_cmd_flow_tbl_add_ig_port(%struct.rocker_desc_info* %81, %struct.ofdpa_flow_tbl_entry* %82)
  store i32 %83, i32* %10, align 4
  br label %107

84:                                               ; preds = %75
  %85 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %86 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %87 = call i32 @ofdpa_cmd_flow_tbl_add_vlan(%struct.rocker_desc_info* %85, %struct.ofdpa_flow_tbl_entry* %86)
  store i32 %87, i32* %10, align 4
  br label %107

88:                                               ; preds = %75
  %89 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %90 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %91 = call i32 @ofdpa_cmd_flow_tbl_add_term_mac(%struct.rocker_desc_info* %89, %struct.ofdpa_flow_tbl_entry* %90)
  store i32 %91, i32* %10, align 4
  br label %107

92:                                               ; preds = %75
  %93 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %94 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %95 = call i32 @ofdpa_cmd_flow_tbl_add_ucast_routing(%struct.rocker_desc_info* %93, %struct.ofdpa_flow_tbl_entry* %94)
  store i32 %95, i32* %10, align 4
  br label %107

96:                                               ; preds = %75
  %97 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %98 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %99 = call i32 @ofdpa_cmd_flow_tbl_add_bridge(%struct.rocker_desc_info* %97, %struct.ofdpa_flow_tbl_entry* %98)
  store i32 %99, i32* %10, align 4
  br label %107

100:                                              ; preds = %75
  %101 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %102 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %103 = call i32 @ofdpa_cmd_flow_tbl_add_acl(%struct.rocker_desc_info* %101, %struct.ofdpa_flow_tbl_entry* %102)
  store i32 %103, i32* %10, align 4
  br label %107

104:                                              ; preds = %75
  %105 = load i32, i32* @ENOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %100, %96, %92, %88, %84, %80
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %116

112:                                              ; preds = %107
  %113 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %114 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %115 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %113, %struct.rocker_tlv* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %110, %72, %61, %53, %41, %29, %20
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u64(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @ofdpa_cmd_flow_tbl_add_ig_port(%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_flow_tbl_add_vlan(%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_flow_tbl_add_term_mac(%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_flow_tbl_add_ucast_routing(%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_flow_tbl_add_bridge(%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_flow_tbl_add_acl(%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
