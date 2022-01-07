; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_writedata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_writedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pti_masterchannel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pti_writedata(%struct.pti_masterchannel* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pti_masterchannel*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pti_masterchannel* %0, %struct.pti_masterchannel** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %4, align 8
  %8 = icmp ne %struct.pti_masterchannel* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pti_write_to_aperture(%struct.pti_masterchannel* %16, i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %12, %9, %3
  ret void
}

declare dso_local i32 @pti_write_to_aperture(%struct.pti_masterchannel*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
