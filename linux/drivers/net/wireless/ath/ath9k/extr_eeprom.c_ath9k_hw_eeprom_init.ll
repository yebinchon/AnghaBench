; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { {}*, {}* }
%struct.ath_hw = type { %struct.TYPE_5__* }

@eep_ar9300_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@eep_ar9287_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@eep_4k_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@eep_def_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_eeprom_init(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  store %struct.TYPE_5__* @eep_ar9300_ops, %struct.TYPE_5__** %10, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = call i64 @AR_SREV_9287(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  store %struct.TYPE_5__* @eep_ar9287_ops, %struct.TYPE_5__** %17, align 8
  br label %33

18:                                               ; preds = %11
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i64 @AR_SREV_9285(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i64 @AR_SREV_9271(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  store %struct.TYPE_5__* @eep_4k_ops, %struct.TYPE_5__** %28, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  store %struct.TYPE_5__* @eep_def_ops, %struct.TYPE_5__** %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %33, %8
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i32 (%struct.ath_hw*)**
  %40 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %39, align 8
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = call i32 %40(%struct.ath_hw* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %34
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.ath_hw*)**
  %53 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %52, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = call i32 %53(%struct.ath_hw* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
