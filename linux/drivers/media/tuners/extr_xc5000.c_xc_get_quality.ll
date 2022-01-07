; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_get_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_get_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_priv = type { i32 }

@XREG_QUALITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xc5000_priv*, i32*)* @xc_get_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_get_quality(%struct.xc5000_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.xc5000_priv*, align 8
  %4 = alloca i32*, align 8
  store %struct.xc5000_priv* %0, %struct.xc5000_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.xc5000_priv*, %struct.xc5000_priv** %3, align 8
  %6 = load i32, i32* @XREG_QUALITY, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @xc5000_readreg(%struct.xc5000_priv* %5, i32 %6, i32* %7)
  ret i32 %8
}

declare dso_local i32 @xc5000_readreg(%struct.xc5000_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
