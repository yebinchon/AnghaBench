; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6352_serdes_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6352_serdes_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6352_serdes_hw_stat = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"failed to read statistic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.mv88e6352_serdes_hw_stat*)* @mv88e6352_serdes_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6352_serdes_get_stat(%struct.mv88e6xxx_chip* %0, %struct.mv88e6352_serdes_hw_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6352_serdes_hw_stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6352_serdes_hw_stat* %1, %struct.mv88e6352_serdes_hw_stat** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %10 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** %5, align 8
  %11 = getelementptr inbounds %struct.mv88e6352_serdes_hw_stat, %struct.mv88e6352_serdes_hw_stat* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @mv88e6352_serdes_read(%struct.mv88e6xxx_chip* %9, i64 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %18 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** %5, align 8
  %24 = getelementptr inbounds %struct.mv88e6352_serdes_hw_stat, %struct.mv88e6352_serdes_hw_stat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %29 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** %5, align 8
  %30 = getelementptr inbounds %struct.mv88e6352_serdes_hw_stat, %struct.mv88e6352_serdes_hw_stat* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @mv88e6352_serdes_read(%struct.mv88e6xxx_chip* %28, i64 %32, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %38 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %21
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %36, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @mv88e6352_serdes_read(%struct.mv88e6xxx_chip*, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
