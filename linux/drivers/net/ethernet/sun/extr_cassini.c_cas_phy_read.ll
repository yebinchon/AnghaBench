; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64 }

@STOP_TRIES_PHY = common dso_local global i32 0, align 4
@MIF_FRAME_ST = common dso_local global i32 0, align 4
@MIF_FRAME_OP_READ = common dso_local global i32 0, align 4
@MIF_FRAME_PHY_ADDR = common dso_local global i32 0, align 4
@MIF_FRAME_REG_ADDR = common dso_local global i32 0, align 4
@MIF_FRAME_TURN_AROUND_MSB = common dso_local global i32 0, align 4
@REG_MIF_FRAME = common dso_local global i64 0, align 8
@MIF_FRAME_TURN_AROUND_LSB = common dso_local global i32 0, align 4
@MIF_FRAME_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*, i32)* @cas_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_phy_read(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @STOP_TRIES_PHY, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @MIF_FRAME_ST, align 4
  %10 = load i32, i32* @MIF_FRAME_OP_READ, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @MIF_FRAME_PHY_ADDR, align 4
  %13 = load %struct.cas*, %struct.cas** %4, align 8
  %14 = getelementptr inbounds %struct.cas, %struct.cas* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CAS_BASE(i32 %12, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MIF_FRAME_REG_ADDR, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @CAS_BASE(i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @MIF_FRAME_TURN_AROUND_MSB, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cas*, %struct.cas** %4, align 8
  %29 = getelementptr inbounds %struct.cas, %struct.cas* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_MIF_FRAME, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %54, %2
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp sgt i32 %35, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = call i32 @udelay(i32 10)
  %40 = load %struct.cas*, %struct.cas** %4, align 8
  %41 = getelementptr inbounds %struct.cas, %struct.cas* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_MIF_FRAME, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MIF_FRAME_TURN_AROUND_LSB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MIF_FRAME_DATA_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %38
  br label %34

55:                                               ; preds = %34
  store i32 65535, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
