; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_tc9154a_set_attenuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_tc9154a_set_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmr2 = type { i32 }

@PT_DATA = common dso_local global i32 0, align 4
@PT_CK = common dso_local global i32 0, align 4
@PT_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmr2*, i32, i32)* @tc9154a_set_attenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc9154a_set_attenuation(%struct.fmr2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fmr2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fmr2* %0, %struct.fmr2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 10
  %12 = call i32 @TC9154A_ATT_MAJ(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = srem i32 %13, 10
  %15 = sdiv i32 %14, 2
  %16 = call i32 @TC9154A_ATT_MIN(i32 %15)
  %17 = or i32 %12, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %48, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 18
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @PT_DATA, align 4
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.fmr2*, %struct.fmr2** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @tc9154a_set_pins(%struct.fmr2* %35, i32 %36)
  %38 = call i32 @udelay(i32 5)
  %39 = load %struct.fmr2*, %struct.fmr2** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PT_CK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @tc9154a_set_pins(%struct.fmr2* %39, i32 %42)
  %44 = call i32 @udelay(i32 5)
  %45 = load %struct.fmr2*, %struct.fmr2** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @tc9154a_set_pins(%struct.fmr2* %45, i32 %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %21

51:                                               ; preds = %21
  %52 = call i32 @udelay(i32 5)
  %53 = load %struct.fmr2*, %struct.fmr2** %4, align 8
  %54 = load i32, i32* @PT_ST, align 4
  %55 = call i32 @tc9154a_set_pins(%struct.fmr2* %53, i32 %54)
  %56 = call i32 @udelay(i32 5)
  %57 = load %struct.fmr2*, %struct.fmr2** %4, align 8
  %58 = call i32 @tc9154a_set_pins(%struct.fmr2* %57, i32 0)
  ret void
}

declare dso_local i32 @TC9154A_ATT_MAJ(i32) #1

declare dso_local i32 @TC9154A_ATT_MIN(i32) #1

declare dso_local i32 @tc9154a_set_pins(%struct.fmr2*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
