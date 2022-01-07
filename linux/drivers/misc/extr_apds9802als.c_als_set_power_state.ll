; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_als_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_als_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.als_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @als_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_set_power_state(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.als_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.als_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.als_data* %8, %struct.als_data** %6, align 8
  %9 = load %struct.als_data*, %struct.als_data** %6, align 8
  %10 = getelementptr inbounds %struct.als_data, %struct.als_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 128)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 254
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %27, i32 128, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.als_data*, %struct.als_data** %6, align 8
  %32 = getelementptr inbounds %struct.als_data, %struct.als_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.als_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
