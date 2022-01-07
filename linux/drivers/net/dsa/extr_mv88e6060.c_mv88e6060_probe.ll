; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.mv88e6060_priv = type { i32, i32 }
%struct.dsa_switch = type { i32*, %struct.device*, %struct.mv88e6060_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"switch %s detected\0A\00", align 1
@MV88E6060_PORTS = common dso_local global i32 0, align 4
@mv88e6060_switch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @mv88e6060_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6060_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mv88e6060_priv*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i8*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %8 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %9 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %8, i32 0, i32 2
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mv88e6060_priv* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.mv88e6060_priv* %12, %struct.mv88e6060_priv** %5, align 8
  %13 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %5, align 8
  %14 = icmp ne %struct.mv88e6060_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %20 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %25 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %5, align 8
  %30 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @mv88e6060_get_name(i32 %31, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %18
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %18
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @dev_info(%struct.device* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* @MV88E6060_PORTS, align 4
  %47 = call %struct.dsa_switch* @dsa_switch_alloc(%struct.device* %45, i32 %46)
  store %struct.dsa_switch* %47, %struct.dsa_switch** %6, align 8
  %48 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %49 = icmp ne %struct.dsa_switch* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %67

53:                                               ; preds = %41
  %54 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %5, align 8
  %55 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %56 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %55, i32 0, i32 2
  store %struct.mv88e6060_priv* %54, %struct.mv88e6060_priv** %56, align 8
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %59 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %58, i32 0, i32 1
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %61 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %60, i32 0, i32 0
  store i32* @mv88e6060_switch_ops, i32** %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %64 = call i32 @dev_set_drvdata(%struct.device* %62, %struct.dsa_switch* %63)
  %65 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %66 = call i32 @dsa_register_switch(%struct.dsa_switch* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %53, %50, %38, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.mv88e6060_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @mv88e6060_get_name(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dsa_switch*) #1

declare dso_local i32 @dsa_register_switch(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
