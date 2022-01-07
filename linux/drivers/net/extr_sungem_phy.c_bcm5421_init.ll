; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5421_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5421_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i64 }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5421_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5421_init(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %5 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %6 = load i32, i32* @MII_PHYSID1, align 4
  %7 = call i32 @sungem_phy_read(%struct.mii_phy* %5, i32 %6)
  %8 = shl i32 %7, 16
  %9 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %10 = load i32, i32* @MII_PHYSID2, align 4
  %11 = call i32 @sungem_phy_read(%struct.mii_phy* %9, i32 %10)
  %12 = or i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 2121952
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %17 = call i32 @sungem_phy_write(%struct.mii_phy* %16, i32 24, i32 4103)
  %18 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %19 = call i32 @sungem_phy_read(%struct.mii_phy* %18, i32 24)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 1024
  %23 = call i32 @sungem_phy_write(%struct.mii_phy* %20, i32 24, i32 %22)
  %24 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %25 = call i32 @sungem_phy_write(%struct.mii_phy* %24, i32 24, i32 7)
  %26 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %27 = call i32 @sungem_phy_read(%struct.mii_phy* %26, i32 24)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 2048
  %31 = call i32 @sungem_phy_write(%struct.mii_phy* %28, i32 24, i32 %30)
  %32 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %33 = call i32 @sungem_phy_write(%struct.mii_phy* %32, i32 23, i32 10)
  %34 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %35 = call i32 @sungem_phy_read(%struct.mii_phy* %34, i32 21)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, 512
  %39 = call i32 @sungem_phy_write(%struct.mii_phy* %36, i32 21, i32 %38)
  br label %40

40:                                               ; preds = %15, %1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, -16
  %43 = icmp eq i32 %42, 2122464
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %46 = call i32 @sungem_phy_write(%struct.mii_phy* %45, i32 4, i32 481)
  %47 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %48 = call i32 @sungem_phy_write(%struct.mii_phy* %47, i32 9, i32 768)
  br label %49

49:                                               ; preds = %44, %40
  ret i32 0
}

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @sungem_phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
