; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_bulk_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_bulk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max8925_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max8925_bulk_write(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.max8925_chip*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.max8925_chip* %12, %struct.max8925_chip** %9, align 8
  %13 = load %struct.max8925_chip*, %struct.max8925_chip** %9, align 8
  %14 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @max8925_write_device(%struct.i2c_client* %16, i32 %17, i32 %18, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.max8925_chip*, %struct.max8925_chip** %9, align 8
  %22 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %10, align 4
  ret i32 %24
}

declare dso_local %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max8925_write_device(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
