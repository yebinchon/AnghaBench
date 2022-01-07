; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max8925_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max8925_set_bits(%struct.i2c_client* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.max8925_chip*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.max8925_chip* %13, %struct.max8925_chip** %9, align 8
  %14 = load %struct.max8925_chip*, %struct.max8925_chip** %9, align 8
  %15 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @max8925_read_device(%struct.i2c_client* %17, i32 %18, i32 1, i8* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %40

23:                                               ; preds = %4
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %10, align 1
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %10, align 1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @max8925_write_device(%struct.i2c_client* %37, i32 %38, i32 1, i8* %10)
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %23, %22
  %41 = load %struct.max8925_chip*, %struct.max8925_chip** %9, align 8
  %42 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max8925_read_device(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @max8925_write_device(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
