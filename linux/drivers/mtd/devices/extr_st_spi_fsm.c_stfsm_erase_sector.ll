; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_erase_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_erase_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32, i32 }
%struct.stfsm = type { i32, i32 }

@stfsm_seq_erase_sector = common dso_local global %struct.stfsm_seq zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"erasing sector at 0x%08x\0A\00", align 1
@CFG_ERASESEC_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@CFG_S25FL_CHECK_ERROR_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32)* @stfsm_erase_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_erase_sector(%struct.stfsm* %0, i32 %1) #0 {
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stfsm_seq*, align 8
  %6 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.stfsm_seq* @stfsm_seq_erase_sector, %struct.stfsm_seq** %5, align 8
  %7 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %8 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %13 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CFG_ERASESEC_TOGGLE_32BIT_ADDR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %20 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %19, i32 1)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 65535
  %25 = load %struct.stfsm_seq*, %struct.stfsm_seq** %5, align 8
  %26 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 65535
  %29 = load %struct.stfsm_seq*, %struct.stfsm_seq** %5, align 8
  %30 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %32 = load %struct.stfsm_seq*, %struct.stfsm_seq** %5, align 8
  %33 = call i32 @stfsm_load_seq(%struct.stfsm* %31, %struct.stfsm_seq* %32)
  %34 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %35 = call i32 @stfsm_wait_seq(%struct.stfsm* %34)
  %36 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %37 = call i32 @stfsm_wait_busy(%struct.stfsm* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %21
  %41 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %42 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CFG_S25FL_CHECK_ERROR_FLAGS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %49 = call i32 @stfsm_s25fl_clear_status_reg(%struct.stfsm* %48)
  br label %50

50:                                               ; preds = %47, %40, %21
  %51 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %52 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CFG_ERASESEC_TOGGLE_32BIT_ADDR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %59 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @stfsm_enter_32bit_addr(%struct.stfsm*, i32) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

declare dso_local i32 @stfsm_wait_busy(%struct.stfsm*) #1

declare dso_local i32 @stfsm_s25fl_clear_status_reg(%struct.stfsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
