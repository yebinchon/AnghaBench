; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_stats_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_stats_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_hw_stat = type { i32, i32 }
%struct.mv88e6xxx_chip = type { i32 }

@mv88e6xxx_hw_stats = common dso_local global %struct.mv88e6xxx_hw_stat* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32*, i32)* @mv88e6xxx_stats_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_stats_get_strings(%struct.mv88e6xxx_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_hw_stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** @mv88e6xxx_hw_stats, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.mv88e6xxx_hw_stat* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** @mv88e6xxx_hw_stats, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %16, i64 %18
  store %struct.mv88e6xxx_hw_stat* %19, %struct.mv88e6xxx_hw_stat** %7, align 8
  %20 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %7, align 8
  %21 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %15
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %7, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %37 = call i32 @memcpy(i32* %32, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %26, %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %10

44:                                               ; preds = %10
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @ARRAY_SIZE(%struct.mv88e6xxx_hw_stat*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
