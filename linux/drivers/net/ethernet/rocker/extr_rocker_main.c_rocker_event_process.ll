; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_event_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_EVENT_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_EVENT_TYPE = common dso_local global i64 0, align 8
@ROCKER_TLV_EVENT_INFO = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_desc_info*)* @rocker_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_event_process(%struct.rocker* %0, %struct.rocker_desc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.rocker_desc_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rocker_tlv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %5, align 8
  %11 = load i32, i32* @ROCKER_TLV_EVENT_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.rocker_tlv*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @ROCKER_TLV_EVENT_MAX, align 4
  %17 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %5, align 8
  %18 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %15, i32 %16, %struct.rocker_desc_info* %17)
  %19 = load i64, i64* @ROCKER_TLV_EVENT_TYPE, align 8
  %20 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %15, i64 %19
  %21 = load %struct.rocker_tlv*, %struct.rocker_tlv** %20, align 8
  %22 = icmp ne %struct.rocker_tlv* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* @ROCKER_TLV_EVENT_INFO, align 8
  %25 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %15, i64 %24
  %26 = load %struct.rocker_tlv*, %struct.rocker_tlv** %25, align 8
  %27 = icmp ne %struct.rocker_tlv* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

31:                                               ; preds = %23
  %32 = load i64, i64* @ROCKER_TLV_EVENT_TYPE, align 8
  %33 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %15, i64 %32
  %34 = load %struct.rocker_tlv*, %struct.rocker_tlv** %33, align 8
  %35 = call i32 @rocker_tlv_get_u16(%struct.rocker_tlv* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* @ROCKER_TLV_EVENT_INFO, align 8
  %37 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %15, i64 %36
  %38 = load %struct.rocker_tlv*, %struct.rocker_tlv** %37, align 8
  store %struct.rocker_tlv* %38, %struct.rocker_tlv** %8, align 8
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %48 [
    i32 129, label %40
    i32 128, label %44
  ]

40:                                               ; preds = %31
  %41 = load %struct.rocker*, %struct.rocker** %4, align 8
  %42 = load %struct.rocker_tlv*, %struct.rocker_tlv** %8, align 8
  %43 = call i32 @rocker_event_link_change(%struct.rocker* %41, %struct.rocker_tlv* %42)
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

44:                                               ; preds = %31
  %45 = load %struct.rocker*, %struct.rocker** %4, align 8
  %46 = load %struct.rocker_tlv*, %struct.rocker_tlv** %8, align 8
  %47 = call i32 @rocker_event_mac_vlan_seen(%struct.rocker* %45, %struct.rocker_tlv* %46)
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

48:                                               ; preds = %31
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %44, %40, %28
  %52 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_get_u16(%struct.rocker_tlv*) #2

declare dso_local i32 @rocker_event_link_change(%struct.rocker*, %struct.rocker_tlv*) #2

declare dso_local i32 @rocker_event_mac_vlan_seen(%struct.rocker*, %struct.rocker_tlv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
