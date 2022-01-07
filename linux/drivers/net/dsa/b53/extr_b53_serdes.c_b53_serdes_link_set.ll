; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_link_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_link_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_INVALID_LANE = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@SERDES_MII_BLK = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_serdes_link_set(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @b53_serdes_map_lane(%struct.b53_device* %13, i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @B53_INVALID_LANE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %46

20:                                               ; preds = %5
  %21 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = call i32 @B53_SERDES_MII_REG(i32 %23)
  %25 = load i32, i32* @SERDES_MII_BLK, align 4
  %26 = call i32 @b53_serdes_read(%struct.b53_device* %21, i64 %22, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @BMCR_PDOWN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %38

34:                                               ; preds = %20
  %35 = load i32, i32* @BMCR_PDOWN, align 4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = call i32 @B53_SERDES_MII_REG(i32 %41)
  %43 = load i32, i32* @SERDES_MII_BLK, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @b53_serdes_write(%struct.b53_device* %39, i64 %40, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %19
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
