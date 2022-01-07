; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-i2c.c_pm860x_page_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-i2c.c_pm860x_page_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm860x_page_reg_write(%struct.i2c_client* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %13 = call i32 @i2c_lock_bus(i32 %11, i32 %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = call i32 @read_device(%struct.i2c_client* %14, i32 250, i32 0, i8* %7)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call i32 @read_device(%struct.i2c_client* %16, i32 251, i32 0, i8* %7)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @read_device(%struct.i2c_client* %18, i32 255, i32 0, i8* %7)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @write_device(%struct.i2c_client* %20, i32 %21, i32 1, i8* %6)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @read_device(%struct.i2c_client* %23, i32 254, i32 0, i8* %7)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @read_device(%struct.i2c_client* %25, i32 252, i32 0, i8* %7)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %31 = call i32 @i2c_unlock_bus(i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_lock_bus(i32, i32) #1

declare dso_local i32 @read_device(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @write_device(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @i2c_unlock_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
