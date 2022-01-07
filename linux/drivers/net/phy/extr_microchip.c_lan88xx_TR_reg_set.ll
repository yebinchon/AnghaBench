; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_TR_reg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_TR_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to get current page\0A\00", align 1
@LAN88XX_EXT_PAGE_ACCESS_TR = common dso_local global i32 0, align 4
@LAN88XX_EXT_PAGE_TR_LOW_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to write TR low data\0A\00", align 1
@LAN88XX_EXT_PAGE_TR_HIGH_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to write TR high data\0A\00", align 1
@LAN88XX_EXT_PAGE_TR_CR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to write data in reg\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"TR Register[0x%X] configuration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32)* @lan88xx_TR_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan88xx_TR_reg_set(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = call i32 @phy_save_page(%struct.phy_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %71

18:                                               ; preds = %3
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = load i32, i32* @LAN88XX_EXT_PAGE_ACCESS_TR, align 4
  %21 = call i32 @lan88xx_write_page(%struct.phy_device* %19, i32 %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %23 = load i32, i32* @LAN88XX_EXT_PAGE_TR_LOW_DATA, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65535
  %26 = call i32 @__phy_write(%struct.phy_device* %22, i32 %23, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %71

32:                                               ; preds = %18
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = load i32, i32* @LAN88XX_EXT_PAGE_TR_HIGH_DATA, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 16711680
  %37 = ashr i32 %36, 16
  %38 = call i32 @__phy_write(%struct.phy_device* %33, i32 %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %71

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, -24577
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 32768
  store i32 %48, i32* %10, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = load i32, i32* @LAN88XX_EXT_PAGE_TR_CR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @__phy_write(%struct.phy_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %57 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %71

58:                                               ; preds = %44
  %59 = call i32 @usleep_range(i32 1000, i32 2000)
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = load i32, i32* @LAN88XX_EXT_PAGE_TR_CR, align 4
  %62 = call i32 @__phy_read(%struct.phy_device* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 32768
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %71

71:                                               ; preds = %70, %55, %41, %29, %15
  %72 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @phy_restore_page(%struct.phy_device* %72, i32 %73, i32 %74)
  ret i32 %75
}

declare dso_local i32 @phy_save_page(%struct.phy_device*) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*, ...) #1

declare dso_local i32 @lan88xx_write_page(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
