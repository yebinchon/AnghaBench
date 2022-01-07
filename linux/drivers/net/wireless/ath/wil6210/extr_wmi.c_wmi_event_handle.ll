; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_event_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i64, i32, i64, %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }
%struct.wil6210_mbox_hdr = type { i64, i32 }
%struct.wmi_cmd_hdr = type { i64, i32 }

@WIL_MBOX_HDR_TYPE_WMI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Handle %s (0x%04x) (reply_id 0x%04x,%d)\0A\00", align 1
@MID_BROADCAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid mid %d, event skipped\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"event for empty VIF(%d), skipped\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"Old event (%d, %s) while wmi_call is waiting. Drop it and Continue waiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"event_handle: Complete WMI 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Unhandled event 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unknown event type\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"evt?? \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wil6210_mbox_hdr*)* @wmi_event_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_event_handle(%struct.wil6210_priv* %0, %struct.wil6210_mbox_hdr* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil6210_mbox_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.wmi_cmd_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store %struct.wil6210_mbox_hdr* %1, %struct.wil6210_mbox_hdr** %4, align 8
  %11 = load %struct.wil6210_mbox_hdr*, %struct.wil6210_mbox_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.wil6210_mbox_hdr, %struct.wil6210_mbox_hdr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.wil6210_mbox_hdr*, %struct.wil6210_mbox_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.wil6210_mbox_hdr, %struct.wil6210_mbox_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WIL_MBOX_HDR_TYPE_WMI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %136

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 16
  br i1 %23, label %24, label %136

24:                                               ; preds = %20
  %25 = load %struct.wil6210_mbox_hdr*, %struct.wil6210_mbox_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.wil6210_mbox_hdr, %struct.wil6210_mbox_hdr* %25, i64 1
  %27 = bitcast %struct.wil6210_mbox_hdr* %26 to i8*
  %28 = bitcast i8* %27 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %28, %struct.wmi_cmd_hdr** %7, align 8
  %29 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %29, i64 1
  %31 = bitcast %struct.wmi_cmd_hdr* %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @eventid2name(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %44 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %47 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_wmi(%struct.wil6210_priv* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %45, i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @MID_BROADCAST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %57 = call i64 @GET_MAX_VIFS(%struct.wil6210_priv* %56)
  %58 = icmp uge i64 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_wmi(%struct.wil6210_priv* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %147

64:                                               ; preds = %54
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 4
  %67 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %67, i64 %68
  %70 = load %struct.wil6210_vif*, %struct.wil6210_vif** %69, align 8
  store %struct.wil6210_vif* %70, %struct.wil6210_vif** %6, align 8
  %71 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %72 = icmp ne %struct.wil6210_vif* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %64
  %74 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %75 = load i64, i64* %10, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_wmi(%struct.wil6210_priv* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %147

78:                                               ; preds = %64
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %80 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %78
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %85 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %83
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %91 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %97 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @eventid2name(i32 %103)
  %105 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %101, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %104)
  br label %147

106:                                              ; preds = %95
  %107 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %111, 16
  %113 = trunc i64 %112 to i32
  %114 = call i32 @wmi_evt_call_handler(%struct.wil6210_vif* %107, i32 %108, i8* %109, i32 %113)
  %115 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_wmi(%struct.wil6210_priv* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %119 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %118, i32 0, i32 2
  %120 = call i32 @complete(i32* %119)
  br label %147

121:                                              ; preds = %89, %83, %78
  %122 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 %126, 16
  %128 = trunc i64 %127 to i32
  %129 = call i32 @wmi_evt_call_handler(%struct.wil6210_vif* %122, i32 %123, i8* %124, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %121
  %132 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @wil_info(%struct.wil6210_priv* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %121
  br label %147

136:                                              ; preds = %20, %2
  %137 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %138 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @KERN_ERR, align 4
  %140 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %141 = load %struct.wil6210_mbox_hdr*, %struct.wil6210_mbox_hdr** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 16, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @print_hex_dump(i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %140, i32 16, i32 1, %struct.wil6210_mbox_hdr* %141, i32 %145, i32 1)
  br label %147

147:                                              ; preds = %59, %73, %100, %106, %136, %135
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i32 @eventid2name(i32) #1

declare dso_local i64 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wmi_evt_call_handler(%struct.wil6210_vif*, i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.wil6210_mbox_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
