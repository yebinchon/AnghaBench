; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_bytesperline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_bytesperline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxp_fmt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxp_fmt*, i32)* @pxp_bytesperline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_bytesperline(%struct.pxp_fmt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxp_fmt*, align 8
  %5 = alloca i32, align 4
  store %struct.pxp_fmt* %0, %struct.pxp_fmt** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pxp_fmt*, %struct.pxp_fmt** %4, align 8
  %7 = getelementptr inbounds %struct.pxp_fmt, %struct.pxp_fmt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %11 [
    i32 129, label %9
    i32 133, label %9
    i32 131, label %9
    i32 128, label %9
    i32 132, label %9
    i32 130, label %9
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.pxp_fmt*, %struct.pxp_fmt** %4, align 8
  %14 = getelementptr inbounds %struct.pxp_fmt, %struct.pxp_fmt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = ashr i32 %16, 3
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
