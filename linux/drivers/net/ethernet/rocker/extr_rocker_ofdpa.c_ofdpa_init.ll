; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.ofdpa* }
%struct.ofdpa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rocker* }

@ofdpa_fdb_cleanup = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@BR_DEFAULT_AGEING_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @ofdpa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_init(%struct.rocker* %0) #0 {
  %2 = alloca %struct.rocker*, align 8
  %3 = alloca %struct.ofdpa*, align 8
  store %struct.rocker* %0, %struct.rocker** %2, align 8
  %4 = load %struct.rocker*, %struct.rocker** %2, align 8
  %5 = getelementptr inbounds %struct.rocker, %struct.rocker* %4, i32 0, i32 0
  %6 = load %struct.ofdpa*, %struct.ofdpa** %5, align 8
  store %struct.ofdpa* %6, %struct.ofdpa** %3, align 8
  %7 = load %struct.rocker*, %struct.rocker** %2, align 8
  %8 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %9 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %8, i32 0, i32 12
  store %struct.rocker* %7, %struct.rocker** %9, align 8
  %10 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %11 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hash_init(i32 %12)
  %14 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %15 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %14, i32 0, i32 10
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %18 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hash_init(i32 %19)
  %21 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %22 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %21, i32 0, i32 8
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %25 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hash_init(i32 %26)
  %28 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %29 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %28, i32 0, i32 6
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %32 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hash_init(i32 %33)
  %35 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %36 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %39 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hash_init(i32 %40)
  %42 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %43 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %46 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %45, i32 0, i32 1
  %47 = load i32, i32* @ofdpa_fdb_cleanup, align 4
  %48 = call i32 @timer_setup(i32* %46, i32 %47, i32 0)
  %49 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %50 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %49, i32 0, i32 1
  %51 = load i32, i32* @jiffies, align 4
  %52 = call i32 @mod_timer(i32* %50, i32 %51)
  %53 = load i32, i32* @BR_DEFAULT_AGEING_TIME, align 4
  %54 = load %struct.ofdpa*, %struct.ofdpa** %3, align 8
  %55 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret i32 0
}

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
