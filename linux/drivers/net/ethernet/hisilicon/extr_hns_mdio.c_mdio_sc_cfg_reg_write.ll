; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_mdio_sc_cfg_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_mdio_sc_cfg_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mdio_device = type { i32 }

@MDIO_TIMEOUT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mdio_device*, i64, i64, i64, i64, i32)* @mdio_sc_cfg_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_sc_cfg_reg_write(%struct.hns_mdio_device* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_mdio_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.hns_mdio_device* %0, %struct.hns_mdio_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %8, align 8
  %18 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @regmap_write(i32 %19, i64 %20, i64 %21)
  %23 = load i64, i64* @MDIO_TIMEOUT, align 8
  store i64 %23, i64* %14, align 8
  br label %24

24:                                               ; preds = %54, %6
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %8, align 8
  %29 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @regmap_read(i32 %30, i64 %31, i64* %15)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %7, align 4
  br label %73

37:                                               ; preds = %27
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %15, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %57

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %14, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %14, align 8
  br label %24

57:                                               ; preds = %52, %24
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = icmp ne i32 %62, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %73

72:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %69, %35
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_write(i32, i64, i64) #1

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
