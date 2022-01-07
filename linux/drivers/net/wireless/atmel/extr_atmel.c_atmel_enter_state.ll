; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_enter_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_enter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i64, i32 }

@STATION_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32)* @atmel_enter_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_enter_state(%struct.atmel_private* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STATION_STATE_READY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_start_queue(i32 %23)
  %25 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_carrier_on(i32 %27)
  br label %29

29:                                               ; preds = %20, %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @STATION_STATE_READY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %35 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netif_carrier_off(i32 %36)
  %38 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @netif_running(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netif_stop_queue(i32 %46)
  br label %48

48:                                               ; preds = %43, %33
  %49 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %50 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %12, %48, %29
  ret void
}

declare dso_local i32 @netif_start_queue(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
