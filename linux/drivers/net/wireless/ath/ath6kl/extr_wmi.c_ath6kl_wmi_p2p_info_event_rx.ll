; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_p2p_info_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_p2p_info_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_p2p_info_event = type { i64, i32, i32 }
%struct.wmi_p2p_capabilities = type { i32 }
%struct.wmi_p2p_macaddr = type { i32 }
%struct.wmi_p2p_hmodel = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"p2p_info: flags=%x len=%d\0A\00", align 1
@P2P_FLAG_CAPABILITIES_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"p2p_info: GO Power Save = %d\0A\00", align 1
@P2P_FLAG_MACADDR_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"p2p_info: MAC Address = %pM\0A\00", align 1
@P2P_FLAG_HMODEL_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"p2p_info: P2P Model = %d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ath6kl_wmi_p2p_info_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_p2p_info_event_rx(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_p2p_info_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_p2p_capabilities*, align 8
  %10 = alloca %struct.wmi_p2p_macaddr*, align 8
  %11 = alloca %struct.wmi_p2p_hmodel*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %106

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to %struct.wmi_p2p_info_event*
  store %struct.wmi_p2p_info_event* %20, %struct.wmi_p2p_info_event** %6, align 8
  %21 = load %struct.wmi_p2p_info_event*, %struct.wmi_p2p_info_event** %6, align 8
  %22 = getelementptr inbounds %struct.wmi_p2p_info_event, %struct.wmi_p2p_info_event* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.wmi_p2p_info_event*, %struct.wmi_p2p_info_event** %6, align 8
  %26 = getelementptr inbounds %struct.wmi_p2p_info_event, %struct.wmi_p2p_info_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @P2P_FLAG_CAPABILITIES_REQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %18
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %37
  %45 = load %struct.wmi_p2p_info_event*, %struct.wmi_p2p_info_event** %6, align 8
  %46 = getelementptr inbounds %struct.wmi_p2p_info_event, %struct.wmi_p2p_info_event* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.wmi_p2p_capabilities*
  store %struct.wmi_p2p_capabilities* %48, %struct.wmi_p2p_capabilities** %9, align 8
  %49 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %50 = load %struct.wmi_p2p_capabilities*, %struct.wmi_p2p_capabilities** %9, align 8
  %51 = getelementptr inbounds %struct.wmi_p2p_capabilities, %struct.wmi_p2p_capabilities* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %44, %18
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @P2P_FLAG_MACADDR_REQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %106

66:                                               ; preds = %59
  %67 = load %struct.wmi_p2p_info_event*, %struct.wmi_p2p_info_event** %6, align 8
  %68 = getelementptr inbounds %struct.wmi_p2p_info_event, %struct.wmi_p2p_info_event* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.wmi_p2p_macaddr*
  store %struct.wmi_p2p_macaddr* %70, %struct.wmi_p2p_macaddr** %10, align 8
  %71 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %72 = load %struct.wmi_p2p_macaddr*, %struct.wmi_p2p_macaddr** %10, align 8
  %73 = getelementptr inbounds %struct.wmi_p2p_macaddr, %struct.wmi_p2p_macaddr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %66, %54
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @P2P_FLAG_HMODEL_REQ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 8
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %106

88:                                               ; preds = %81
  %89 = load %struct.wmi_p2p_info_event*, %struct.wmi_p2p_info_event** %6, align 8
  %90 = getelementptr inbounds %struct.wmi_p2p_info_event, %struct.wmi_p2p_info_event* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.wmi_p2p_hmodel*
  store %struct.wmi_p2p_hmodel* %92, %struct.wmi_p2p_hmodel** %11, align 8
  %93 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %94 = load %struct.wmi_p2p_hmodel*, %struct.wmi_p2p_hmodel** %11, align 8
  %95 = getelementptr inbounds %struct.wmi_p2p_hmodel, %struct.wmi_p2p_hmodel* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.wmi_p2p_hmodel*, %struct.wmi_p2p_hmodel** %11, align 8
  %99 = getelementptr inbounds %struct.wmi_p2p_hmodel, %struct.wmi_p2p_hmodel* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %104 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %97, i8* %103)
  br label %105

105:                                              ; preds = %88, %76
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %85, %63, %41, %15
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
