; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_camera_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_camera_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@S3C_CAMIF_REG_CIGCTRL = common dso_local global i32 0, align 4
@CIGCTRL_INVPOLPCLK = common dso_local global i32 0, align 4
@CIGCTRL_INVPOLVSYNC = common dso_local global i32 0, align 4
@CIGCTRL_INVPOLHREF = common dso_local global i32 0, align 4
@CIGCTRL_INVPOLFIELD = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@V4L2_MBUS_FIELD_EVEN_LOW = common dso_local global i32 0, align 4
@CIGCTRL_FIELDMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Setting CIGCTRL to: %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_camera_bus(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %5 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %6 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %11 = load i32, i32* @S3C_CAMIF_REG_CIGCTRL, align 4
  %12 = call i32 @camif_read(%struct.camif_dev* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CIGCTRL_INVPOLPCLK, align 4
  %14 = load i32, i32* @CIGCTRL_INVPOLVSYNC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CIGCTRL_INVPOLHREF, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CIGCTRL_INVPOLFIELD, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @CIGCTRL_INVPOLPCLK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @CIGCTRL_INVPOLVSYNC, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @CIGCTRL_INVPOLHREF, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %51 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_LOW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @CIGCTRL_INVPOLFIELD, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* @CIGCTRL_FIELDMODE, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %49
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %74 = load i32, i32* @S3C_CAMIF_REG_CIGCTRL, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @camif_write(%struct.camif_dev* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
