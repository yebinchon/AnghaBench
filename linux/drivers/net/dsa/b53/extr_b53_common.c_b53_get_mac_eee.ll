; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_mac_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_mac_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ethtool_eee }
%struct.ethtool_eee = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@B53_EEE_PAGE = common dso_local global i32 0, align 4
@B53_EEE_LPI_INDICATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_get_mac_eee(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_eee* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_eee*, align 8
  %8 = alloca %struct.b53_device*, align 8
  %9 = alloca %struct.ethtool_eee*, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_eee* %2, %struct.ethtool_eee** %7, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.b53_device*, %struct.b53_device** %12, align 8
  store %struct.b53_device* %13, %struct.b53_device** %8, align 8
  %14 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %15 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.ethtool_eee* %20, %struct.ethtool_eee** %9, align 8
  %21 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %22 = call i64 @is5325(%struct.b53_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %26 = call i64 @is5365(%struct.b53_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %3
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %24
  %32 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %33 = load i32, i32* @B53_EEE_PAGE, align 4
  %34 = load i32, i32* @B53_EEE_LPI_INDICATE, align 4
  %35 = call i32 @b53_read16(%struct.b53_device* %32, i32 %33, i32 %34, i32* %10)
  %36 = load %struct.ethtool_eee*, %struct.ethtool_eee** %9, align 8
  %37 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %40 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %50 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %31, %28
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @b53_read16(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
