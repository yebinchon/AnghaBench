; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_int_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_int_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.memstick_request }
%struct.memstick_request = type { i32, i32, i32*, i32 }

@jiffies = common dso_local global i64 0, align 8
@MEMSTICK_INT_CMDNAK = common dso_local global i32 0, align 4
@MEMSTICK_CAP_AUTO_GET_INT = common dso_local global i32 0, align 4
@MS_TPC_GET_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i64)* @msb_read_int_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_read_int_reg(%struct.msb_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.memstick_request*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %8 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.memstick_request* %10, %struct.memstick_request** %6, align 8
  %11 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %12 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i64 [ 500, %25 ], [ %27, %26 ]
  %30 = trunc i64 %29 to i32
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = add nsw i64 %22, %31
  %33 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %34 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %36 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %51

37:                                               ; preds = %2
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %40 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @time_after(i64 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @MEMSTICK_INT_CMDNAK, align 4
  %46 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %47 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %82

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %53 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MEMSTICK_CAP_AUTO_GET_INT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %60 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %65 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %70 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %73 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %77 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %82

78:                                               ; preds = %63, %58, %51
  %79 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %80 = load i32, i32* @MS_TPC_GET_INT, align 4
  %81 = call i32 @memstick_init_req(%struct.memstick_request* %79, i32 %80, i32* null, i32 1)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %68, %44
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @memstick_init_req(%struct.memstick_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
