; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2020_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2020_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i32 }

@ael2020_intr_enable.regs = internal constant [4 x %struct.reg_val] [%struct.reg_val { i32 128, i32 262, i32 65535, i32 4 }, %struct.reg_val { i32 128, i32 131, i32 65535, i32 0 }, %struct.reg_val { i32 128, i32 131, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2020_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_intr_enable(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cphy*, %struct.cphy** %3, align 8
  %7 = call i32 @set_phy_regs(%struct.cphy* %6, %struct.reg_val* getelementptr inbounds ([4 x %struct.reg_val], [4 x %struct.reg_val]* @ael2020_intr_enable.regs, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.cphy*, %struct.cphy** %3, align 8
  %14 = call i32 @get_link_status_r(%struct.cphy* %13, i32* %5, i32* null, i32* null, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.cphy*, %struct.cphy** %3, align 8
  %24 = getelementptr inbounds %struct.cphy, %struct.cphy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cphy*, %struct.cphy** %3, align 8
  %27 = call i32 @phy2portid(%struct.cphy* %26)
  %28 = call i32 @t3_link_changed(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %22, %19
  %30 = load %struct.cphy*, %struct.cphy** %3, align 8
  %31 = call i32 @t3_phy_lasi_intr_enable(%struct.cphy* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %17, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @get_link_status_r(%struct.cphy*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @t3_link_changed(i32, i32) #1

declare dso_local i32 @phy2portid(%struct.cphy*) #1

declare dso_local i32 @t3_phy_lasi_intr_enable(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
