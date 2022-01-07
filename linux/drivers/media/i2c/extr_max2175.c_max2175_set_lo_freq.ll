; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_lo_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_lo_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@MAX2175_BAND_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lo_mult %u int %u  frac %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*, i32)* @max2175_set_lo_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_set_lo_freq(%struct.max2175* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max2175*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.max2175*, %struct.max2175** %4, align 8
  %14 = call i32 @max2175_read_bits(%struct.max2175* %13, i32 5, i32 1, i32 0)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  switch i32 %15, label %37 [
    i32 130, label %16
    i32 129, label %17
    i32 128, label %31
  ]

16:                                               ; preds = %2
  store i32 16, i32* %6, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 74700000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 16, i32* %6, align 4
  br label %30

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 74700000
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 110000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  store i32 8, i32* %6, align 4
  br label %29

28:                                               ; preds = %24, %21
  store i32 1, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 8, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %20
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp sle i32 %32, 210000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 2, i32* %8, align 4
  br label %36

35:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %34
  store i32 2, i32* %7, align 4
  store i32 4, i32* %6, align 4
  br label %38

37:                                               ; preds = %2
  store i32 3, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 2, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %36, %30, %16
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MAX2175_BAND_L, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.max2175*, %struct.max2175** %4, align 8
  %53 = getelementptr inbounds %struct.max2175, %struct.max2175* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.max2175*, %struct.max2175** %4, align 8
  %58 = getelementptr inbounds %struct.max2175, %struct.max2175* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %56, %59
  %61 = shl i32 %60, 20
  %62 = load %struct.max2175*, %struct.max2175** %4, align 8
  %63 = getelementptr inbounds %struct.max2175, %struct.max2175* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @div_u64(i32 %61, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.max2175*, %struct.max2175** %4, align 8
  %67 = call i32 @max2175_poll_csm_ready(%struct.max2175* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %50
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %50
  %73 = load %struct.max2175*, %struct.max2175** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @mxm_dbg(%struct.max2175* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  %78 = load %struct.max2175*, %struct.max2175** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @max2175_write(%struct.max2175* %78, i32 1, i32 %79)
  %81 = load %struct.max2175*, %struct.max2175** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 16
  %84 = and i32 %83, 15
  %85 = call i32 @max2175_write_bits(%struct.max2175* %81, i32 2, i32 3, i32 0, i32 %84)
  %86 = load %struct.max2175*, %struct.max2175** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 8
  %89 = call i32 @max2175_write(%struct.max2175* %86, i32 3, i32 %88)
  %90 = load %struct.max2175*, %struct.max2175** %4, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @max2175_write(%struct.max2175* %90, i32 4, i32 %91)
  %93 = load %struct.max2175*, %struct.max2175** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @max2175_write_bits(%struct.max2175* %93, i32 5, i32 3, i32 2, i32 %94)
  %96 = load %struct.max2175*, %struct.max2175** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @max2175_write_bits(%struct.max2175* %96, i32 6, i32 7, i32 6, i32 %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %72, %70
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @max2175_read_bits(%struct.max2175*, i32, i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @max2175_poll_csm_ready(%struct.max2175*) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32, i32, i32) #1

declare dso_local i32 @max2175_write(%struct.max2175*, i32, i32) #1

declare dso_local i32 @max2175_write_bits(%struct.max2175*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
