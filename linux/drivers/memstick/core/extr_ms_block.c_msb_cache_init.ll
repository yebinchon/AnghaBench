; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64, i32, i32 }

@msb_cache_flush_timer = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*)* @msb_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_cache_init(%struct.msb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msb_data*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  %4 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %5 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %4, i32 0, i32 2
  %6 = load i32, i32* @msb_cache_flush_timer, align 4
  %7 = call i32 @timer_setup(i32* %5, i32 %6, i32 0)
  %8 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %9 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %14 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @kzalloc(i32 %15, i32 %16)
  %18 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %19 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %22 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %30 = call i32 @msb_cache_discard(%struct.msb_data* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @msb_cache_discard(%struct.msb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
