; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_set_overwrite_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_set_overwrite_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i32, i8*, i32 }

@EROFS = common dso_local global i32 0, align 4
@MEMSTICK_CP_OVERWRITE = common dso_local global i32 0, align 4
@MS_CMD_BLOCK_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"changing overwrite flag to %02x for sector %d, page %d\00", align 1
@h_msb_send_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, i8*, i8*)* @msb_set_overwrite_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_set_overwrite_flag(%struct.msb_data* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %11 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EROFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %51

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  %20 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %21 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %26 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* @MEMSTICK_CP_OVERWRITE, align 4
  %30 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %31 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %36 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* @MS_CMD_BLOCK_WRITE, align 4
  %40 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %41 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %43 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @dbg_verbose(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45, i8* %46)
  %48 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %49 = load i32, i32* @h_msb_send_command, align 4
  %50 = call i32 @msb_run_state_machine(%struct.msb_data* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %17, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dbg_verbose(i8*, i8*, i32, i8*) #1

declare dso_local i32 @msb_run_state_machine(%struct.msb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
