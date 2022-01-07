; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_error_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_error_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIS = common dso_local global i32 0, align 4
@EIS_QFS = common dso_local global i32 0, align 4
@EIS_RESERVED = common dso_local global i32 0, align 4
@RIS2 = common dso_local global i32 0, align 4
@RIS2_QFF0 = common dso_local global i32 0, align 4
@RIS2_RFFF = common dso_local global i32 0, align 4
@RIS2_RESERVED = common dso_local global i32 0, align 4
@RAVB_BE = common dso_local global i64 0, align 8
@RIS2_QFF1 = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ravb_error_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_error_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ravb_private* %7, %struct.ravb_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @EIS, align 4
  %10 = call i32 @ravb_read(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @EIS_QFS, align 4
  %13 = load i32, i32* @EIS_RESERVED, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @EIS, align 4
  %17 = call i32 @ravb_write(%struct.net_device* %11, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EIS_QFS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @RIS2, align 4
  %25 = call i32 @ravb_read(%struct.net_device* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* @RIS2_QFF0, align 4
  %28 = load i32, i32* @RIS2_RFFF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RIS2_RESERVED, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @RIS2, align 4
  %34 = call i32 @ravb_write(%struct.net_device* %26, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @RIS2_QFF0, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %41 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @RAVB_BE, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %39, %22
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RIS2_QFF1, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %55 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* @RAVB_NC, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %53, %48
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @RIS2_RFFF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %69 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %1
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
