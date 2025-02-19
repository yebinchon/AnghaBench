; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_phy.c_mv88e6xxx_phy_page_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_phy.c_mv88e6xxx_phy_page_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PHY_PAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_phy_page_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @MV88E6XXX_PHY_PAGE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %37

19:                                               ; preds = %5
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @mv88e6xxx_phy_page_get(%struct.mv88e6xxx_chip* %20, i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @mv88e6xxx_phy_read(%struct.mv88e6xxx_chip* %27, i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @mv88e6xxx_phy_page_put(%struct.mv88e6xxx_chip* %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %19
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %16
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @mv88e6xxx_phy_page_get(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_phy_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_phy_page_put(%struct.mv88e6xxx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
