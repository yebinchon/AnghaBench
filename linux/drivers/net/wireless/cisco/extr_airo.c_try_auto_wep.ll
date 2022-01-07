; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_try_auto_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_try_auto_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, i32, i32 }

@auto_wep = common dso_local global i64 0, align 8
@FLAG_RADIO_DOWN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @try_auto_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_auto_wep(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  %3 = load i64, i64* @auto_wep, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i32, i32* @FLAG_RADIO_DOWN, align 4
  %7 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %8 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %7, i32 0, i32 2
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 3, %12
  %14 = call i32 @RUN_AT(i32 %13)
  %15 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %16 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 0
  %19 = call i32 @wake_up_interruptible(i32* %18)
  br label %20

20:                                               ; preds = %11, %5, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @RUN_AT(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
