; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_ig_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_ig_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ROCKER_TLV_OF_DPA_IN_PPORT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IN_PPORT_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_GOTO_TABLE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*)* @ofdpa_cmd_flow_tbl_add_ig_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_flow_tbl_add_ig_port(%struct.rocker_desc_info* %0, %struct.ofdpa_flow_tbl_entry* %1) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %6, i32 %7, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %20 = load i32, i32* @ROCKER_TLV_OF_DPA_IN_PPORT_MASK, align 4
  %21 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %19, i32 %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %33 = load i32, i32* @ROCKER_TLV_OF_DPA_GOTO_TABLE_ID, align 4
  %34 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %32, i32 %33, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %28, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
