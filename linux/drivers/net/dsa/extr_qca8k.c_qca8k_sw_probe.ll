; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_sw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_sw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32, i32 }
%struct.qca8k_priv = type { %struct.TYPE_3__*, i32, i32, i64, i32*, i32 }
%struct.TYPE_3__ = type { i32*, %struct.qca8k_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@QCA8K_REG_MASK_CTRL = common dso_local global i32 0, align 4
@QCA8K_MASK_CTRL_ID_S = common dso_local global i32 0, align 4
@QCA8K_MASK_CTRL_ID_M = common dso_local global i32 0, align 4
@QCA8K_ID_QCA8337 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@QCA8K_NUM_PORTS = common dso_local global i32 0, align 4
@qca8k_switch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @qca8k_sw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_sw_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.qca8k_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %6 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %7 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qca8k_priv* @devm_kzalloc(i32* %7, i32 40, i32 %8)
  store %struct.qca8k_priv* %9, %struct.qca8k_priv** %4, align 8
  %10 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %11 = icmp ne %struct.qca8k_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %17 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %20 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %22 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %21, i32 0, i32 0
  %23 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %24 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %26 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @GPIOD_ASIS, align 4
  %29 = call i64 @devm_gpiod_get_optional(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %31 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %33 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %15
  %38 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %39 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PTR_ERR(i64 %40)
  store i32 %41, i32* %2, align 4
  br label %113

42:                                               ; preds = %15
  %43 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %44 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %49 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @gpiod_set_value_cansleep(i64 %50, i32 1)
  %52 = call i32 @msleep(i32 20)
  %53 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %54 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @gpiod_set_value_cansleep(i64 %55, i32 0)
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %59 = load i32, i32* @QCA8K_REG_MASK_CTRL, align 4
  %60 = call i32 @qca8k_read(%struct.qca8k_priv* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @QCA8K_MASK_CTRL_ID_S, align 4
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @QCA8K_MASK_CTRL_ID_M, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @QCA8K_ID_QCA8337, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %113

73:                                               ; preds = %57
  %74 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %75 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %74, i32 0, i32 0
  %76 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %77 = call %struct.TYPE_3__* @dsa_switch_alloc(i32* %75, i32 %76)
  %78 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %79 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %78, i32 0, i32 0
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %79, align 8
  %80 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %81 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp ne %struct.TYPE_3__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %113

87:                                               ; preds = %73
  %88 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %89 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %90 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store %struct.qca8k_priv* %88, %struct.qca8k_priv** %92, align 8
  %93 = load i32, i32* @qca8k_switch_ops, align 4
  %94 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %95 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %97 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %96, i32 0, i32 2
  %98 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %99 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32* %97, i32** %101, align 8
  %102 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %103 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %102, i32 0, i32 1
  %104 = call i32 @mutex_init(i32* %103)
  %105 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %106 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %105, i32 0, i32 0
  %107 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %108 = call i32 @dev_set_drvdata(i32* %106, %struct.qca8k_priv* %107)
  %109 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %110 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = call i32 @dsa_register_switch(%struct.TYPE_3__* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %87, %84, %70, %37, %12
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.qca8k_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qca8k_read(%struct.qca8k_priv*, i32) #1

declare dso_local %struct.TYPE_3__* @dsa_switch_alloc(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.qca8k_priv*) #1

declare dso_local i32 @dsa_register_switch(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
