; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_TYPE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_TYPE_GET_PORT_SETTINGS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_PPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_get_port_settings_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_get_port_settings_prep(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %10 = load i32, i32* @ROCKER_TLV_CMD_TYPE, align 4
  %11 = load i32, i32* @ROCKER_TLV_CMD_TYPE_GET_PORT_SETTINGS, align 4
  %12 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %19 = load i32, i32* @ROCKER_TLV_CMD_INFO, align 4
  %20 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %18, i32 %19)
  store %struct.rocker_tlv* %20, %struct.rocker_tlv** %8, align 8
  %21 = load %struct.rocker_tlv*, %struct.rocker_tlv** %8, align 8
  %22 = icmp ne %struct.rocker_tlv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %28 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_PPORT, align 4
  %29 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %30 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %39 = load %struct.rocker_tlv*, %struct.rocker_tlv** %8, align 8
  %40 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %38, %struct.rocker_tlv* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %34, %23, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
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
