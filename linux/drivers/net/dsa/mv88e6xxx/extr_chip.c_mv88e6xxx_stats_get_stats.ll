; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_stats_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_stats_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_hw_stat = type { i32 }
%struct.mv88e6xxx_chip = type { i32 }

@mv88e6xxx_hw_stats = common dso_local global %struct.mv88e6xxx_hw_stat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32*, i32, i32, i32)* @mv88e6xxx_stats_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_stats_get_stats(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mv88e6xxx_hw_stat*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %50, %6
  %17 = load i32, i32* %14, align 4
  %18 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** @mv88e6xxx_hw_stats, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.mv88e6xxx_hw_stat* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** @mv88e6xxx_hw_stats, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %22, i64 %24
  store %struct.mv88e6xxx_hw_stat* %25, %struct.mv88e6xxx_hw_stat** %13, align 8
  %26 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %13, align 8
  %27 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %21
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %34 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %33)
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %36 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @_mv88e6xxx_get_ethtool_stat(%struct.mv88e6xxx_chip* %35, %struct.mv88e6xxx_hw_stat* %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %46 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %45)
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %32, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load i32, i32* %15, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(%struct.mv88e6xxx_hw_stat*) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @_mv88e6xxx_get_ethtool_stat(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_hw_stat*, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
