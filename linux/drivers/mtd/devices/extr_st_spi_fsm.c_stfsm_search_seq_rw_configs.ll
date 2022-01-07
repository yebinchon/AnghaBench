; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_search_seq_rw_configs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_search_seq_rw_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.seq_rw_config = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.seq_rw_config* (%struct.stfsm*, %struct.seq_rw_config*)* @stfsm_search_seq_rw_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.seq_rw_config* @stfsm_search_seq_rw_configs(%struct.stfsm* %0, %struct.seq_rw_config* %1) #0 {
  %3 = alloca %struct.seq_rw_config*, align 8
  %4 = alloca %struct.stfsm*, align 8
  %5 = alloca %struct.seq_rw_config*, align 8
  %6 = alloca %struct.seq_rw_config*, align 8
  %7 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %4, align 8
  store %struct.seq_rw_config* %1, %struct.seq_rw_config** %5, align 8
  %8 = load %struct.stfsm*, %struct.stfsm** %4, align 8
  %9 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.seq_rw_config*, %struct.seq_rw_config** %5, align 8
  store %struct.seq_rw_config* %13, %struct.seq_rw_config** %6, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.seq_rw_config*, %struct.seq_rw_config** %6, align 8
  %16 = getelementptr inbounds %struct.seq_rw_config, %struct.seq_rw_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.seq_rw_config*, %struct.seq_rw_config** %6, align 8
  %21 = getelementptr inbounds %struct.seq_rw_config, %struct.seq_rw_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.seq_rw_config*, %struct.seq_rw_config** %6, align 8
  %26 = getelementptr inbounds %struct.seq_rw_config, %struct.seq_rw_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load %struct.seq_rw_config*, %struct.seq_rw_config** %6, align 8
  store %struct.seq_rw_config* %30, %struct.seq_rw_config** %3, align 8
  br label %36

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.seq_rw_config*, %struct.seq_rw_config** %6, align 8
  %34 = getelementptr inbounds %struct.seq_rw_config, %struct.seq_rw_config* %33, i32 1
  store %struct.seq_rw_config* %34, %struct.seq_rw_config** %6, align 8
  br label %14

35:                                               ; preds = %14
  store %struct.seq_rw_config* null, %struct.seq_rw_config** %3, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.seq_rw_config*, %struct.seq_rw_config** %3, align 8
  ret %struct.seq_rw_config* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
