; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_bond_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_bond_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif_sdr = type { i32, i32, %struct.rcar_drif** }
%struct.rcar_drif = type { i64, %struct.rcar_drif_sdr* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to get bonded device from node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"defer probe\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_drif_sdr*, %struct.device_node*)* @rcar_drif_bond_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_bond_available(%struct.rcar_drif_sdr* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_drif_sdr*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.rcar_drif*, align 8
  %8 = alloca i32, align 4
  store %struct.rcar_drif_sdr* %0, %struct.rcar_drif_sdr** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %9)
  store %struct.platform_device* %10, %struct.platform_device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = icmp ne %struct.platform_device* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %15 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @device_lock(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %25 = call %struct.rcar_drif* @platform_get_drvdata(%struct.platform_device* %24)
  store %struct.rcar_drif* %25, %struct.rcar_drif** %7, align 8
  %26 = load %struct.rcar_drif*, %struct.rcar_drif** %7, align 8
  %27 = icmp ne %struct.rcar_drif* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %30 = load %struct.rcar_drif*, %struct.rcar_drif** %7, align 8
  %31 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %30, i32 0, i32 1
  store %struct.rcar_drif_sdr* %29, %struct.rcar_drif_sdr** %31, align 8
  %32 = load %struct.rcar_drif*, %struct.rcar_drif** %7, align 8
  %33 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %34 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %33, i32 0, i32 2
  %35 = load %struct.rcar_drif**, %struct.rcar_drif*** %34, align 8
  %36 = load %struct.rcar_drif*, %struct.rcar_drif** %7, align 8
  %37 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.rcar_drif*, %struct.rcar_drif** %35, i64 %38
  store %struct.rcar_drif* %32, %struct.rcar_drif** %39, align 8
  %40 = load %struct.rcar_drif*, %struct.rcar_drif** %7, align 8
  %41 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BIT(i64 %42)
  %44 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %45 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %20
  %49 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %50 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_info(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %48, %28
  %56 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @device_unlock(i32* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @put_device(i32* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local %struct.rcar_drif* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
