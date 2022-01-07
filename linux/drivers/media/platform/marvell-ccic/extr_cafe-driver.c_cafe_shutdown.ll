; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_shutdown(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %3 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %4 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %3, i32 0, i32 0
  %5 = call i32 @mccic_shutdown(%struct.TYPE_4__* %4)
  %6 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %7 = call i32 @cafe_smbus_shutdown(%struct.cafe_camera* %6)
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %9 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.cafe_camera* %13)
  %15 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %16 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %19 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pci_iounmap(%struct.TYPE_3__* %17, i32 %21)
  ret void
}

declare dso_local i32 @mccic_shutdown(%struct.TYPE_4__*) #1

declare dso_local i32 @cafe_smbus_shutdown(%struct.cafe_camera*) #1

declare dso_local i32 @free_irq(i32, %struct.cafe_camera*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
