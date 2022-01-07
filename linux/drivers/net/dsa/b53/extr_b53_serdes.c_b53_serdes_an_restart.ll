; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_an_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_an_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_INVALID_LANE = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@SERDES_MII_BLK = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_serdes_an_restart(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @b53_serdes_map_lane(%struct.b53_device* %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @B53_INVALID_LANE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @MII_BMCR, align 4
  %18 = call i32 @B53_SERDES_MII_REG(i32 %17)
  %19 = load i32, i32* @SERDES_MII_BLK, align 4
  %20 = call i32 @b53_serdes_read(%struct.b53_device* %15, i64 %16, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @BMCR_ANRESTART, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @MII_BMCR, align 4
  %27 = call i32 @B53_SERDES_MII_REG(i32 %26)
  %28 = load i32, i32* @SERDES_MII_BLK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @b53_serdes_write(%struct.b53_device* %24, i64 %25, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @b53_serdes_map_lane(%struct.b53_device*, i32) #1

declare dso_local i32 @b53_serdes_read(%struct.b53_device*, i64, i32, i32) #1

declare dso_local i32 @B53_SERDES_MII_REG(i32) #1

declare dso_local i32 @b53_serdes_write(%struct.b53_device*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
