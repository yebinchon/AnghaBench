; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_eeprom_struct_find_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_eeprom_struct_find_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_eeprom = type { i32 }

@ar9300_eep_templates = common dso_local global %struct.ar9300_eeprom** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ar9300_eeprom* (i32)* @ar9003_eeprom_struct_find_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ar9300_eeprom* @ar9003_eeprom_struct_find_by_id(i32 %0) #0 {
  %2 = alloca %struct.ar9300_eeprom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ar9300_eeprom**, %struct.ar9300_eeprom*** @ar9300_eep_templates, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.ar9300_eeprom** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = load %struct.ar9300_eeprom**, %struct.ar9300_eeprom*** @ar9300_eep_templates, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, i64 %13
  %15 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %16 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.ar9300_eeprom**, %struct.ar9300_eeprom*** @ar9300_eep_templates, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %21, i64 %23
  %25 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %24, align 8
  store %struct.ar9300_eeprom* %25, %struct.ar9300_eeprom** %2, align 8
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %5

30:                                               ; preds = %5
  store %struct.ar9300_eeprom* null, %struct.ar9300_eeprom** %2, align 8
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %2, align 8
  ret %struct.ar9300_eeprom* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.ar9300_eeprom**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
