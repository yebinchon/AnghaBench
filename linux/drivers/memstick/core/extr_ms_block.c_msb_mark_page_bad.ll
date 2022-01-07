; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_mark_page_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_mark_page_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"marking page %d of pba %d as bad\00", align 1
@MEMSTICK_OVERWRITE_PGST0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, i32)* @msb_mark_page_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_mark_page_bad(%struct.msb_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %11 = call i32 @msb_reset(%struct.msb_data* %10, i32 1)
  %12 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MEMSTICK_OVERWRITE_PGST0, align 4
  %16 = xor i32 %15, -1
  %17 = call i32 @msb_set_overwrite_flag(%struct.msb_data* %12, i32 %13, i32 %14, i32 %16)
  ret i32 %17
}

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @msb_reset(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_set_overwrite_flag(%struct.msb_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
