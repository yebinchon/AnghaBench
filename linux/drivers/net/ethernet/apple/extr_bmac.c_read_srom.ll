; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_read_srom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_read_srom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SROMCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*, i32, i32)* @read_srom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @read_srom(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = lshr i32 %15, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %8, align 2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 1
  %26 = trunc i32 %25 to i16
  %27 = call i32 @bmac_clock_in_bit(%struct.net_device* %22, i16 zeroext %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %10

31:                                               ; preds = %10
  store i16 0, i16* %7, align 2
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call zeroext i16 @bmac_clock_out_bit(%struct.net_device* %36)
  store i16 %37, i16* %8, align 2
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = shl i32 %39, 1
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %7, align 2
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %7, align 2
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load i32, i32* @SROMCSR, align 4
  %54 = call i32 @bmwrite(%struct.net_device* %52, i32 %53, i32 0)
  %55 = load i16, i16* %7, align 2
  ret i16 %55
}

declare dso_local i32 @bmac_clock_in_bit(%struct.net_device*, i16 zeroext) #1

declare dso_local zeroext i16 @bmac_clock_out_bit(%struct.net_device*) #1

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
