; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2xxx_get_module_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2xxx_get_module_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MODULE_DEV_ADDR = common dso_local global i32 0, align 4
@phy_modtype_sr = common dso_local global i32 0, align 4
@phy_modtype_lr = common dso_local global i32 0, align 4
@phy_modtype_lrm = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2xxx_get_module_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2xxx_get_module_type(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @msleep(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.cphy*, %struct.cphy** %4, align 8
  %14 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %15 = call i32 @ael_i2c_rd(%struct.cphy* %13, i32 %14, i32 3)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @phy_modtype_sr, align 4
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @phy_modtype_lr, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @phy_modtype_lrm, align 4
  store i32 %34, i32* %3, align 4
  br label %79

35:                                               ; preds = %30
  %36 = load %struct.cphy*, %struct.cphy** %4, align 8
  %37 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %38 = call i32 @ael_i2c_rd(%struct.cphy* %36, i32 %37, i32 6)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %79

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %77

47:                                               ; preds = %43
  %48 = load %struct.cphy*, %struct.cphy** %4, align 8
  %49 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %50 = call i32 @ael_i2c_rd(%struct.cphy* %48, i32 %49, i32 10)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.cphy*, %struct.cphy** %4, align 8
  %61 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %62 = call i32 @ael_i2c_rd(%struct.cphy* %60, i32 %61, i32 18)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 10
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @phy_modtype_twinax_long, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @phy_modtype_twinax, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32, i32* @phy_modtype_unknown, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %74, %65, %53, %41, %33, %28, %23, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ael_i2c_rd(%struct.cphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
