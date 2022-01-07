; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_nco_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_nco_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"freq %d desired %lld reg %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*, i32)* @max2175_set_nco_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_set_nco_freq(%struct.max2175* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max2175*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.max2175*, %struct.max2175** %4, align 8
  %12 = getelementptr inbounds %struct.max2175, %struct.max2175* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.max2175*, %struct.max2175** %4, align 8
  %15 = getelementptr inbounds %struct.max2175, %struct.max2175* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @abs(i32 %18) #3
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 2, %25
  store i32 %26, i32* %9, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 2, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 20
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @max2175_round_closest(i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2097152
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.max2175*, %struct.max2175** %4, align 8
  %52 = call i32 @max2175_poll_csm_ready(%struct.max2175* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %50
  %58 = load %struct.max2175*, %struct.max2175** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mxm_dbg(%struct.max2175* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load %struct.max2175*, %struct.max2175** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 31
  %67 = call i32 @max2175_write_bits(%struct.max2175* %63, i32 7, i32 4, i32 0, i32 %66)
  %68 = load %struct.max2175*, %struct.max2175** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 8
  %71 = call i32 @max2175_write(%struct.max2175* %68, i32 8, i32 %70)
  %72 = load %struct.max2175*, %struct.max2175** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @max2175_write(%struct.max2175* %72, i32 9, i32 %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %57, %55
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @max2175_round_closest(i32, i32) #2

declare dso_local i32 @max2175_poll_csm_ready(%struct.max2175*) #2

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32, i32, i32) #2

declare dso_local i32 @max2175_write_bits(%struct.max2175*, i32, i32, i32, i32) #2

declare dso_local i32 @max2175_write(%struct.max2175*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
