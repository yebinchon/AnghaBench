; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_mdio.c_b53_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_mdio.c_b53_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b53_device = type { i32, %struct.TYPE_3__* }

@BRCM_PSEUDO_PHY_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"leaving address %d to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@B53_BRCM_OUI_1 = common dso_local global i32 0, align 4
@B53_BRCM_OUI_2 = common dso_local global i32 0, align 4
@B53_BRCM_OUI_3 = common dso_local global i32 0, align 4
@B53_BRCM_OUI_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported device: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"brcm,bcm7445d0\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sf2 slave mii\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@b53_mdio_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to register switch: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @b53_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mdio_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %7 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %8 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BRCM_PSEUDO_PHY_ADDR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %14 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %19 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %18, i32 0, i32 1
  %20 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %21 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %115

27:                                               ; preds = %12, %1
  %28 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %29 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @mdiobus_read(%struct.TYPE_3__* %30, i32 0, i32 2)
  %32 = shl i32 %31, 16
  store i32 %32, i32* %5, align 4
  %33 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %34 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @mdiobus_read(%struct.TYPE_3__* %35, i32 0, i32 3)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, -1024
  %41 = load i32, i32* @B53_BRCM_OUI_1, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %27
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, -1024
  %46 = load i32, i32* @B53_BRCM_OUI_2, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, -1024
  %51 = load i32, i32* @B53_BRCM_OUI_3, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, -1024
  %56 = load i32, i32* @B53_BRCM_OUI_4, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %60 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %59, i32 0, i32 1
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %115

65:                                               ; preds = %53, %48, %43, %27
  %66 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %70 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %115

79:                                               ; preds = %68, %65
  %80 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %81 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %80, i32 0, i32 1
  %82 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %83 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = call %struct.b53_device* @b53_switch_alloc(i32* %81, i32* @b53_mdio_ops, %struct.TYPE_3__* %84)
  store %struct.b53_device* %85, %struct.b53_device** %4, align 8
  %86 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %87 = icmp ne %struct.b53_device* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %115

91:                                               ; preds = %79
  %92 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %93 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %92, i32 0, i32 0
  store i32 255, i32* %93, align 8
  %94 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %95 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %98 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %97, i32 0, i32 1
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %100 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %99, i32 0, i32 1
  %101 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %102 = call i32 @dev_set_drvdata(i32* %100, %struct.b53_device* %101)
  %103 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %104 = call i32 @b53_switch_register(%struct.b53_device* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %91
  %108 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %109 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %108, i32 0, i32 1
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %115

113:                                              ; preds = %91
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %107, %88, %76, %58, %17
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mdiobus_read(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.b53_device* @b53_switch_alloc(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.b53_device*) #1

declare dso_local i32 @b53_switch_register(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
