; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, %struct.mcam_camera }
%struct.mcam_camera = type { i32 }

@TWSIC0_EN = common dso_local global i32 0, align 4
@TWSIC0_SID_SHIFT = common dso_local global i32 0, align 4
@TWSIC0_SID = common dso_local global i32 0, align 4
@TWSIC0_OVMAGIC = common dso_local global i32 0, align 4
@TWSIC0_CLKDIV = common dso_local global i32 0, align 4
@REG_TWSIC0 = common dso_local global i32 0, align 4
@REG_TWSIC1 = common dso_local global i32 0, align 4
@TWSIC1_ADDR_SHIFT = common dso_local global i32 0, align 4
@TWSIC1_ADDR = common dso_local global i32 0, align 4
@CAFE_SMBUS_TIMEOUT = common dso_local global i32 0, align 4
@TWSIC1_WSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SMBUS write (%02x/%02x/%02x) timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TWSIC1_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"SMBUS write (%02x/%02x/%02x) error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*, i32, i32, i32)* @cafe_smbus_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_smbus_write_data(%struct.cafe_camera* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cafe_camera*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcam_camera*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %14 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %13, i32 0, i32 1
  store %struct.mcam_camera* %14, %struct.mcam_camera** %12, align 8
  %15 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %16 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %15, i32 0, i32 0
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @TWSIC0_EN, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TWSIC0_SID_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @TWSIC0_SID, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %19, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @TWSIC0_OVMAGIC, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @TWSIC0_CLKDIV, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %33 = load i32, i32* @REG_TWSIC0, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @mcam_reg_write(%struct.mcam_camera* %32, i32 %33, i32 %34)
  %36 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %37 = load i32, i32* @REG_TWSIC1, align 4
  %38 = call i32 @mcam_reg_read(%struct.mcam_camera* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TWSIC1_ADDR_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @TWSIC1_ADDR, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %39, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %47 = load i32, i32* @REG_TWSIC1, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mcam_reg_write(%struct.mcam_camera* %46, i32 %47, i32 %48)
  %50 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %51 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %50, i32 0, i32 0
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = call i32 @mdelay(i32 2)
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %56 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %59 = call i32 @cafe_smbus_write_done(%struct.mcam_camera* %58)
  %60 = load i32, i32* @CAFE_SMBUS_TIMEOUT, align 4
  %61 = call i32 @wait_event_timeout(i32 %57, i32 %59, i32 %60)
  %62 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %63 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %62, i32 0, i32 0
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %67 = load i32, i32* @REG_TWSIC1, align 4
  %68 = call i32 @mcam_reg_read(%struct.mcam_camera* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %70 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %69, i32 0, i32 0
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @TWSIC1_WSTAT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %4
  %78 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @cam_err(%struct.cafe_camera* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %99

85:                                               ; preds = %4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @TWSIC1_ERROR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @cam_err(%struct.cafe_camera* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %99

98:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %90, %77
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

declare dso_local i32 @mcam_reg_read(%struct.mcam_camera*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @cafe_smbus_write_done(%struct.mcam_camera*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
