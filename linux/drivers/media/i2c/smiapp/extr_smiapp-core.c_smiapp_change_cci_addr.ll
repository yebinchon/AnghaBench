; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_change_cci_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_change_cci_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@SMIAPP_REG_U8_CCI_ADDRESS_CONTROL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_change_cci_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_change_cci_addr(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %7 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %13 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %20 = load i32, i32* @SMIAPP_REG_U8_CCI_ADDRESS_CONTROL, align 4
  %21 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %22 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  %27 = call i32 @smiapp_write(%struct.smiapp_sensor* %19, i32 %20, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %1
  %33 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %34 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %41 = load i32, i32* @SMIAPP_REG_U8_CCI_ADDRESS_CONTROL, align 4
  %42 = call i32 @smiapp_read(%struct.smiapp_sensor* %40, i32 %41, i32* %6)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %60

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %50 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 1
  %55 = icmp ne i32 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56, %45, %30
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_write(%struct.smiapp_sensor*, i32, i32) #1

declare dso_local i32 @smiapp_read(%struct.smiapp_sensor*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
