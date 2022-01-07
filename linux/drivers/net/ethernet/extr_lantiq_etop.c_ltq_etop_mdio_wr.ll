; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_mdio_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_mdio_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@MDIO_REQUEST = common dso_local global i32 0, align 4
@MDIO_ADDR_MASK = common dso_local global i32 0, align 4
@MDIO_ADDR_OFFSET = common dso_local global i32 0, align 4
@MDIO_REG_MASK = common dso_local global i32 0, align 4
@MDIO_REG_OFFSET = common dso_local global i32 0, align 4
@LTQ_ETOP_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @ltq_etop_mdio_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_mdio_wr(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @MDIO_REQUEST, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MDIO_ADDR_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @MDIO_ADDR_OFFSET, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %10, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MDIO_REG_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @MDIO_REG_OFFSET, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %16, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %31, %4
  %26 = load i32, i32* @LTQ_ETOP_MDIO, align 4
  %27 = call i32 @ltq_etop_r32(i32 %26)
  %28 = load i32, i32* @MDIO_REQUEST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %25

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @LTQ_ETOP_MDIO, align 4
  %35 = call i32 @ltq_etop_w32(i32 %33, i32 %34)
  ret i32 0
}

declare dso_local i32 @ltq_etop_r32(i32) #1

declare dso_local i32 @ltq_etop_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
