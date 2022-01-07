; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6010_set_volume_sif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6010_set_volume_sif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32 }

@TM6010_REQ08_R07_A_LEFT_VOL = common dso_local global i32 0, align 4
@TM6010_REQ08_R08_A_RIGHT_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm6000_core*, i32)* @tm6010_set_volume_sif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm6010_set_volume_sif(%struct.tm6000_core* %0, i32 %1) #0 {
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 15
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, 64
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %15 = load i32, i32* @TM6010_REQ08_R07_A_LEFT_VOL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tm6000_set_reg(%struct.tm6000_core* %14, i32 %15, i32 %16)
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %19 = load i32, i32* @TM6010_REQ08_R08_A_RIGHT_VOL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @tm6000_set_reg(%struct.tm6000_core* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
