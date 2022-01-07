; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_load_c8sectpfe_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_load_c8sectpfe_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfei = type { i32, i64, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Loading firmware: %s\0A\00", align 1
@FIRMWARE_MEMDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"c8sectpfe_elf_sanity_check failed err=(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"load_slim_core_fw failed err=(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"configure_channels failed err=(%d)\0A\00", align 1
@DMA_PER_STBUS_SYNC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Boot the memdma SLIM core\0A\00", align 1
@DMA_CPU_RUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c8sectpfei*)* @load_c8sectpfe_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_c8sectpfe_fw(%struct.c8sectpfei* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c8sectpfei*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  store %struct.c8sectpfei* %0, %struct.c8sectpfei** %3, align 8
  %6 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %7 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FIRMWARE_MEMDMA, align 4
  %10 = call i32 (i32, i8*, ...) @dev_info(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @FIRMWARE_MEMDMA, align 4
  %12 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %13 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @request_firmware(%struct.firmware** %4, i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %22 = load %struct.firmware*, %struct.firmware** %4, align 8
  %23 = call i32 @c8sectpfe_elf_sanity_check(%struct.c8sectpfei* %21, %struct.firmware* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %28 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.firmware*, %struct.firmware** %4, align 8
  %33 = call i32 @release_firmware(%struct.firmware* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %20
  %36 = load %struct.firmware*, %struct.firmware** %4, align 8
  %37 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %38 = call i32 @load_slim_core_fw(%struct.firmware* %36, %struct.c8sectpfei* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %43 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %80

48:                                               ; preds = %35
  %49 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %50 = call i32 @configure_channels(%struct.c8sectpfei* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %55 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %48
  %61 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %62 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DMA_PER_STBUS_SYNC, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 1, i64 %65)
  %67 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %68 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_info(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %72 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DMA_CPU_RUN, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 1, i64 %75)
  %77 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %78 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %77, i32 0, i32 0
  %79 = call i32 @atomic_set(i32* %78, i32 1)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %60, %53, %41, %26, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @c8sectpfe_elf_sanity_check(%struct.c8sectpfei*, %struct.firmware*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @load_slim_core_fw(%struct.firmware*, %struct.c8sectpfei*) #1

declare dso_local i32 @configure_channels(%struct.c8sectpfei*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
