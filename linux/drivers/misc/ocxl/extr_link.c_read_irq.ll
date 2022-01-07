; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_read_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_read_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spa = type { i32, i32, i32 }

@SPA_PE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spa*, i32*, i32*, i32*)* @read_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_irq(%struct.spa* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.spa*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.spa* %0, %struct.spa** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.spa*, %struct.spa** %5, align 8
  %11 = getelementptr inbounds %struct.spa, %struct.spa* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @in_be64(i32 %12)
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.spa*, %struct.spa** %5, align 8
  %16 = getelementptr inbounds %struct.spa, %struct.spa* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @in_be64(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.spa*, %struct.spa** %5, align 8
  %21 = getelementptr inbounds %struct.spa, %struct.spa* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @in_be64(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SPA_PE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  ret void
}

declare dso_local i32 @in_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
