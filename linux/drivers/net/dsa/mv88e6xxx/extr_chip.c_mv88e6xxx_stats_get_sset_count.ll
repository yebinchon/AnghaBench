; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_stats_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_stats_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_hw_stat = type { i32 }
%struct.mv88e6xxx_chip = type { i32 }

@mv88e6xxx_hw_stats = common dso_local global %struct.mv88e6xxx_hw_stat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32)* @mv88e6xxx_stats_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_stats_get_sset_count(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_hw_stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** @mv88e6xxx_hw_stats, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.mv88e6xxx_hw_stat* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** @mv88e6xxx_hw_stats, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %14, i64 %16
  store %struct.mv88e6xxx_hw_stat* %17, %struct.mv88e6xxx_hw_stat** %5, align 8
  %18 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %5, align 8
  %19 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.mv88e6xxx_hw_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
