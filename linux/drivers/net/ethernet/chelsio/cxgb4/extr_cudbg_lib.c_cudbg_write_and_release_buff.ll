; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_write_and_release_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_write_and_release_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i64 }
%struct.cudbg_buffer = type { i32 }

@CUDBG_COMPRESSION_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*)* @cudbg_write_and_release_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_buffer* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_buffer* %2, %struct.cudbg_buffer** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %9 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CUDBG_COMPRESSION_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %16 = call i32 @cudbg_update_buff(%struct.cudbg_buffer* %14, %struct.cudbg_buffer* %15)
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %19 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %20 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %21 = call i32 @cudbg_do_compression(%struct.cudbg_init* %18, %struct.cudbg_buffer* %19, %struct.cudbg_buffer* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %27

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %13
  br label %27

27:                                               ; preds = %26, %24
  %28 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %29 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %30 = call i32 @cudbg_put_buff(%struct.cudbg_init* %28, %struct.cudbg_buffer* %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @cudbg_update_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @cudbg_do_compression(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
