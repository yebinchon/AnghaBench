; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_avb.c_mv88e6xxx_g2_avb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_avb.c_mv88e6xxx_g2_avb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@MV88E6352_G2_AVB_CMD = common dso_local global i32 0, align 4
@MV88E6352_G2_AVB_CMD_BUSY = common dso_local global i32 0, align 4
@MV88E6352_G2_AVB_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32*, i32)* @mv88e6xxx_g2_avb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_avb_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %13 = call i32 @mv88e6xxx_g2_avb_wait(%struct.mv88e6xxx_chip* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %64

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @E2BIG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %64

24:                                               ; preds = %18
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %26 = load i32, i32* @MV88E6352_G2_AVB_CMD, align 4
  %27 = load i32, i32* @MV88E6352_G2_AVB_CMD_BUSY, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip* %25, i32 %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %64

35:                                               ; preds = %24
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %37 = call i32 @mv88e6xxx_g2_avb_wait(%struct.mv88e6xxx_chip* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %64

42:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %49 = load i32, i32* @MV88E6352_G2_AVB_DATA, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip* %48, i32 %49, i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %43

63:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %57, %40, %33, %21, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @mv88e6xxx_g2_avb_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
