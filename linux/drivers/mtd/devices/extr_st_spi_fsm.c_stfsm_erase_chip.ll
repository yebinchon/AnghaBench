; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_erase_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_erase_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32 }
%struct.stfsm = type { i32 }

@stfsm_seq_erase_chip = common dso_local global %struct.stfsm_seq zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"erasing chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_erase_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_erase_chip(%struct.stfsm* %0) #0 {
  %2 = alloca %struct.stfsm*, align 8
  %3 = alloca %struct.stfsm_seq*, align 8
  store %struct.stfsm* %0, %struct.stfsm** %2, align 8
  store %struct.stfsm_seq* @stfsm_seq_erase_chip, %struct.stfsm_seq** %3, align 8
  %4 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %5 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %9 = load %struct.stfsm_seq*, %struct.stfsm_seq** %3, align 8
  %10 = call i32 @stfsm_load_seq(%struct.stfsm* %8, %struct.stfsm_seq* %9)
  %11 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %12 = call i32 @stfsm_wait_seq(%struct.stfsm* %11)
  %13 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %14 = call i32 @stfsm_wait_busy(%struct.stfsm* %13)
  ret i32 %14
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

declare dso_local i32 @stfsm_wait_busy(%struct.stfsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
