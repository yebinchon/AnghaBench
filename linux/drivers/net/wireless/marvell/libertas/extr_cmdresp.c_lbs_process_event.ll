; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmdresp.c_lbs_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmdresp.c_lbs_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i32, i32, i32 (%struct.lbs_private*)*, i32, i32, i32 }
%struct.cmd_header = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"EVENT: link sensed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EVENT: deauthenticated\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"EVENT: disassociated\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EVENT: link lost\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"EVENT: ps sleep\0A\00", align 1
@PS_STATE_FULL_POWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"EVENT: in FULL POWER mode, ignoring PS_SLEEP\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"EVENT: commands in queue, do not sleep\0A\00", align 1
@PS_STATE_PRE_SLEEP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"EVENT: host awake\0A\00", align 1
@CMD_802_11_WAKEUP_CONFIRM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"EVENT: ds awake\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"EVENT: ps awake\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"EVENT: In FULL POWER mode - ignore PS AWAKE\0A\00", align 1
@PS_STATE_AWAKE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"waking up ...\0A\00", align 1
@PS_MODE_ACTION_EXIT_PS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"EVENT: UNICAST MIC ERROR\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"EVENT: MULTICAST MIC ERROR\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"EVENT: MIB CHANGED\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"EVENT: INIT DONE\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"EVENT: ADHOC beacon lost\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"EVENT: rssi low\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"EVENT: snr low\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"EVENT: max fail\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"EVENT: rssi high\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"EVENT: snr high\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"EVENT: MESH_AUTO_STARTED (ignoring)\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"EVENT: unknown event id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_process_event(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_header, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %156 [
    i32 139, label %8
    i32 145, label %10
    i32 143, label %14
    i32 140, label %18
    i32 132, label %22
    i32 142, label %44
    i32 144, label %67
    i32 133, label %87
    i32 134, label %110
    i32 135, label %115
    i32 136, label %120
    i32 141, label %122
    i32 146, label %124
    i32 130, label %126
    i32 128, label %131
    i32 138, label %136
    i32 131, label %141
    i32 129, label %146
    i32 137, label %151
  ]

8:                                                ; preds = %2
  %9 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %162

10:                                               ; preds = %2
  %11 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %13 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %12, i32 0)
  br label %162

14:                                               ; preds = %2
  %15 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %17 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %16, i32 0)
  br label %162

18:                                               ; preds = %2
  %19 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %21 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %20, i32 1)
  br label %162

22:                                               ; preds = %2
  %23 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PS_STATE_FULL_POWER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %162

31:                                               ; preds = %22
  %32 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 9
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %162

38:                                               ; preds = %31
  %39 = load i32, i32* @PS_STATE_PRE_SLEEP, align 4
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %43 = call i32 @lbs_ps_confirm_sleep(%struct.lbs_private* %42)
  br label %162

44:                                               ; preds = %2
  %45 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 6
  %48 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %47, align 8
  %49 = icmp ne i32 (%struct.lbs_private*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 6
  %53 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %52, align 8
  %54 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %55 = call i32 %53(%struct.lbs_private* %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 5
  store i32 0, i32* %58, align 4
  %59 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %60 = load i32, i32* @CMD_802_11_WAKEUP_CONFIRM, align 4
  %61 = call i32 @lbs_cmd_async(%struct.lbs_private* %59, i32 %60, %struct.cmd_header* %6, i32 4)
  %62 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 7
  %66 = call i32 @wake_up_interruptible(i32* %65)
  br label %162

67:                                               ; preds = %2
  %68 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 6
  %70 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %69, align 8
  %71 = icmp ne i32 (%struct.lbs_private*)* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 6
  %75 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %74, align 8
  %76 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %77 = call i32 %75(%struct.lbs_private* %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %80 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 5
  store i32 0, i32* %81, align 4
  %82 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %83 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %82, i32 0, i32 4
  store i32 0, i32* %83, align 8
  %84 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 3
  %86 = call i32 @wake_up_interruptible(i32* %85)
  br label %162

87:                                               ; preds = %2
  %88 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %89 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %90 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PS_STATE_FULL_POWER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %162

96:                                               ; preds = %87
  %97 = load i32, i32* @PS_STATE_AWAKE, align 4
  %98 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %99 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %106 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %107 = load i32, i32* @PS_MODE_ACTION_EXIT_PS, align 4
  %108 = call i32 @lbs_set_ps_mode(%struct.lbs_private* %106, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %104, %96
  br label %162

110:                                              ; preds = %2
  %111 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %112 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @lbs_send_mic_failureevent(%struct.lbs_private* %112, i32 %113)
  br label %162

115:                                              ; preds = %2
  %116 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %117 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @lbs_send_mic_failureevent(%struct.lbs_private* %117, i32 %118)
  br label %162

120:                                              ; preds = %2
  %121 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %162

122:                                              ; preds = %2
  %123 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %162

124:                                              ; preds = %2
  %125 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %162

126:                                              ; preds = %2
  %127 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %128 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @netdev_alert(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %162

131:                                              ; preds = %2
  %132 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %133 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @netdev_alert(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %162

136:                                              ; preds = %2
  %137 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %138 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, ...) @netdev_alert(i32 %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %162

141:                                              ; preds = %2
  %142 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %143 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @netdev_alert(i32 %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %162

146:                                              ; preds = %2
  %147 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %148 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @netdev_alert(i32 %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  br label %162

151:                                              ; preds = %2
  %152 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %153 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @netdev_info(i32 %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  br label %162

156:                                              ; preds = %2
  %157 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %158 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 (i32, i8*, ...) @netdev_alert(i32 %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %156, %151, %146, %141, %136, %131, %126, %124, %122, %120, %115, %110, %109, %94, %78, %56, %38, %36, %29, %18, %14, %10, %8
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local i32 @lbs_mac_event_disconnected(%struct.lbs_private*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lbs_ps_confirm_sleep(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cmd_async(%struct.lbs_private*, i32, %struct.cmd_header*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @lbs_set_ps_mode(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_send_mic_failureevent(%struct.lbs_private*, i32) #1

declare dso_local i32 @netdev_alert(i32, i8*, ...) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
