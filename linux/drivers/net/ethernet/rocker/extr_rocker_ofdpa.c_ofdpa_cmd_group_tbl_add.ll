; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_group_tbl_entry = type { i32, i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_TYPE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GROUP_ID = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @ofdpa_cmd_group_tbl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_group_tbl_add(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %9 = alloca %struct.rocker_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ofdpa_group_tbl_entry*
  store %struct.ofdpa_group_tbl_entry* %12, %struct.ofdpa_group_tbl_entry** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %14 = load i32, i32* @ROCKER_TLV_CMD_TYPE, align 4
  %15 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %16 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %13, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %76

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
  br label %76

32:                                               ; preds = %23
  %33 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %34 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_ID, align 4
  %35 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %36 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %76

43:                                               ; preds = %32
  %44 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ROCKER_GROUP_TYPE_GET(i32 %46)
  switch i32 %47, label %64 [
    i32 131, label %48
    i32 129, label %52
    i32 132, label %56
    i32 130, label %56
    i32 128, label %60
  ]

48:                                               ; preds = %43
  %49 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %50 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %51 = call i32 @ofdpa_cmd_group_tbl_add_l2_interface(%struct.rocker_desc_info* %49, %struct.ofdpa_group_tbl_entry* %50)
  store i32 %51, i32* %10, align 4
  br label %67

52:                                               ; preds = %43
  %53 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %54 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %55 = call i32 @ofdpa_cmd_group_tbl_add_l2_rewrite(%struct.rocker_desc_info* %53, %struct.ofdpa_group_tbl_entry* %54)
  store i32 %55, i32* %10, align 4
  br label %67

56:                                               ; preds = %43, %43
  %57 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %58 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %59 = call i32 @ofdpa_cmd_group_tbl_add_group_ids(%struct.rocker_desc_info* %57, %struct.ofdpa_group_tbl_entry* %58)
  store i32 %59, i32* %10, align 4
  br label %67

60:                                               ; preds = %43
  %61 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %62 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %63 = call i32 @ofdpa_cmd_group_tbl_add_l3_unicast(%struct.rocker_desc_info* %61, %struct.ofdpa_group_tbl_entry* %62)
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %43
  %65 = load i32, i32* @ENOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %60, %56, %52, %48
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %67
  %73 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %74 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %75 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %73, %struct.rocker_tlv* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %70, %40, %29, %20
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @ROCKER_GROUP_TYPE_GET(i32) #1

declare dso_local i32 @ofdpa_cmd_group_tbl_add_l2_interface(%struct.rocker_desc_info*, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_group_tbl_add_l2_rewrite(%struct.rocker_desc_info*, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_group_tbl_add_group_ids(%struct.rocker_desc_info*, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @ofdpa_cmd_group_tbl_add_l3_unicast(%struct.rocker_desc_info*, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
