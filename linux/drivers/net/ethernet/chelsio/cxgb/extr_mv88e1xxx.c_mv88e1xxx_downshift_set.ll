; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88e1xxx.c_mv88e1xxx_downshift_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88e1xxx.c_mv88e1xxx_downshift_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER = common dso_local global i32 0, align 4
@V_DOWNSHIFT_ENABLE = common dso_local global i32 0, align 4
@M_DOWNSHIFT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @mv88e1xxx_downshift_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_downshift_set(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cphy*, %struct.cphy** %3, align 8
  %7 = load i32, i32* @MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER, align 4
  %8 = call i32 @simple_mdio_read(%struct.cphy* %6, i32 %7, i32* %5)
  %9 = load i32, i32* @V_DOWNSHIFT_ENABLE, align 4
  %10 = load i32, i32* @M_DOWNSHIFT_CNT, align 4
  %11 = call i32 @V_DOWNSHIFT_CNT(i32 %10)
  %12 = or i32 %9, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @V_DOWNSHIFT_ENABLE, align 4
  %20 = call i32 @V_DOWNSHIFT_CNT(i32 2)
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.cphy*, %struct.cphy** %3, align 8
  %26 = load i32, i32* @MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @simple_mdio_write(%struct.cphy* %25, i32 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @simple_mdio_read(%struct.cphy*, i32, i32*) #1

declare dso_local i32 @V_DOWNSHIFT_CNT(i32) #1

declare dso_local i32 @simple_mdio_write(%struct.cphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
