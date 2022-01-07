; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_symbol_timing_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_symbol_timing_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_symbol_timing = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing*)* @img_ir_symbol_timing_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_symbol_timing_defaults(%struct.img_ir_symbol_timing* %0, %struct.img_ir_symbol_timing* %1) #0 {
  %3 = alloca %struct.img_ir_symbol_timing*, align 8
  %4 = alloca %struct.img_ir_symbol_timing*, align 8
  store %struct.img_ir_symbol_timing* %0, %struct.img_ir_symbol_timing** %3, align 8
  store %struct.img_ir_symbol_timing* %1, %struct.img_ir_symbol_timing** %4, align 8
  %5 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %3, align 8
  %6 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %5, i32 0, i32 1
  %7 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %4, align 8
  %8 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %7, i32 0, i32 1
  %9 = call i32 @img_ir_timing_defaults(i32* %6, i32* %8)
  %10 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %3, align 8
  %11 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %10, i32 0, i32 0
  %12 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %4, align 8
  %13 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %12, i32 0, i32 0
  %14 = call i32 @img_ir_timing_defaults(i32* %11, i32* %13)
  ret void
}

declare dso_local i32 @img_ir_timing_defaults(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
