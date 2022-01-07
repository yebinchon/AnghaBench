; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_cx8802_blackbird_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_cx8802_blackbird_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_driver = type { %struct.cx88_core* }
%struct.cx88_core = type { %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_driver*)* @cx8802_blackbird_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_blackbird_remove(%struct.cx8802_driver* %0) #0 {
  %2 = alloca %struct.cx8802_driver*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.cx8802_dev*, align 8
  store %struct.cx8802_driver* %0, %struct.cx8802_driver** %2, align 8
  %5 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %6 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %5, i32 0, i32 0
  %7 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  store %struct.cx88_core* %7, %struct.cx88_core** %3, align 8
  %8 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %9 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %8, i32 0, i32 0
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %9, align 8
  store %struct.cx8802_dev* %10, %struct.cx8802_dev** %4, align 8
  %11 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %12 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %11, i32 0, i32 0
  %13 = load %struct.cx88_core*, %struct.cx88_core** %12, align 8
  %14 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %13, i32 0, i32 0
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %14, align 8
  %16 = call i32 @blackbird_unregister_video(%struct.cx8802_dev* %15)
  %17 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %18 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @v4l2_ctrl_handler_free(i32* %19)
  ret i32 0
}

declare dso_local i32 @blackbird_unregister_video(%struct.cx8802_dev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
