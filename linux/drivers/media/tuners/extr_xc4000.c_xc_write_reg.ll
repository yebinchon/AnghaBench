; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc4000_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xc4000_priv*, i32, i32)* @xc_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_write_reg(%struct.xc4000_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xc4000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.xc4000_priv* %0, %struct.xc4000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.xc4000_priv*, %struct.xc4000_priv** %4, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %25 = call i32 @xc_send_i2c_data(%struct.xc4000_priv* %23, i32* %24, i32 4)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @xc_send_i2c_data(%struct.xc4000_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
