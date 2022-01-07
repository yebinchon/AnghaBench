; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_event_mac_vlan_seen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_event_mac_vlan_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, %struct.rocker_port** }
%struct.rocker_port = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_EVENT_MAC_VLAN_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_EVENT_MAC_VLAN_PPORT = common dso_local global i64 0, align 8
@ROCKER_TLV_EVENT_MAC_VLAN_MAC = common dso_local global i64 0, align 8
@ROCKER_TLV_EVENT_MAC_VLAN_VLAN_ID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_tlv*)* @rocker_event_mac_vlan_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_event_mac_vlan_seen(%struct.rocker* %0, %struct.rocker_tlv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.rocker_tlv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rocker_port*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.rocker_tlv* %1, %struct.rocker_tlv** %5, align 8
  %13 = load i32, i32* @ROCKER_TLV_EVENT_MAC_VLAN_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.rocker_tlv*, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @ROCKER_TLV_EVENT_MAC_VLAN_MAX, align 4
  %19 = load %struct.rocker_tlv*, %struct.rocker_tlv** %5, align 8
  %20 = call i32 @rocker_tlv_parse_nested(%struct.rocker_tlv** %17, i32 %18, %struct.rocker_tlv* %19)
  %21 = load i64, i64* @ROCKER_TLV_EVENT_MAC_VLAN_PPORT, align 8
  %22 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %21
  %23 = load %struct.rocker_tlv*, %struct.rocker_tlv** %22, align 8
  %24 = icmp ne %struct.rocker_tlv* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i64, i64* @ROCKER_TLV_EVENT_MAC_VLAN_MAC, align 8
  %27 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %26
  %28 = load %struct.rocker_tlv*, %struct.rocker_tlv** %27, align 8
  %29 = icmp ne %struct.rocker_tlv* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, i64* @ROCKER_TLV_EVENT_MAC_VLAN_VLAN_ID, align 8
  %32 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %31
  %33 = load %struct.rocker_tlv*, %struct.rocker_tlv** %32, align 8
  %34 = icmp ne %struct.rocker_tlv* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %25, %2
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

38:                                               ; preds = %30
  %39 = load i64, i64* @ROCKER_TLV_EVENT_MAC_VLAN_PPORT, align 8
  %40 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %39
  %41 = load %struct.rocker_tlv*, %struct.rocker_tlv** %40, align 8
  %42 = call i32 @rocker_tlv_get_u32(%struct.rocker_tlv* %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* @ROCKER_TLV_EVENT_MAC_VLAN_MAC, align 8
  %45 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %44
  %46 = load %struct.rocker_tlv*, %struct.rocker_tlv** %45, align 8
  %47 = call i8* @rocker_tlv_data(%struct.rocker_tlv* %46)
  store i8* %47, i8** %10, align 8
  %48 = load i64, i64* @ROCKER_TLV_EVENT_MAC_VLAN_VLAN_ID, align 8
  %49 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %48
  %50 = load %struct.rocker_tlv*, %struct.rocker_tlv** %49, align 8
  %51 = call i32 @rocker_tlv_get_be16(%struct.rocker_tlv* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.rocker*, %struct.rocker** %4, align 8
  %54 = getelementptr inbounds %struct.rocker, %struct.rocker* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

60:                                               ; preds = %38
  %61 = load %struct.rocker*, %struct.rocker** %4, align 8
  %62 = getelementptr inbounds %struct.rocker, %struct.rocker* %61, i32 0, i32 1
  %63 = load %struct.rocker_port**, %struct.rocker_port*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.rocker_port*, %struct.rocker_port** %63, i64 %65
  %67 = load %struct.rocker_port*, %struct.rocker_port** %66, align 8
  store %struct.rocker_port* %67, %struct.rocker_port** %9, align 8
  %68 = load %struct.rocker_port*, %struct.rocker_port** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @rocker_world_port_ev_mac_vlan_seen(%struct.rocker_port* %68, i8* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %60, %57, %35
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_nested(%struct.rocker_tlv**, i32, %struct.rocker_tlv*) #2

declare dso_local i32 @rocker_tlv_get_u32(%struct.rocker_tlv*) #2

declare dso_local i8* @rocker_tlv_data(%struct.rocker_tlv*) #2

declare dso_local i32 @rocker_tlv_get_be16(%struct.rocker_tlv*) #2

declare dso_local i32 @rocker_world_port_ev_mac_vlan_seen(%struct.rocker_port*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
