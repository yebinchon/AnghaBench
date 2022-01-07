; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_event_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_event_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, %struct.rocker_port** }
%struct.rocker_port = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_EVENT_LINK_CHANGED_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_EVENT_LINK_CHANGED_PPORT = common dso_local global i64 0, align 8
@ROCKER_TLV_EVENT_LINK_CHANGED_LINKUP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_tlv*)* @rocker_event_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_event_link_change(%struct.rocker* %0, %struct.rocker_tlv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.rocker_tlv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rocker_port*, align 8
  %11 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.rocker_tlv* %1, %struct.rocker_tlv** %5, align 8
  %12 = load i32, i32* @ROCKER_TLV_EVENT_LINK_CHANGED_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.rocker_tlv*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @ROCKER_TLV_EVENT_LINK_CHANGED_MAX, align 4
  %18 = load %struct.rocker_tlv*, %struct.rocker_tlv** %5, align 8
  %19 = call i32 @rocker_tlv_parse_nested(%struct.rocker_tlv** %16, i32 %17, %struct.rocker_tlv* %18)
  %20 = load i64, i64* @ROCKER_TLV_EVENT_LINK_CHANGED_PPORT, align 8
  %21 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %16, i64 %20
  %22 = load %struct.rocker_tlv*, %struct.rocker_tlv** %21, align 8
  %23 = icmp ne %struct.rocker_tlv* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i64, i64* @ROCKER_TLV_EVENT_LINK_CHANGED_LINKUP, align 8
  %26 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %16, i64 %25
  %27 = load %struct.rocker_tlv*, %struct.rocker_tlv** %26, align 8
  %28 = icmp ne %struct.rocker_tlv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load i64, i64* @ROCKER_TLV_EVENT_LINK_CHANGED_PPORT, align 8
  %34 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %16, i64 %33
  %35 = load %struct.rocker_tlv*, %struct.rocker_tlv** %34, align 8
  %36 = call i32 @rocker_tlv_get_u32(%struct.rocker_tlv* %35)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* @ROCKER_TLV_EVENT_LINK_CHANGED_LINKUP, align 8
  %39 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %16, i64 %38
  %40 = load %struct.rocker_tlv*, %struct.rocker_tlv** %39, align 8
  %41 = call i32 @rocker_tlv_get_u8(%struct.rocker_tlv* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.rocker*, %struct.rocker** %4, align 8
  %44 = getelementptr inbounds %struct.rocker, %struct.rocker* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %75

50:                                               ; preds = %32
  %51 = load %struct.rocker*, %struct.rocker** %4, align 8
  %52 = getelementptr inbounds %struct.rocker, %struct.rocker* %51, i32 0, i32 1
  %53 = load %struct.rocker_port**, %struct.rocker_port*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.rocker_port*, %struct.rocker_port** %53, i64 %55
  %57 = load %struct.rocker_port*, %struct.rocker_port** %56, align 8
  store %struct.rocker_port* %57, %struct.rocker_port** %10, align 8
  %58 = load %struct.rocker_port*, %struct.rocker_port** %10, align 8
  %59 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @netif_carrier_ok(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.rocker_port*, %struct.rocker_port** %10, align 8
  %69 = call i32 @rocker_port_link_up(%struct.rocker_port* %68)
  br label %73

70:                                               ; preds = %64
  %71 = load %struct.rocker_port*, %struct.rocker_port** %10, align 8
  %72 = call i32 @rocker_port_link_down(%struct.rocker_port* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %50
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %47, %29
  %76 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_nested(%struct.rocker_tlv**, i32, %struct.rocker_tlv*) #2

declare dso_local i32 @rocker_tlv_get_u32(%struct.rocker_tlv*) #2

declare dso_local i32 @rocker_tlv_get_u8(%struct.rocker_tlv*) #2

declare dso_local i32 @netif_carrier_ok(i32) #2

declare dso_local i32 @rocker_port_link_up(%struct.rocker_port*) #2

declare dso_local i32 @rocker_port_link_down(%struct.rocker_port*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
