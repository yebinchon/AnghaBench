; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32, i32)* @mt9v111_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_update(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @__mt9v111_addr_space_select(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %48

21:                                               ; preds = %5
  %22 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @__mt9v111_read(%struct.i2c_client* %22, i32 %23, i32* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @__mt9v111_write(%struct.i2c_client* %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %45, %27, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @__mt9v111_addr_space_select(%struct.i2c_client*, i32) #1

declare dso_local i32 @__mt9v111_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @__mt9v111_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
