; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alloc_bcast_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alloc_bcast_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.il_link_quality_cmd*, i32 }
%struct.il_link_quality_cmd = type { i32 }

@il_bcast_addr = common dso_local global i32 0, align 4
@IL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unable to prepare broadcast station\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IL_STA_BCAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unable to initialize rate scaling for bcast station.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_alloc_bcast_station(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_link_quality_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = load i32, i32* @il_bcast_addr, align 4
  %13 = call i64 @il_prep_station(%struct.il_priv* %11, i32 %12, i32 0, i32* null)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @IL_INVALID_STATION, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = call i32 @IL_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %1
  %26 = load i32, i32* @IL_STA_DRIVER_ACTIVE, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %26
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @IL_STA_BCAST, align 4
  %36 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %35
  store i32 %43, i32* %41, align 8
  %44 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call %struct.il_link_quality_cmd* @il4965_sta_alloc_lq(%struct.il_priv* %48, i64 %49)
  store %struct.il_link_quality_cmd* %50, %struct.il_link_quality_cmd** %4, align 8
  %51 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %4, align 8
  %52 = icmp ne %struct.il_link_quality_cmd* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %25
  %54 = call i32 @IL_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %73

57:                                               ; preds = %25
  %58 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %4, align 8
  %63 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %64 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.il_link_quality_cmd* %62, %struct.il_link_quality_cmd** %68, align 8
  %69 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %70 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %57, %53, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @il_prep_station(%struct.il_priv*, i32, i32, i32*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.il_link_quality_cmd* @il4965_sta_alloc_lq(%struct.il_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
