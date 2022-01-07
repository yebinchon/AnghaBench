; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_mode_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_mode_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_get_port_settings_mode_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_get_port_settings_mode_proc(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rocker_tlv*, align 8
  %13 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.rocker_tlv*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca %struct.rocker_tlv*, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %26 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %27 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %20, i32 %25, %struct.rocker_desc_info* %26)
  %28 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %29 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %20, i64 %28
  %30 = load %struct.rocker_tlv*, %struct.rocker_tlv** %29, align 8
  %31 = icmp ne %struct.rocker_tlv* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %55

35:                                               ; preds = %3
  %36 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MAX, align 4
  %37 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %38 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %20, i64 %37
  %39 = load %struct.rocker_tlv*, %struct.rocker_tlv** %38, align 8
  %40 = call i32 @rocker_tlv_parse_nested(%struct.rocker_tlv** %24, i32 %36, %struct.rocker_tlv* %39)
  %41 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_MODE, align 8
  %42 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %24, i64 %41
  %43 = load %struct.rocker_tlv*, %struct.rocker_tlv** %42, align 8
  store %struct.rocker_tlv* %43, %struct.rocker_tlv** %12, align 8
  %44 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %45 = icmp ne %struct.rocker_tlv* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_MODE, align 8
  %51 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %24, i64 %50
  %52 = load %struct.rocker_tlv*, %struct.rocker_tlv** %51, align 8
  %53 = call i32 @rocker_tlv_get_u8(%struct.rocker_tlv* %52)
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %49, %46, %32
  %56 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_parse_nested(%struct.rocker_tlv**, i32, %struct.rocker_tlv*) #2

declare dso_local i32 @rocker_tlv_get_u8(%struct.rocker_tlv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
