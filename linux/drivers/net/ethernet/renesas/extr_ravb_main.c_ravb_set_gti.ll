; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_gti.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_gti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ravb_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GTI_TIV_MIN = common dso_local global i64 0, align 8
@GTI_TIV_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"gti.tiv increment 0x%llx is outside the range 0x%x - 0x%x\0A\00", align 1
@GTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_set_gti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_set_gti(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ravb_private* %9, %struct.ravb_private** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %15 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @clk_get_rate(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  store i64 1048576000000000, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @do_div(i64 %24, i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @GTI_TIV_MIN, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @GTI_TIV_MAX, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %23
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @GTI_TIV_MIN, align 8
  %38 = load i64, i64* @GTI_TIV_MAX, align 8
  %39 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @GTI, align 4
  %46 = call i32 @ravb_write(%struct.net_device* %43, i64 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %34, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64, i64) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
