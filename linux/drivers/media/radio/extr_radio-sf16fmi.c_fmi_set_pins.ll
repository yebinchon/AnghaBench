; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_fmi_set_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_fmi_set_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmi = type { i32, i32, i32 }

@FMI_BIT_TUN_STRQ = common dso_local global i32 0, align 4
@FMI_BIT_VOL_SW = common dso_local global i32 0, align 4
@LM7000_DATA = common dso_local global i32 0, align 4
@FMI_BIT_TUN_DATA = common dso_local global i32 0, align 4
@LM7000_CLK = common dso_local global i32 0, align 4
@FMI_BIT_TUN_CLK = common dso_local global i32 0, align 4
@LM7000_CE = common dso_local global i32 0, align 4
@FMI_BIT_TUN_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fmi_set_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmi_set_pins(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fmi*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.fmi*
  store %struct.fmi* %8, %struct.fmi** %5, align 8
  %9 = load i32, i32* @FMI_BIT_TUN_STRQ, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.fmi*, %struct.fmi** %5, align 8
  %11 = getelementptr inbounds %struct.fmi, %struct.fmi* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FMI_BIT_VOL_SW, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @LM7000_DATA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @FMI_BIT_TUN_DATA, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @LM7000_CLK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @FMI_BIT_TUN_CLK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @LM7000_CE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @FMI_BIT_TUN_CE, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.fmi*, %struct.fmi** %5, align 8
  %47 = getelementptr inbounds %struct.fmi, %struct.fmi* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.fmi*, %struct.fmi** %5, align 8
  %51 = getelementptr inbounds %struct.fmi, %struct.fmi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @outb_p(i32 %49, i32 %52)
  %54 = load %struct.fmi*, %struct.fmi** %5, align 8
  %55 = getelementptr inbounds %struct.fmi, %struct.fmi* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
