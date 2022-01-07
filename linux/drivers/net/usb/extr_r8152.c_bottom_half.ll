; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_bottom_half.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_bottom_half.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@WORK_ENABLE = common dso_local global i32 0, align 4
@SCHEDULE_TASKLET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bottom_half to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bottom_half(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.r8152*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.r8152*
  store %struct.r8152* %5, %struct.r8152** %3, align 8
  %6 = load i32, i32* @RTL8152_UNPLUG, align 4
  %7 = load %struct.r8152*, %struct.r8152** %3, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @WORK_ENABLE, align 4
  %14 = load %struct.r8152*, %struct.r8152** %3, align 8
  %15 = getelementptr inbounds %struct.r8152, %struct.r8152* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %33

19:                                               ; preds = %12
  %20 = load %struct.r8152*, %struct.r8152** %3, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_carrier_ok(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @SCHEDULE_TASKLET, align 4
  %28 = load %struct.r8152*, %struct.r8152** %3, align 8
  %29 = getelementptr inbounds %struct.r8152, %struct.r8152* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.r8152*, %struct.r8152** %3, align 8
  %32 = call i32 @tx_bottom(%struct.r8152* %31)
  br label %33

33:                                               ; preds = %26, %25, %18, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tx_bottom(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
