; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_add_bssid_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_add_bssid_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.il_link_quality_cmd*, i32 }
%struct.il_link_quality_cmd = type { i32 }

@IL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unable to add station %pM\0A\00", align 1
@IL_STA_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to initialize rate scaling for station %pM.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Link quality command failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_add_bssid_station(%struct.il_priv* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.il_link_quality_cmd*, align 8
  %11 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @IL_INVALID_STATION, align 8
  %16 = load i64*, i64** %7, align 8
  store i64 %15, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @il_add_station_common(%struct.il_priv* %18, i64* %19, i32 0, i32* null, i64* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64* %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %87

27:                                               ; preds = %17
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i32, i32* @IL_STA_LOCAL, align 4
  %39 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %38
  store i32 %46, i32* %44, align 8
  %47 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call %struct.il_link_quality_cmd* @il4965_sta_alloc_lq(%struct.il_priv* %51, i64 %52)
  store %struct.il_link_quality_cmd* %53, %struct.il_link_quality_cmd** %10, align 8
  %54 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %10, align 8
  %55 = icmp ne %struct.il_link_quality_cmd* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %33
  %57 = load i64*, i64** %6, align 8
  %58 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %87

61:                                               ; preds = %33
  %62 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %63 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %10, align 8
  %64 = load i32, i32* @CMD_SYNC, align 4
  %65 = call i32 @il_send_lq_cmd(%struct.il_priv* %62, %struct.il_link_quality_cmd* %63, i32 %64, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %10, align 8
  %77 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.il_link_quality_cmd* %76, %struct.il_link_quality_cmd** %82, align 8
  %83 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %71, %56, %23
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @il_add_station_common(%struct.il_priv*, i64*, i32, i32*, i64*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.il_link_quality_cmd* @il4965_sta_alloc_lq(%struct.il_priv*, i64) #1

declare dso_local i32 @il_send_lq_cmd(%struct.il_priv*, %struct.il_link_quality_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
