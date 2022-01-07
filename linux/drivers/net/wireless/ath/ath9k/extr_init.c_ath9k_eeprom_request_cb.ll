; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_eeprom_request_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_eeprom_request_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.ath9k_eeprom_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.firmware* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @ath9k_eeprom_request_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_eeprom_request_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ath9k_eeprom_ctx*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ath9k_eeprom_ctx*
  store %struct.ath9k_eeprom_ctx* %7, %struct.ath9k_eeprom_ctx** %5, align 8
  %8 = load %struct.firmware*, %struct.firmware** %3, align 8
  %9 = icmp ne %struct.firmware* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.firmware*, %struct.firmware** %3, align 8
  %12 = load %struct.ath9k_eeprom_ctx*, %struct.ath9k_eeprom_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.ath9k_eeprom_ctx, %struct.ath9k_eeprom_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.firmware* %11, %struct.firmware** %15, align 8
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.ath9k_eeprom_ctx*, %struct.ath9k_eeprom_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_eeprom_ctx, %struct.ath9k_eeprom_ctx* %17, i32 0, i32 0
  %19 = call i32 @complete(i32* %18)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
