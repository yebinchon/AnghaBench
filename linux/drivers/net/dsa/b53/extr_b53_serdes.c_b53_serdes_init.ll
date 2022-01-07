; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_INVALID_LANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@B53_SERDES_ID0 = common dso_local global i32 0, align 4
@SERDES_ID0 = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@SERDES_MII_BLK = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SerDes not initialized, check settings\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"SerDes lane %d, model: %d, rev %c%d (OUI: 0x%08x)\0A\00", align 1
@SERDES_ID0_MODEL_MASK = common dso_local global i32 0, align 4
@SERDES_ID0_REV_LETTER_SHIFT = common dso_local global i32 0, align 4
@SERDES_ID0_REV_NUM_SHIFT = common dso_local global i32 0, align 4
@SERDES_ID0_REV_NUM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_serdes_init(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @b53_serdes_map_lane(%struct.b53_device* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @B53_INVALID_LANE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @B53_SERDES_ID0, align 4
  %23 = load i32, i32* @SERDES_ID0, align 4
  %24 = call i32 @b53_serdes_read(%struct.b53_device* %20, i64 %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @MII_PHYSID1, align 4
  %28 = call i32 @B53_SERDES_MII_REG(i32 %27)
  %29 = load i32, i32* @SERDES_MII_BLK, align 4
  %30 = call i32 @b53_serdes_read(%struct.b53_device* %25, i64 %26, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @MII_PHYSID2, align 4
  %34 = call i32 @B53_SERDES_MII_REG(i32 %33)
  %35 = load i32, i32* @SERDES_MII_BLK, align 4
  %36 = call i32 @b53_serdes_read(%struct.b53_device* %31, i64 %32, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 65535
  br i1 %41, label %42, label %49

42:                                               ; preds = %39, %19
  %43 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %44 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %71

49:                                               ; preds = %39
  %50 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %51 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SERDES_ID0_MODEL_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SERDES_ID0_REV_LETTER_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = add nsw i32 %59, 65
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SERDES_ID0_REV_NUM_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* @SERDES_ID0_REV_NUM_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @dev_info(i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %56, i32 %60, i32 %65, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %49, %42, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @b53_serdes_map_lane(%struct.b53_device*, i32) #1

declare dso_local i32 @b53_serdes_read(%struct.b53_device*, i64, i32, i32) #1

declare dso_local i32 @B53_SERDES_MII_REG(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
