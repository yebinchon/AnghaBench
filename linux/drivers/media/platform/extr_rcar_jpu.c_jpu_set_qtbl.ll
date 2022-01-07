; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_set_qtbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_set_qtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu = type { i32 }

@qtbl_lum = common dso_local global i32* null, align 8
@QTBL_SIZE = common dso_local global i32 0, align 4
@qtbl_chr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jpu*, i16)* @jpu_set_qtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_set_qtbl(%struct.jpu* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.jpu*, align 8
  %4 = alloca i16, align 2
  store %struct.jpu* %0, %struct.jpu** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.jpu*, %struct.jpu** %3, align 8
  %6 = call i32 @JCQTBL(i32 0)
  %7 = load i32*, i32** @qtbl_lum, align 8
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QTBL_SIZE, align 4
  %13 = call i32 @jpu_set_tbl(%struct.jpu* %5, i32 %6, i32 %11, i32 %12)
  %14 = load %struct.jpu*, %struct.jpu** %3, align 8
  %15 = call i32 @JCQTBL(i32 1)
  %16 = load i32*, i32** @qtbl_chr, align 8
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @QTBL_SIZE, align 4
  %22 = call i32 @jpu_set_tbl(%struct.jpu* %14, i32 %15, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @jpu_set_tbl(%struct.jpu*, i32, i32, i32) #1

declare dso_local i32 @JCQTBL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
