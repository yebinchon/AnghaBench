; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_get_phy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_get_phy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.mii_bus = type { i32 }
%struct.phy_c45_device_ids = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @get_phy_device(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_c45_device_ids, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.phy_c45_device_ids* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_phy_id(%struct.mii_bus* %12, i32 %13, i32* %9, i32 %14, %struct.phy_c45_device_ids* %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.phy_device* @ERR_PTR(i32 %19)
  store %struct.phy_device* %20, %struct.phy_device** %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 536870911
  %24 = icmp eq i32 %23, 536870911
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.phy_device* @ERR_PTR(i32 %27)
  store %struct.phy_device* %28, %struct.phy_device** %4, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.phy_device* @phy_device_create(%struct.mii_bus* %30, i32 %31, i32 %32, i32 %33, %struct.phy_c45_device_ids* %8)
  store %struct.phy_device* %34, %struct.phy_device** %4, align 8
  br label %35

35:                                               ; preds = %29, %25, %18
  %36 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  ret %struct.phy_device* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_phy_id(%struct.mii_bus*, i32, i32*, i32, %struct.phy_c45_device_ids*) #2

declare dso_local %struct.phy_device* @ERR_PTR(i32) #2

declare dso_local %struct.phy_device* @phy_device_create(%struct.mii_bus*, i32, i32, i32, %struct.phy_c45_device_ids*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
