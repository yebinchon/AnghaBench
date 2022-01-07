; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_load_from_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_load_from_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2175*)* @max2175_load_from_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2175_load_from_rom(%struct.max2175* %0) #0 {
  %2 = alloca %struct.max2175*, align 8
  %3 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.max2175*, %struct.max2175** %2, align 8
  %5 = call i32 @max2175_read_rom(%struct.max2175* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 15
  %8 = load %struct.max2175*, %struct.max2175** %2, align 8
  %9 = getelementptr inbounds %struct.max2175, %struct.max2175* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.max2175*, %struct.max2175** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 4
  %13 = call i32 @max2175_write_bits(%struct.max2175* %10, i32 81, i32 3, i32 0, i32 %12)
  %14 = load %struct.max2175*, %struct.max2175** %2, align 8
  %15 = call i32 @max2175_read_rom(%struct.max2175* %14, i32 1)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 15
  %18 = load %struct.max2175*, %struct.max2175** %2, align 8
  %19 = getelementptr inbounds %struct.max2175, %struct.max2175* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 4
  %22 = load %struct.max2175*, %struct.max2175** %2, align 8
  %23 = getelementptr inbounds %struct.max2175, %struct.max2175* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.max2175*, %struct.max2175** %2, align 8
  %25 = call i32 @max2175_read_rom(%struct.max2175* %24, i32 2)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.max2175*, %struct.max2175** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 31
  %29 = call i32 @max2175_write_bits(%struct.max2175* %26, i32 82, i32 4, i32 0, i32 %28)
  %30 = load %struct.max2175*, %struct.max2175** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 5
  %33 = call i32 @max2175_write_bits(%struct.max2175* %30, i32 82, i32 7, i32 5, i32 %32)
  %34 = load %struct.max2175*, %struct.max2175** %2, align 8
  %35 = call i32 @max2175_read_rom(%struct.max2175* %34, i32 3)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.max2175*, %struct.max2175** %2, align 8
  %37 = getelementptr inbounds %struct.max2175, %struct.max2175* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 15
  store i32 %42, i32* %3, align 4
  %43 = load %struct.max2175*, %struct.max2175** %2, align 8
  %44 = call i32 @max2175_read_rom(%struct.max2175* %43, i32 7)
  %45 = and i32 %44, 64
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, 2
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %40
  br label %71

55:                                               ; preds = %1
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 240
  %58 = ashr i32 %57, 4
  store i32 %58, i32* %3, align 4
  %59 = load %struct.max2175*, %struct.max2175** %2, align 8
  %60 = call i32 @max2175_read_rom(%struct.max2175* %59, i32 7)
  %61 = and i32 %60, 128
  %62 = ashr i32 %61, 3
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, 30
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %55
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.max2175*, %struct.max2175** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 31
  %75 = call i32 @max2175_write_bits(%struct.max2175* %72, i32 80, i32 5, i32 0, i32 %74)
  %76 = load %struct.max2175*, %struct.max2175** %2, align 8
  %77 = call i32 @max2175_read_rom(%struct.max2175* %76, i32 6)
  store i32 %77, i32* %3, align 4
  %78 = load %struct.max2175*, %struct.max2175** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = ashr i32 %79, 6
  %81 = call i32 @max2175_write_bits(%struct.max2175* %78, i32 81, i32 7, i32 6, i32 %80)
  ret void
}

declare dso_local i32 @max2175_read_rom(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_write_bits(%struct.max2175*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
