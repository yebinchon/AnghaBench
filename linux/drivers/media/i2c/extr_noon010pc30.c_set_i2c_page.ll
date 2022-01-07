; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_set_i2c_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_set_i2c_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noon010_info = type { i64 }
%struct.i2c_client = type { i32 }

@PAGEMODE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noon010_info*, %struct.i2c_client*, i32)* @set_i2c_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_i2c_page(%struct.noon010_info* %0, %struct.i2c_client* %1, i32 %2) #0 {
  %4 = alloca %struct.noon010_info*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.noon010_info* %0, %struct.noon010_info** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.noon010_info*, %struct.noon010_info** %4, align 8
  %14 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = load i32, i32* @PAGEMODE_REG, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %23, i32 %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.noon010_info*, %struct.noon010_info** %4, align 8
  %32 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %22
  br label %34

34:                                               ; preds = %33, %18, %3
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
