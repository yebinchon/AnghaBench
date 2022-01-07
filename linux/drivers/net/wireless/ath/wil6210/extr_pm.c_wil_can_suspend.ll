; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_can_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_can_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i64, %struct.TYPE_4__, i32, %struct.wil6210_vif**, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wil6210_vif = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WMI_FW_CAPABILITY_WMI_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"can_suspend: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@debug_fw = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Deny any suspend - %s mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"wmi_only\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"debug_fw\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Interface is down\0A\00", align 1
@wil_status_resetting = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Delay suspend when resetting\0A\00", align 1
@fw_recovery_idle = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Delay suspend during recovery\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"can_suspend: %s => %s (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_can_suspend(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wil6210_vif*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @WMI_FW_CAPABILITY_WMI_ONLY, align 4
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %12 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @test_bit(i32 %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @debug_fw, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23, %2
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %32 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %124

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %40 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %124

47:                                               ; preds = %38, %35
  %48 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %49 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %52 = call i32 @wil_has_active_ifaces(%struct.wil6210_priv* %51, i32 1, i32 0)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %54 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %60 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %124

61:                                               ; preds = %47
  %62 = load i32, i32* @wil_status_resetting, align 4
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %64 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @test_bit(i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %70 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %124

73:                                               ; preds = %61
  %74 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %75 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @fw_recovery_idle, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %81 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %124

84:                                               ; preds = %73
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %86 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %85, i32 0, i32 2
  %87 = call i32 @mutex_lock(i32* %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %117, %84
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %91 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %88
  %94 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %95 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %94, i32 0, i32 3
  %96 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %96, i64 %98
  %100 = load %struct.wil6210_vif*, %struct.wil6210_vif** %99, align 8
  store %struct.wil6210_vif* %100, %struct.wil6210_vif** %9, align 8
  %101 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %102 = icmp ne %struct.wil6210_vif* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %117

104:                                              ; preds = %93
  %105 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %106 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @wil_can_suspend_vif(%struct.wil6210_priv* %105, %struct.wil6210_vif* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  %113 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %114 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  br label %124

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %103
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %88

120:                                              ; preds = %88
  %121 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %122 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %121, i32 0, i32 2
  %123 = call i32 @mutex_unlock(i32* %122)
  br label %124

124:                                              ; preds = %120, %110, %79, %68, %58, %44, %26
  %125 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %129, i8* %133, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %124
  %139 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %140 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %124
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_can_suspend_vif(%struct.wil6210_priv*, %struct.wil6210_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
