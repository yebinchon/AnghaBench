; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_set_port_settings_macaddr_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_set_port_settings_macaddr_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_TYPE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_PPORT = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_set_port_settings_macaddr_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_set_port_settings_macaddr_prep(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %8, align 8
  %11 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %12 = load i32, i32* @ROCKER_TLV_CMD_TYPE, align 4
  %13 = load i32, i32* @ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS, align 4
  %14 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EMSGSIZE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %21 = load i32, i32* @ROCKER_TLV_CMD_INFO, align 4
  %22 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %20, i32 %21)
  store %struct.rocker_tlv* %22, %struct.rocker_tlv** %9, align 8
  %23 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %24 = icmp ne %struct.rocker_tlv* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %30 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_PPORT, align 4
  %31 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %32 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %29, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %28
  %40 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %41 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %40, i32 %41, i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %51 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %52 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %50, %struct.rocker_tlv* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %46, %36, %25, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put(%struct.rocker_desc_info*, i32, i32, i8*) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
