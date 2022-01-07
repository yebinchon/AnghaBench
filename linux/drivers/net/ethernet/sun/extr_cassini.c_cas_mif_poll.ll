; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mif_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mif_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64, i32 }

@REG_MIF_CFG = common dso_local global i64 0, align 8
@MIF_CFG_MDIO_0 = common dso_local global i32 0, align 4
@MIF_CFG_MDIO_1 = common dso_local global i32 0, align 4
@CAS_PHY_MII_MDIO1 = common dso_local global i32 0, align 4
@MIF_CFG_PHY_SELECT = common dso_local global i32 0, align 4
@MIF_CFG_POLL_EN = common dso_local global i32 0, align 4
@MIF_CFG_POLL_REG = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MIF_CFG_POLL_PHY = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@REG_MIF_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32)* @cas_mif_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_mif_poll(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cas*, %struct.cas** %3, align 8
  %7 = getelementptr inbounds %struct.cas, %struct.cas* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_MIF_CFG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MIF_CFG_MDIO_0, align 4
  %13 = load i32, i32* @MIF_CFG_MDIO_1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.cas*, %struct.cas** %3, align 8
  %18 = getelementptr inbounds %struct.cas, %struct.cas* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CAS_PHY_MII_MDIO1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @MIF_CFG_PHY_SELECT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* @MIF_CFG_POLL_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @MIF_CFG_POLL_REG, align 4
  %35 = load i32, i32* @MII_BMSR, align 4
  %36 = call i32 @CAS_BASE(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @MIF_CFG_POLL_PHY, align 4
  %40 = load %struct.cas*, %struct.cas** %3, align 8
  %41 = getelementptr inbounds %struct.cas, %struct.cas* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @CAS_BASE(i32 %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @BMSR_LSTATUS, align 4
  %51 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %49
  %56 = phi i32 [ %53, %49 ], [ 65535, %54 ]
  %57 = load %struct.cas*, %struct.cas** %3, align 8
  %58 = getelementptr inbounds %struct.cas, %struct.cas* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REG_MIF_MASK, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.cas*, %struct.cas** %3, align 8
  %65 = getelementptr inbounds %struct.cas, %struct.cas* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @REG_MIF_CFG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
