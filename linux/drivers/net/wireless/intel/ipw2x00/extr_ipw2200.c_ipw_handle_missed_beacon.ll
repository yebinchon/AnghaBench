; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_handle_missed_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_handle_missed_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@IPW_DL_INFO = common dso_local global i32 0, align 4
@IPW_DL_NOTIF = common dso_local global i32 0, align 4
@IPW_DL_STATE = common dso_local global i32 0, align 4
@IPW_DL_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Missed beacon: %d - disassociate\0A\00", align 1
@STATUS_ROAMING = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Aborting scan with missed beacon.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Missed beacon: %d - roam in progress\0A\00", align 1
@roaming = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Missed beacon: %d - initiate roaming\0A\00", align 1
@IPW_MB_SCAN_CANCEL_THRESHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Missed beacon: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32)* @ipw_handle_missed_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_handle_missed_beacon(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %13
  %21 = load i32, i32* @IPW_DL_INFO, align 4
  %22 = load i32, i32* @IPW_DL_NOTIF, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IPW_DL_STATE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IPW_DL_ASSOC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, ...) @IPW_DEBUG(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @STATUS_ROAMING, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @STATUS_SCANNING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %20
  %43 = load i32, i32* @IPW_DL_INFO, align 4
  %44 = load i32, i32* @IPW_DL_NOTIF, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IPW_DL_STATE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 (i32, i8*, ...) @IPW_DEBUG(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %49, i32 0, i32 4
  %51 = call i32 @schedule_work(i32* %50)
  br label %52

52:                                               ; preds = %42, %20
  %53 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %53, i32 0, i32 6
  %55 = call i32 @schedule_work(i32* %54)
  br label %138

56:                                               ; preds = %13, %2
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @STATUS_ROAMING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @IPW_DL_NOTIF, align 4
  %65 = load i32, i32* @IPW_DL_STATE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @IPW_DEBUG(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %138

69:                                               ; preds = %56
  %70 = load i64, i64* @roaming, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %81 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load i32, i32* @IPW_DL_NOTIF, align 4
  %86 = load i32, i32* @IPW_DL_STATE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @IPW_DEBUG(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %91 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @STATUS_ROAMING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* @STATUS_ROAMING, align 4
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %99 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %103 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @STATUS_SCANNING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %96
  %109 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %110 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %109, i32 0, i32 5
  %111 = call i32 @schedule_delayed_work(i32* %110, i32 0)
  br label %112

112:                                              ; preds = %108, %96
  br label %113

113:                                              ; preds = %112, %84
  br label %138

114:                                              ; preds = %78, %72, %69
  %115 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %116 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @STATUS_SCANNING, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @IPW_MB_SCAN_CANCEL_THRESHOLD, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i32, i32* @IPW_DL_INFO, align 4
  %127 = load i32, i32* @IPW_DL_NOTIF, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @IPW_DL_STATE, align 4
  %130 = or i32 %128, %129
  %131 = call i32 (i32, i8*, ...) @IPW_DEBUG(i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %133 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %132, i32 0, i32 4
  %134 = call i32 @schedule_work(i32* %133)
  br label %135

135:                                              ; preds = %125, %121, %114
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @IPW_DEBUG_NOTIF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %113, %63, %52
  ret void
}

declare dso_local i32 @IPW_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @IPW_DEBUG_NOTIF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
