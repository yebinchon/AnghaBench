; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32 }

@si476x_core_i2c_xfer.io_errors_count = internal global i32 0, align 4
@SI476X_I2C_SEND = common dso_local global i32 0, align 4
@SI476X_MAX_IO_ERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_i2c_xfer(%struct.si476x_core* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.si476x_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SI476X_I2C_SEND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.si476x_core*, %struct.si476x_core** %5, align 8
  %15 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @i2c_master_send(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.si476x_core*, %struct.si476x_core** %5, align 8
  %22 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @i2c_master_recv(i32 %23, i8* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* @si476x_core_i2c_xfer.io_errors_count, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @si476x_core_i2c_xfer.io_errors_count, align 4
  %33 = load i32, i32* @SI476X_MAX_IO_ERRORS, align 4
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.si476x_core*, %struct.si476x_core** %5, align 8
  %37 = call i32 @si476x_core_pronounce_dead(%struct.si476x_core* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* @si476x_core_i2c_xfer.io_errors_count, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @si476x_core_pronounce_dead(%struct.si476x_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
