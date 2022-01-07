; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_set_htbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_set_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu = type { i32 }

@hdctbl_lum = common dso_local global i32 0, align 4
@HDCTBL_SIZE = common dso_local global i32 0, align 4
@hactbl_lum = common dso_local global i32 0, align 4
@HACTBL_SIZE = common dso_local global i32 0, align 4
@hdctbl_chr = common dso_local global i32 0, align 4
@hactbl_chr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jpu*)* @jpu_set_htbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_set_htbl(%struct.jpu* %0) #0 {
  %2 = alloca %struct.jpu*, align 8
  store %struct.jpu* %0, %struct.jpu** %2, align 8
  %3 = load %struct.jpu*, %struct.jpu** %2, align 8
  %4 = call i32 @JCHTBD(i32 0)
  %5 = load i32, i32* @hdctbl_lum, align 4
  %6 = load i32, i32* @HDCTBL_SIZE, align 4
  %7 = call i32 @jpu_set_tbl(%struct.jpu* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.jpu*, %struct.jpu** %2, align 8
  %9 = call i32 @JCHTBA(i32 0)
  %10 = load i32, i32* @hactbl_lum, align 4
  %11 = load i32, i32* @HACTBL_SIZE, align 4
  %12 = call i32 @jpu_set_tbl(%struct.jpu* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.jpu*, %struct.jpu** %2, align 8
  %14 = call i32 @JCHTBD(i32 1)
  %15 = load i32, i32* @hdctbl_chr, align 4
  %16 = load i32, i32* @HDCTBL_SIZE, align 4
  %17 = call i32 @jpu_set_tbl(%struct.jpu* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.jpu*, %struct.jpu** %2, align 8
  %19 = call i32 @JCHTBA(i32 1)
  %20 = load i32, i32* @hactbl_chr, align 4
  %21 = load i32, i32* @HACTBL_SIZE, align 4
  %22 = call i32 @jpu_set_tbl(%struct.jpu* %18, i32 %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @jpu_set_tbl(%struct.jpu*, i32, i32, i32) #1

declare dso_local i32 @JCHTBD(i32) #1

declare dso_local i32 @JCHTBA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
