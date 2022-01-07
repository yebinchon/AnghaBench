; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_nvram_check_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_nvram_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)* }
%struct.ath_common = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Bad EEPROM VER 0x%04x or REV 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_nvram_check_version(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %8, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %14, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = call i32 %15(%struct.ath_hw* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %24, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %27 = call i32 %25(%struct.ath_hw* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %20, %3
  %31 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %32 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %35, align 8
  %37 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %38 = call i32 %36(%struct.ath_hw* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %42, align 8
  %44 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %45 = call i32 %43(%struct.ath_hw* %44)
  %46 = call i32 @ath_err(%struct.ath_common* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %45)
  store i32 0, i32* %4, align 4
  br label %48

47:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
