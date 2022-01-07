; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"set_rx_mode: %u am_hiz %u\0A\00", align 1
@MAX2175_EU_XTAL_FREQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"setting AM HiZ related config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*, i32)* @max2175_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_set_rx_mode(%struct.max2175* %0, i32 %1) #0 {
  %3 = alloca %struct.max2175*, align 8
  %4 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.max2175*, %struct.max2175** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.max2175*, %struct.max2175** %3, align 8
  %8 = getelementptr inbounds %struct.max2175, %struct.max2175* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 (%struct.max2175*, i8*, ...) @mxm_dbg(%struct.max2175* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %9)
  %11 = load %struct.max2175*, %struct.max2175** %3, align 8
  %12 = getelementptr inbounds %struct.max2175, %struct.max2175* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX2175_EU_XTAL_FREQ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.max2175*, %struct.max2175** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @max2175_set_eu_rx_mode(%struct.max2175* %17, i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.max2175*, %struct.max2175** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @max2175_set_na_rx_mode(%struct.max2175* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.max2175*, %struct.max2175** %3, align 8
  %26 = getelementptr inbounds %struct.max2175, %struct.max2175* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.max2175*, %struct.max2175** %3, align 8
  %31 = call i32 (%struct.max2175*, i8*, ...) @mxm_dbg(%struct.max2175* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.max2175*, %struct.max2175** %3, align 8
  %33 = call i32 @max2175_write_bit(%struct.max2175* %32, i32 50, i32 5, i32 1)
  %34 = load %struct.max2175*, %struct.max2175** %3, align 8
  %35 = call i32 @max2175_write_bit(%struct.max2175* %34, i32 90, i32 7, i32 1)
  %36 = load %struct.max2175*, %struct.max2175** %3, align 8
  %37 = call i32 @max2175_write_bits(%struct.max2175* %36, i32 73, i32 1, i32 0, i32 2)
  %38 = load %struct.max2175*, %struct.max2175** %3, align 8
  %39 = call i32 @max2175_write_bits(%struct.max2175* %38, i32 80, i32 5, i32 0, i32 33)
  br label %40

40:                                               ; preds = %29, %24
  %41 = load %struct.max2175*, %struct.max2175** %3, align 8
  %42 = call i32 @max2175_set_bbfilter(%struct.max2175* %41)
  %43 = load %struct.max2175*, %struct.max2175** %3, align 8
  %44 = load %struct.max2175*, %struct.max2175** %3, align 8
  %45 = getelementptr inbounds %struct.max2175, %struct.max2175* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @max2175_set_hsls(%struct.max2175* %43, i32 %49)
  %51 = load %struct.max2175*, %struct.max2175** %3, align 8
  %52 = load %struct.max2175*, %struct.max2175** %3, align 8
  %53 = getelementptr inbounds %struct.max2175, %struct.max2175* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @max2175_i2s_enable(%struct.max2175* %51, i32 %57)
  %59 = load %struct.max2175*, %struct.max2175** %3, align 8
  %60 = getelementptr inbounds %struct.max2175, %struct.max2175* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  ret i32 0
}

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, ...) #1

declare dso_local i32 @max2175_set_eu_rx_mode(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_set_na_rx_mode(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_write_bit(%struct.max2175*, i32, i32, i32) #1

declare dso_local i32 @max2175_write_bits(%struct.max2175*, i32, i32, i32, i32) #1

declare dso_local i32 @max2175_set_bbfilter(%struct.max2175*) #1

declare dso_local i32 @max2175_set_hsls(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_i2s_enable(%struct.max2175*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
