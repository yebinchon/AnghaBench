; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6352_serdes_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6352_serdes_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6352_serdes_hw_stat = type { i32 }
%struct.mv88e6xxx_chip = type { i32 }

@mv88e6352_serdes_hw_stats = common dso_local global %struct.mv88e6352_serdes_hw_stat* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6352_serdes_get_strings(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mv88e6352_serdes_hw_stat*, align 8
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @mv88e6352_port_has_serdes(%struct.mv88e6xxx_chip* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** @mv88e6352_serdes_hw_stats, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.mv88e6352_serdes_hw_stat* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** @mv88e6352_serdes_hw_stats, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mv88e6352_serdes_hw_stat, %struct.mv88e6352_serdes_hw_stat* %22, i64 %24
  store %struct.mv88e6352_serdes_hw_stat* %25, %struct.mv88e6352_serdes_hw_stat** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** %8, align 8
  %33 = getelementptr inbounds %struct.mv88e6352_serdes_hw_stat, %struct.mv88e6352_serdes_hw_stat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %36 = call i32 @memcpy(i32* %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.mv88e6352_serdes_hw_stat*, %struct.mv88e6352_serdes_hw_stat** @mv88e6352_serdes_hw_stats, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.mv88e6352_serdes_hw_stat* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mv88e6352_port_has_serdes(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mv88e6352_serdes_hw_stat*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
