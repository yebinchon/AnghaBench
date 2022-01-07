; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_del.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @ofdpa_cmd_group_tbl_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_group_tbl_del(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %9 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ofdpa_group_tbl_entry*
  store %struct.ofdpa_group_tbl_entry* %11, %struct.ofdpa_group_tbl_entry** %8, align 8
  %12 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %13 = load i32, i32* @ROCKER_TLV_CMD_TYPE, align 4
  %14 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %15 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %24 = load i32, i32* @ROCKER_TLV_CMD_INFO, align 4
  %25 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %23, i32 %24)
  store %struct.rocker_tlv* %25, %struct.rocker_tlv** %9, align 8
  %26 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %27 = icmp ne %struct.rocker_tlv* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %22
  %32 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %33 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_ID, align 4
  %34 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %44 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %45 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %43, %struct.rocker_tlv* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %39, %28, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
