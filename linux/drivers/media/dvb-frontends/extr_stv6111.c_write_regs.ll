; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32, i32)* @write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_regs(%struct.stv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [12 x i32], align 16
  store %struct.stv* %0, %struct.stv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 1
  %9 = load %struct.stv*, %struct.stv** %4, align 8
  %10 = getelementptr inbounds %struct.stv, %struct.stv* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @memcpy(i32* %8, i32* %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load %struct.stv*, %struct.stv** %4, align 8
  %20 = getelementptr inbounds %struct.stv, %struct.stv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stv*, %struct.stv** %4, align 8
  %23 = getelementptr inbounds %struct.stv, %struct.stv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 0
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @i2c_write(i32 %21, i32 %24, i32* %25, i32 %27)
  ret i32 %28
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
