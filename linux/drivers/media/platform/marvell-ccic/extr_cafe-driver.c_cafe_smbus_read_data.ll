; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_read_data.c"
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
@TWSIC1_READ = common dso_local global i32 0, align 4
@TWSIC1_ADDR_SHIFT = common dso_local global i32 0, align 4
@TWSIC1_ADDR = common dso_local global i32 0, align 4
@CAFE_SMBUS_TIMEOUT = common dso_local global i32 0, align 4
@TWSIC1_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SMBUS read (%02x/%02x) error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TWSIC1_RVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SMBUS read (%02x/%02x) timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*, i32, i32, i32*)* @cafe_smbus_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_smbus_read_data(%struct.cafe_camera* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cafe_camera*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcam_camera*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
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
  %39 = load i32, i32* @TWSIC1_READ, align 4
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
  %54 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %55 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %58 = call i32 @cafe_smbus_read_done(%struct.mcam_camera* %57)
  %59 = load i32, i32* @CAFE_SMBUS_TIMEOUT, align 4
  %60 = call i32 @wait_event_timeout(i32 %56, i32 %58, i32 %59)
  %61 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %62 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %61, i32 0, i32 0
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %66 = load i32, i32* @REG_TWSIC1, align 4
  %67 = call i32 @mcam_reg_read(%struct.mcam_camera* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.mcam_camera*, %struct.mcam_camera** %12, align 8
  %69 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %68, i32 0, i32 0
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @TWSIC1_ERROR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %4
  %77 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cam_err(%struct.cafe_camera* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %99

83:                                               ; preds = %4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @TWSIC1_RVALID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @cam_err(%struct.cafe_camera* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %88, %76
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

declare dso_local i32 @mcam_reg_read(%struct.mcam_camera*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @cafe_smbus_read_done(%struct.mcam_camera*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
