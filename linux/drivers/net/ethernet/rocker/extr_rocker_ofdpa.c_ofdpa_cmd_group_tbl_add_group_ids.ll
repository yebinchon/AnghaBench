; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_add_group_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_group_tbl_add_group_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_group_tbl_entry = type { i32, i32* }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_OF_DPA_GROUP_COUNT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GROUP_IDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*, %struct.ofdpa_group_tbl_entry*)* @ofdpa_cmd_group_tbl_add_group_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_group_tbl_add_group_ids(%struct.rocker_desc_info* %0, %struct.ofdpa_group_tbl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_desc_info*, align 8
  %5 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %4, align 8
  store %struct.ofdpa_group_tbl_entry* %1, %struct.ofdpa_group_tbl_entry** %5, align 8
  %8 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %9 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_COUNT, align 4
  %10 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %11 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %8, i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %20 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_IDS, align 4
  %21 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %19, i32 %20)
  store %struct.rocker_tlv* %21, %struct.rocker_tlv** %7, align 8
  %22 = load %struct.rocker_tlv*, %struct.rocker_tlv** %7, align 8
  %23 = icmp ne %struct.rocker_tlv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %58

27:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %31 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %5, align 8
  %39 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %35, i32 %37, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %56 = load %struct.rocker_tlv*, %struct.rocker_tlv** %7, align 8
  %57 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %55, %struct.rocker_tlv* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %47, %24, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
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
