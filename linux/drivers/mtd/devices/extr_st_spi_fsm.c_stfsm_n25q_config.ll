; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_n25q_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_n25q_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FLASH_FLAG_32BIT_ADDR = common dso_local global i32 0, align 4
@n25q_read4_configs = common dso_local global i32 0, align 4
@n25q_read3_configs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to prepare READ sequence with flags [0x%08x]\0A\00", align 1
@default_write_configs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"preparing WRITE sequence using flags [0x%08x] failed\0A\00", align 1
@stfsm_seq_erase_sector = common dso_local global i32 0, align 4
@CFG_WRITE_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@CFG_ERASESEC_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@N25Q_VCR_XIP_DISABLED = common dso_local global i32 0, align 4
@N25Q_VCR_WRAP_CONT = common dso_local global i32 0, align 4
@N25Q_CMD_WRVCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_n25q_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_n25q_config(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  %8 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %9 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FLASH_FLAG_32BIT_ADDR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %19 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %20 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %19, i32 0, i32 5
  %21 = load i32, i32* @n25q_read4_configs, align 4
  %22 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %18, i32* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %25 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %26 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %25, i32 0, i32 5
  %27 = load i32, i32* @n25q_read3_configs, align 4
  %28 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %24, i32* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %34 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %94

39:                                               ; preds = %29
  %40 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %41 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %42 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %41, i32 0, i32 4
  %43 = load i32, i32* @default_write_configs, align 4
  %44 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %40, i32* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %49 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %94

54:                                               ; preds = %39
  %55 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %56 = call i32 @stfsm_prepare_erasesec_seq(%struct.stfsm* %55, i32* @stfsm_seq_erase_sector)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @FLASH_FLAG_32BIT_ADDR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %63 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %62, i32 0, i32 2
  %64 = call i32 @stfsm_n25q_en_32bit_addr_seq(i32* %63)
  %65 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %66 = call i32 @stfsm_can_handle_soc_reset(%struct.stfsm* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %71 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %76 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %75, i32 1)
  br label %83

77:                                               ; preds = %69
  %78 = load i32, i32* @CFG_WRITE_TOGGLE_32BIT_ADDR, align 4
  %79 = load i32, i32* @CFG_ERASESEC_TOGGLE_32BIT_ADDR, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %82 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %74
  br label %84

84:                                               ; preds = %83, %54
  %85 = call i32 @N25Q_VCR_DUMMY_CYCLES(i32 8)
  %86 = load i32, i32* @N25Q_VCR_XIP_DISABLED, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @N25Q_VCR_WRAP_CONT, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %91 = load i32, i32* @N25Q_CMD_WRVCR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @stfsm_write_status(%struct.stfsm* %90, i32 %91, i32 %92, i32 1, i32 0)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %84, %47, %32
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @stfsm_search_prepare_rw_seq(%struct.stfsm*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @stfsm_prepare_erasesec_seq(%struct.stfsm*, i32*) #1

declare dso_local i32 @stfsm_n25q_en_32bit_addr_seq(i32*) #1

declare dso_local i32 @stfsm_can_handle_soc_reset(%struct.stfsm*) #1

declare dso_local i32 @stfsm_enter_32bit_addr(%struct.stfsm*, i32) #1

declare dso_local i32 @N25Q_VCR_DUMMY_CYCLES(i32) #1

declare dso_local i32 @stfsm_write_status(%struct.stfsm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
