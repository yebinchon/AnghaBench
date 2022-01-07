; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_search_prepare_rw_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_search_prepare_rw_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32 }
%struct.stfsm_seq = type { i32 }
%struct.seq_rw_config = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to find suitable config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, %struct.stfsm_seq*, %struct.seq_rw_config*)* @stfsm_search_prepare_rw_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %0, %struct.stfsm_seq* %1, %struct.seq_rw_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stfsm*, align 8
  %6 = alloca %struct.stfsm_seq*, align 8
  %7 = alloca %struct.seq_rw_config*, align 8
  %8 = alloca %struct.seq_rw_config*, align 8
  store %struct.stfsm* %0, %struct.stfsm** %5, align 8
  store %struct.stfsm_seq* %1, %struct.stfsm_seq** %6, align 8
  store %struct.seq_rw_config* %2, %struct.seq_rw_config** %7, align 8
  %9 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %10 = load %struct.seq_rw_config*, %struct.seq_rw_config** %7, align 8
  %11 = call %struct.seq_rw_config* @stfsm_search_seq_rw_configs(%struct.stfsm* %9, %struct.seq_rw_config* %10)
  store %struct.seq_rw_config* %11, %struct.seq_rw_config** %8, align 8
  %12 = load %struct.seq_rw_config*, %struct.seq_rw_config** %8, align 8
  %13 = icmp ne %struct.seq_rw_config* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %16 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %23 = load %struct.stfsm_seq*, %struct.stfsm_seq** %6, align 8
  %24 = load %struct.seq_rw_config*, %struct.seq_rw_config** %8, align 8
  %25 = call i32 @stfsm_prepare_rw_seq(%struct.stfsm* %22, %struct.stfsm_seq* %23, %struct.seq_rw_config* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.seq_rw_config* @stfsm_search_seq_rw_configs(%struct.stfsm*, %struct.seq_rw_config*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stfsm_prepare_rw_seq(%struct.stfsm*, %struct.stfsm_seq*, %struct.seq_rw_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
