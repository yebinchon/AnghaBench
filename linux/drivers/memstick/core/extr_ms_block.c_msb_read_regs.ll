; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.memstick_request }
%struct.memstick_request = type { i32 }

@MS_TPC_SET_RW_REG_ADRS = common dso_local global i32 0, align 4
@MS_TPC_READ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, i32)* @msb_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_read_regs(%struct.msb_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.memstick_request*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %10 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.memstick_request* %12, %struct.memstick_request** %8, align 8
  %13 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %14 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %21 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %28 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %26, %19, %3
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %34 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %38 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %41 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %43 = load i32, i32* @MS_TPC_SET_RW_REG_ADRS, align 4
  %44 = load %struct.msb_data*, %struct.msb_data** %5, align 8
  %45 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %44, i32 0, i32 1
  %46 = call i32 @memstick_init_req(%struct.memstick_request* %42, i32 %43, %struct.TYPE_4__* %45, i32 8)
  store i32 0, i32* %4, align 4
  br label %52

47:                                               ; preds = %26
  %48 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %49 = load i32, i32* @MS_TPC_READ_REG, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @memstick_init_req(%struct.memstick_request* %48, i32 %49, %struct.TYPE_4__* null, i32 %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %31
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @memstick_init_req(%struct.memstick_request*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
