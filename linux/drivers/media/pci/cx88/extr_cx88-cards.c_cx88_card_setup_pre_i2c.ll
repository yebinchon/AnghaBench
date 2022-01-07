; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_card_setup_pre_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_card_setup_pre_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MO_GP0_IO = common dso_local global i32 0, align 4
@MO_GP2_IO = common dso_local global i32 0, align 4
@XC2028_TUNER_RESET = common dso_local global i32 0, align 4
@XC4000_TUNER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*)* @cx88_card_setup_pre_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx88_card_setup_pre_i2c(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %3 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %4 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %62 [
    i32 140, label %6
    i32 136, label %16
    i32 137, label %16
    i32 141, label %26
    i32 132, label %29
    i32 139, label %29
    i32 138, label %29
    i32 130, label %46
    i32 134, label %46
    i32 133, label %50
    i32 131, label %50
    i32 129, label %50
    i32 128, label %50
    i32 135, label %54
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @MO_GP0_IO, align 4
  %8 = call i32 @cx_write(i32 %7, i32 61320)
  %9 = call i32 @udelay(i32 1000)
  %10 = load i32, i32* @MO_GP0_IO, align 4
  %11 = call i32 @cx_clear(i32 %10, i32 136)
  %12 = call i32 @udelay(i32 50)
  %13 = load i32, i32* @MO_GP0_IO, align 4
  %14 = call i32 @cx_set(i32 %13, i32 136)
  %15 = call i32 @udelay(i32 1000)
  br label %62

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @MO_GP2_IO, align 4
  %18 = call i32 @cx_write(i32 %17, i32 3319)
  %19 = call i32 @msleep(i32 50)
  %20 = load i32, i32* @MO_GP2_IO, align 4
  %21 = call i32 @cx_write(i32 %20, i32 3829)
  %22 = call i32 @msleep(i32 50)
  %23 = load i32, i32* @MO_GP2_IO, align 4
  %24 = call i32 @cx_write(i32 %23, i32 3319)
  %25 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %62

26:                                               ; preds = %1
  %27 = load i32, i32* @MO_GP0_IO, align 4
  %28 = call i32 @cx_set(i32 %27, i32 4112)
  br label %62

29:                                               ; preds = %1, %1, %1
  %30 = load i32, i32* @MO_GP0_IO, align 4
  %31 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cx_write(i32 %30, i32 %37)
  %39 = call i32 @udelay(i32 1000)
  %40 = load i32, i32* @MO_GP0_IO, align 4
  %41 = call i32 @cx_clear(i32 %40, i32 128)
  %42 = call i32 @udelay(i32 50)
  %43 = load i32, i32* @MO_GP0_IO, align 4
  %44 = call i32 @cx_set(i32 %43, i32 128)
  %45 = call i32 @udelay(i32 1000)
  br label %62

46:                                               ; preds = %1, %1
  %47 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %48 = load i32, i32* @XC2028_TUNER_RESET, align 4
  %49 = call i32 @cx88_xc3028_winfast1800h_callback(%struct.cx88_core* %47, i32 %48, i32 0)
  br label %62

50:                                               ; preds = %1, %1, %1, %1
  %51 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %52 = load i32, i32* @XC4000_TUNER_RESET, align 4
  %53 = call i32 @cx88_xc4000_winfast2000h_plus_callback(%struct.cx88_core* %51, i32 %52, i32 0)
  br label %62

54:                                               ; preds = %1
  %55 = load i32, i32* @MO_GP0_IO, align 4
  %56 = call i32 @cx_write(i32 %55, i32 12848)
  %57 = load i32, i32* @MO_GP0_IO, align 4
  %58 = call i32 @cx_write(i32 %57, i32 12816)
  %59 = call i32 @usleep_range(i32 10000, i32 20000)
  %60 = load i32, i32* @MO_GP0_IO, align 4
  %61 = call i32 @cx_write(i32 %60, i32 4656)
  br label %62

62:                                               ; preds = %1, %54, %50, %46, %29, %26, %16, %6
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cx88_xc3028_winfast1800h_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx88_xc4000_winfast2000h_plus_callback(%struct.cx88_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
