; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_default_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_default_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.lbs_private = type { i64, %struct.net_device* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set_default_key: to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i32)* @lbs_cfg_set_default_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cfg_set_default_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lbs_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %14 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %13)
  store %struct.lbs_private* %14, %struct.lbs_private** %12, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = load %struct.lbs_private*, %struct.lbs_private** %12, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = icmp eq %struct.net_device* %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %12, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.lbs_private*, %struct.lbs_private** %12, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.lbs_private*, %struct.lbs_private** %12, align 8
  %36 = call i32 @lbs_set_wep_keys(%struct.lbs_private* %35)
  br label %37

37:                                               ; preds = %29, %23
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @lbs_deb_assoc(i8*, i64) #1

declare dso_local i32 @lbs_set_wep_keys(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
