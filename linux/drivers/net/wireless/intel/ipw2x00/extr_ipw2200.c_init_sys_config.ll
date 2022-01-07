; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_init_sys_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_init_sys_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_sys_config = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@antenna = common dso_local global i64 0, align 8
@CFG_SYS_ANTENNA_BOTH = common dso_local global i64 0, align 8
@CFG_SYS_ANTENNA_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_sys_config*)* @init_sys_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sys_config(%struct.ipw_sys_config* %0) #0 {
  %2 = alloca %struct.ipw_sys_config*, align 8
  store %struct.ipw_sys_config* %0, %struct.ipw_sys_config** %2, align 8
  %3 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %4 = call i32 @memset(%struct.ipw_sys_config* %3, i32 0, i32 104)
  %5 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %5, i32 0, i32 14
  store i64 0, i64* %6, align 8
  %7 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %7, i32 0, i32 13
  store i64 0, i64* %8, align 8
  %9 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %9, i32 0, i32 12
  store i64 0, i64* %10, align 8
  %11 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %12 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %14 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %13, i32 0, i32 11
  store i64 0, i64* %14, align 8
  %15 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %18 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = load i64, i64* @antenna, align 8
  %22 = load i64, i64* @CFG_SYS_ANTENNA_BOTH, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @antenna, align 8
  %26 = load i64, i64* @CFG_SYS_ANTENNA_B, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %1
  %29 = load i64, i64* @CFG_SYS_ANTENNA_BOTH, align 8
  store i64 %29, i64* @antenna, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* @antenna, align 8
  %32 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %33 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %32, i32 0, i32 9
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %35 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %37 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %41 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %43 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load %struct.ipw_sys_config*, %struct.ipw_sys_config** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_sys_config, %struct.ipw_sys_config* %44, i32 0, i32 4
  store i32 30, i32* %45, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ipw_sys_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
