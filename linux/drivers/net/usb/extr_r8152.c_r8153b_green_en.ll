; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_green_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_green_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SRAM_GREEN_CFG = common dso_local global i32 0, align 4
@GREEN_ETH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @r8153b_green_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153b_green_en(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.r8152*, %struct.r8152** %3, align 8
  %10 = call i32 @sram_write(%struct.r8152* %9, i32 32837, i32 0)
  %11 = load %struct.r8152*, %struct.r8152** %3, align 8
  %12 = call i32 @sram_write(%struct.r8152* %11, i32 32845, i32 4642)
  %13 = load %struct.r8152*, %struct.r8152** %3, align 8
  %14 = call i32 @sram_write(%struct.r8152* %13, i32 32861, i32 34)
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.r8152*, %struct.r8152** %3, align 8
  %17 = call i32 @sram_write(%struct.r8152* %16, i32 32837, i32 9284)
  %18 = load %struct.r8152*, %struct.r8152** %3, align 8
  %19 = call i32 @sram_write(%struct.r8152* %18, i32 32845, i32 9284)
  %20 = load %struct.r8152*, %struct.r8152** %3, align 8
  %21 = call i32 @sram_write(%struct.r8152* %20, i32 32861, i32 9284)
  br label %22

22:                                               ; preds = %15, %8
  %23 = load %struct.r8152*, %struct.r8152** %3, align 8
  %24 = load i32, i32* @SRAM_GREEN_CFG, align 4
  %25 = call i32 @sram_read(%struct.r8152* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @GREEN_ETH_EN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.r8152*, %struct.r8152** %3, align 8
  %30 = load i32, i32* @SRAM_GREEN_CFG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sram_write(%struct.r8152* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.r8152*, %struct.r8152** %3, align 8
  %35 = getelementptr inbounds %struct.r8152, %struct.r8152* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  ret void
}

declare dso_local i32 @sram_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @sram_read(%struct.r8152*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
