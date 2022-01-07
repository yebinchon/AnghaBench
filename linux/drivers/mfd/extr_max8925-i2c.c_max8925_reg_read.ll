; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max8925_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max8925_reg_read(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8925_chip*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.max8925_chip* %10, %struct.max8925_chip** %6, align 8
  store i8 0, i8* %7, align 1
  %11 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %12 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @max8925_read_device(%struct.i2c_client* %14, i32 %15, i32 1, i8* %7)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %18 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max8925_read_device(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
