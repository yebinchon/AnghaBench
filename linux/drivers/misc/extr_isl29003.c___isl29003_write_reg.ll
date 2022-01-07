; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_isl29003.c___isl29003_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_isl29003.c___isl29003_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.isl29003_data = type { i32*, i32 }

@ISL29003_NUM_CACHABLE_REGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i64, i32, i32, i32)* @__isl29003_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__isl29003_write_reg(%struct.i2c_client* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.isl29003_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %16 = call %struct.isl29003_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.isl29003_data* %16, %struct.isl29003_data** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ISL29003_NUM_CACHABLE_REGS, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %60

23:                                               ; preds = %5
  %24 = load %struct.isl29003_data*, %struct.isl29003_data** %12, align 8
  %25 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.isl29003_data*, %struct.isl29003_data** %12, align 8
  %28 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %14, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %42, i64 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %23
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.isl29003_data*, %struct.isl29003_data** %12, align 8
  %51 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %23
  %56 = load %struct.isl29003_data*, %struct.isl29003_data** %12, align 8
  %57 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %20
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.isl29003_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
