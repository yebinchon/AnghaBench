; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_macaddr_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_macaddr_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_get_port_settings_macaddr_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_get_port_settings_macaddr_proc(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rocker_tlv*, align 8
  %13 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca %struct.rocker_tlv*, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca %struct.rocker_tlv*, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %25 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %26 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %19, i32 %24, %struct.rocker_desc_info* %25)
  %27 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %28 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %19, i64 %27
  %29 = load %struct.rocker_tlv*, %struct.rocker_tlv** %28, align 8
  %30 = icmp ne %struct.rocker_tlv* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %61

34:                                               ; preds = %3
  %35 = load i32, i32* @ROCKER_TLV_CMD_PORT_SETTINGS_MAX, align 4
  %36 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %37 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %19, i64 %36
  %38 = load %struct.rocker_tlv*, %struct.rocker_tlv** %37, align 8
  %39 = call i32 @rocker_tlv_parse_nested(%struct.rocker_tlv** %23, i32 %35, %struct.rocker_tlv* %38)
  %40 = load i64, i64* @ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR, align 8
  %41 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %23, i64 %40
  %42 = load %struct.rocker_tlv*, %struct.rocker_tlv** %41, align 8
  store %struct.rocker_tlv* %42, %struct.rocker_tlv** %12, align 8
  %43 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %44 = icmp ne %struct.rocker_tlv* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %61

48:                                               ; preds = %34
  %49 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %50 = call i64 @rocker_tlv_len(%struct.rocker_tlv* %49)
  %51 = load i64, i64* @ETH_ALEN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %61

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %59 = call i32 @rocker_tlv_data(%struct.rocker_tlv* %58)
  %60 = call i32 @ether_addr_copy(i8* %57, i32 %59)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %56, %53, %45, %31
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_parse_nested(%struct.rocker_tlv**, i32, %struct.rocker_tlv*) #2

declare dso_local i64 @rocker_tlv_len(%struct.rocker_tlv*) #2

declare dso_local i32 @ether_addr_copy(i8*, i32) #2

declare dso_local i32 @rocker_tlv_data(%struct.rocker_tlv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
