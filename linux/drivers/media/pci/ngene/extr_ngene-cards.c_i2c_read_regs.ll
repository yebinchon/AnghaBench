; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_i2c_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_i2c_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32, i32*, i32)* @i2c_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read_regs(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32* %8, i32** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 1
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %22 = load i32*, i32** %9, align 8
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  %26 = load i32, i32* @I2C_M_RD, align 4
  store i32 %26, i32* %25, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %29 = call i32 @i2c_transfer(%struct.i2c_adapter* %27, %struct.i2c_msg* %28, i32 2)
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 -1
  ret i32 %32
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
