; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_sram-exec.c_sram_check_protect_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_sram-exec.c_sram_check_protect_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_dev = type { i32 }
%struct.sram_reserve = type { i64 }
%struct.sram_partition = type { i64 }

@.str = private unnamed_addr constant [83 x i8] c"SRAM pool marked with 'protect-exec' is not page aligned and will not be created.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sram_check_protect_exec(%struct.sram_dev* %0, %struct.sram_reserve* %1, %struct.sram_partition* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sram_dev*, align 8
  %6 = alloca %struct.sram_reserve*, align 8
  %7 = alloca %struct.sram_partition*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sram_dev* %0, %struct.sram_dev** %5, align 8
  store %struct.sram_reserve* %1, %struct.sram_reserve** %6, align 8
  store %struct.sram_partition* %2, %struct.sram_partition** %7, align 8
  %10 = load %struct.sram_partition*, %struct.sram_partition** %7, align 8
  %11 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %15 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @PAGE_ALIGNED(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @PAGE_ALIGNED(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %27 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
