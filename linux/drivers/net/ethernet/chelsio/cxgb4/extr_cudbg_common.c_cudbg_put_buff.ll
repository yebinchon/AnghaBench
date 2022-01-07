; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_common.c_cudbg_put_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_common.c_cudbg_put_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i64, i32, i32 }
%struct.cudbg_buffer = type { i64, i64, i32* }

@CUDBG_COMPRESSION_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cudbg_put_buff(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1) #0 {
  %3 = alloca %struct.cudbg_init*, align 8
  %4 = alloca %struct.cudbg_buffer*, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %3, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %4, align 8
  %5 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %6 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CUDBG_COMPRESSION_NONE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %12 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @memset(i32 %13, i32 0, i32 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
