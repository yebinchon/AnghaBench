; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_enable_status_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_enable_status_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.dp83640_private* }
%struct.dp83640_private = type { %struct.dp83640_clock* }
%struct.dp83640_clock = type { i32 }

@PSF_EVNT_EN = common dso_local global i32 0, align 4
@PSF_RXTS_EN = common dso_local global i32 0, align 4
@PSF_TXTS_EN = common dso_local global i32 0, align 4
@ENDIAN_FLAG = common dso_local global i32 0, align 4
@PSF_PTPVER = common dso_local global i32 0, align 4
@VERSIONPTP_MASK = common dso_local global i32 0, align 4
@VERSIONPTP_SHIFT = common dso_local global i32 0, align 4
@PAGE5 = common dso_local global i32 0, align 4
@PSF_CFG0 = common dso_local global i32 0, align 4
@PAGE6 = common dso_local global i32 0, align 4
@PSF_CFG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"expected to find an attached netdevice\0A\00", align 1
@status_frame_dst = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to add mc address\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to delete mc address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, i32)* @enable_status_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_status_frames(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dp83640_private*, align 8
  %6 = alloca %struct.dp83640_clock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 1
  %11 = load %struct.dp83640_private*, %struct.dp83640_private** %10, align 8
  store %struct.dp83640_private* %11, %struct.dp83640_private** %5, align 8
  %12 = load %struct.dp83640_private*, %struct.dp83640_private** %5, align 8
  %13 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %12, i32 0, i32 0
  %14 = load %struct.dp83640_clock*, %struct.dp83640_clock** %13, align 8
  store %struct.dp83640_clock* %14, %struct.dp83640_clock** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @PSF_EVNT_EN, align 4
  %19 = load i32, i32* @PSF_RXTS_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PSF_TXTS_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ENDIAN_FLAG, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @PSF_PTPVER, align 4
  %27 = load i32, i32* @VERSIONPTP_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @VERSIONPTP_SHIFT, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %32 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @PAGE5, align 4
  %36 = load i32, i32* @PSF_CFG0, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ext_write(i32 0, %struct.phy_device* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = load i32, i32* @PAGE6, align 4
  %41 = load i32, i32* @PSF_CFG1, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ext_write(i32 0, %struct.phy_device* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %45 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %25
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = call i32 @phydev_warn(%struct.phy_device* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %79

54:                                               ; preds = %25
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @status_frame_dst, align 4
  %62 = call i64 @dev_mc_add(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @phydev_warn(%struct.phy_device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %57
  br label %79

68:                                               ; preds = %54
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @status_frame_dst, align 4
  %73 = call i64 @dev_mc_del(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = call i32 @phydev_warn(%struct.phy_device* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %51, %78, %67
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ext_write(i32, %struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*) #1

declare dso_local i64 @dev_mc_add(i32, i32) #1

declare dso_local i64 @dev_mc_del(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
