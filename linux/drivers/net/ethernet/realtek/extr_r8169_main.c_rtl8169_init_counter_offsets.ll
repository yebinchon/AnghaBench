; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_init_counter_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_init_counter_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.TYPE_2__, %struct.rtl8169_counters* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rtl8169_counters = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @rtl8169_init_counter_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_init_counter_offsets(%struct.rtl8169_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.rtl8169_counters*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 1
  %8 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %7, align 8
  store %struct.rtl8169_counters* %8, %struct.rtl8169_counters** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %17 = call i64 @rtl8169_reset_counters(%struct.rtl8169_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %22 = call i64 @rtl8169_update_counters(%struct.rtl8169_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %4, align 8
  %27 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %30 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %4, align 8
  %33 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %36 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %4, align 8
  %39 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %42 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %25, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @rtl8169_reset_counters(%struct.rtl8169_private*) #1

declare dso_local i64 @rtl8169_update_counters(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
