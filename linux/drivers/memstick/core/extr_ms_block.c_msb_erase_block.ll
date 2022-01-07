; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"erasing pba %d\00", align 1
@MEMSTICK_CP_BLOCK = common dso_local global i32 0, align 4
@MS_CMD_BLOCK_ERASE = common dso_local global i32 0, align 4
@h_msb_send_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"erase failed, marking pba %d as bad\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"erase success, marking pba %d as unused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32)* @msb_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_erase_block(%struct.msb_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %9 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EROFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dbg_verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %53, %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cpu_to_be16(i32 %22)
  %24 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %25 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %29 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @MEMSTICK_CP_BLOCK, align 4
  %33 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %34 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @MS_CMD_BLOCK_ERASE, align 4
  %38 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %39 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %41 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %43 = load i32, i32* @h_msb_send_command, align 4
  %44 = call i32 @msb_run_state_machine(%struct.msb_data* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %21
  %48 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %49 = call i64 @msb_reset(%struct.msb_data* %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %21
  br label %56

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %18

56:                                               ; preds = %51, %18
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @msb_mark_bad(%struct.msb_data* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dbg_verbose(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @msb_mark_block_unused(%struct.msb_data* %68, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %73 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @__set_bit(i32 %71, i32 %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @dbg_verbose(i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @msb_run_state_machine(%struct.msb_data*, i32) #1

declare dso_local i64 @msb_reset(%struct.msb_data*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @msb_mark_bad(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_mark_block_unused(%struct.msb_data*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
