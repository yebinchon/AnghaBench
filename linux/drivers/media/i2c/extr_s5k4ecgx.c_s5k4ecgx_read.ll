; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@REG_CMDRD_ADDRH = common dso_local global i32 0, align 4
@REG_CMDRD_ADDRL = common dso_local global i32 0, align 4
@REG_CMDBUF0_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @s5k4ecgx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_read(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 16
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65535
  store i32 %13, i32* %8, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* @REG_CMDRD_ADDRH, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @REG_CMDRD_ADDRL, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @REG_CMDBUF0_ADDR, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @s5k4ecgx_i2c_read(%struct.i2c_client* %29, i32 %30, i32* %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @s5k4ecgx_i2c_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @s5k4ecgx_i2c_read(%struct.i2c_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
