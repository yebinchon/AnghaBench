; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc73xx*, i32, i32, i32, i32*)* @vsc73xx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_read(%struct.vsc73xx* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.vsc73xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.vsc73xx* %0, %struct.vsc73xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.vsc73xx*, %struct.vsc73xx** %6, align 8
  %12 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.vsc73xx*, i32, i32, i32, i32*)**
  %16 = load i32 (%struct.vsc73xx*, i32, i32, i32, i32*)*, i32 (%struct.vsc73xx*, i32, i32, i32, i32*)** %15, align 8
  %17 = load %struct.vsc73xx*, %struct.vsc73xx** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 %16(%struct.vsc73xx* %17, i32 %18, i32 %19, i32 %20, i32* %21)
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
