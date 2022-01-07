; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_bbfilter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_bbfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"set_bbfilter AM: rom %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"set_bbfilter DAB: rom %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set_bbfilter FM: rom %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2175*)* @max2175_set_bbfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2175_set_bbfilter(%struct.max2175* %0) #0 {
  %2 = alloca %struct.max2175*, align 8
  store %struct.max2175* %0, %struct.max2175** %2, align 8
  %3 = load %struct.max2175*, %struct.max2175** %2, align 8
  %4 = call i64 @MAX2175_IS_BAND_AM(%struct.max2175* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.max2175*, %struct.max2175** %2, align 8
  %8 = load %struct.max2175*, %struct.max2175** %2, align 8
  %9 = getelementptr inbounds %struct.max2175, %struct.max2175* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @max2175_write_bits(%struct.max2175* %7, i32 12, i32 3, i32 0, i32 %10)
  %12 = load %struct.max2175*, %struct.max2175** %2, align 8
  %13 = load %struct.max2175*, %struct.max2175** %2, align 8
  %14 = getelementptr inbounds %struct.max2175, %struct.max2175* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mxm_dbg(%struct.max2175* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.max2175*, %struct.max2175** %2, align 8
  %19 = call i64 @MAX2175_IS_DAB_MODE(%struct.max2175* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.max2175*, %struct.max2175** %2, align 8
  %23 = load %struct.max2175*, %struct.max2175** %2, align 8
  %24 = getelementptr inbounds %struct.max2175, %struct.max2175* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @max2175_write_bits(%struct.max2175* %22, i32 12, i32 3, i32 0, i32 %25)
  %27 = load %struct.max2175*, %struct.max2175** %2, align 8
  %28 = load %struct.max2175*, %struct.max2175** %2, align 8
  %29 = getelementptr inbounds %struct.max2175, %struct.max2175* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mxm_dbg(%struct.max2175* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.max2175*, %struct.max2175** %2, align 8
  %34 = load %struct.max2175*, %struct.max2175** %2, align 8
  %35 = getelementptr inbounds %struct.max2175, %struct.max2175* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @max2175_write_bits(%struct.max2175* %33, i32 12, i32 3, i32 0, i32 %36)
  %38 = load %struct.max2175*, %struct.max2175** %2, align 8
  %39 = load %struct.max2175*, %struct.max2175** %2, align 8
  %40 = getelementptr inbounds %struct.max2175, %struct.max2175* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mxm_dbg(%struct.max2175* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32, %21
  br label %44

44:                                               ; preds = %43, %6
  ret void
}

declare dso_local i64 @MAX2175_IS_BAND_AM(%struct.max2175*) #1

declare dso_local i32 @max2175_write_bits(%struct.max2175*, i32, i32, i32, i32) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32) #1

declare dso_local i64 @MAX2175_IS_DAB_MODE(%struct.max2175*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
