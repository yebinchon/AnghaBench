; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_priv = type { i32 }

@XREG_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xc5000_priv*, i32*, i32*, i32*, i32*)* @xc_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_get_version(%struct.xc5000_priv* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xc5000_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xc5000_priv* %0, %struct.xc5000_priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.xc5000_priv*, %struct.xc5000_priv** %7, align 8
  %15 = load i32, i32* @XREG_VERSION, align 4
  %16 = call i32 @xc5000_readreg(%struct.xc5000_priv* %14, i32 %15, i32* %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %37

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = ashr i32 %22, 12
  %24 = and i32 %23, 15
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 15
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = ashr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 15
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @xc5000_readreg(%struct.xc5000_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
