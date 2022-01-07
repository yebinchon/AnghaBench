; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_cxd_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_cxd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { %struct.TYPE_2__*, %struct.ngene_ci }
%struct.TYPE_2__ = type { i32** }
%struct.ngene_ci = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @cxd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxd_detach(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca %struct.ngene_ci*, align 8
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %4 = load %struct.ngene*, %struct.ngene** %2, align 8
  %5 = getelementptr inbounds %struct.ngene, %struct.ngene* %4, i32 0, i32 1
  store %struct.ngene_ci* %5, %struct.ngene_ci** %3, align 8
  %6 = load %struct.ngene_ci*, %struct.ngene_ci** %3, align 8
  %7 = getelementptr inbounds %struct.ngene_ci, %struct.ngene_ci* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @dvb_ca_en50221_release(i32* %8)
  %10 = load %struct.ngene*, %struct.ngene** %2, align 8
  %11 = getelementptr inbounds %struct.ngene, %struct.ngene* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @dvb_module_release(i32* %17)
  %19 = load %struct.ngene*, %struct.ngene** %2, align 8
  %20 = getelementptr inbounds %struct.ngene, %struct.ngene* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.ngene_ci*, %struct.ngene_ci** %3, align 8
  %27 = getelementptr inbounds %struct.ngene_ci, %struct.ngene_ci* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local i32 @dvb_ca_en50221_release(i32*) #1

declare dso_local i32 @dvb_module_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
