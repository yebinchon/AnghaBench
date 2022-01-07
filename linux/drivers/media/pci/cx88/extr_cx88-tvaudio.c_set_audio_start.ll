; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-tvaudio.c_set_audio_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-tvaudio.c_set_audio_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@AUD_VOL_CTL = common dso_local global i32 0, align 4
@AUD_INIT = common dso_local global i32 0, align 4
@AUD_INIT_LD = common dso_local global i32 0, align 4
@AUD_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i32)* @set_audio_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_audio_start(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @AUD_VOL_CTL, align 4
  %6 = call i32 @cx_write(i32 %5, i32 64)
  %7 = load i32, i32* @AUD_INIT, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cx_write(i32 %7, i32 %8)
  %10 = load i32, i32* @AUD_INIT_LD, align 4
  %11 = call i32 @cx_write(i32 %10, i32 1)
  %12 = load i32, i32* @AUD_SOFT_RESET, align 4
  %13 = call i32 @cx_write(i32 %12, i32 1)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
