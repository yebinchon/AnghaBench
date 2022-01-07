; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_jedec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_jedec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_info = type { i32, i32, i64 }
%struct.stfsm = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"JEDEC =  0x%08x [%5ph]\0A\00", align 1
@flash_types = common dso_local global %struct.flash_info* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unrecognized JEDEC id %06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_info* (%struct.stfsm*)* @stfsm_jedec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_info* @stfsm_jedec_probe(%struct.stfsm* %0) #0 {
  %2 = alloca %struct.flash_info*, align 8
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca %struct.flash_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  %8 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %10 = call i32 @stfsm_read_jedec(%struct.stfsm* %8, i32* %9)
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %25 = load i32, i32* %24, align 16
  %26 = or i32 %23, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %28 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %32 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30, i32* %31)
  %33 = load %struct.flash_info*, %struct.flash_info** @flash_types, align 8
  store %struct.flash_info* %33, %struct.flash_info** %4, align 8
  br label %34

34:                                               ; preds = %60, %1
  %35 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %36 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %41 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %47 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %52 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %60

57:                                               ; preds = %50, %45
  %58 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  store %struct.flash_info* %58, %struct.flash_info** %2, align 8
  br label %69

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %56
  %61 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %62 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %61, i32 1
  store %struct.flash_info* %62, %struct.flash_info** %4, align 8
  br label %34

63:                                               ; preds = %34
  %64 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %65 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store %struct.flash_info* null, %struct.flash_info** %2, align 8
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.flash_info*, %struct.flash_info** %2, align 8
  ret %struct.flash_info* %70
}

declare dso_local i32 @stfsm_read_jedec(%struct.stfsm*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
