; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_dma_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_dma_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvin_dma_unregister(%struct.rvin_dev* %0) #0 {
  %2 = alloca %struct.rvin_dev*, align 8
  store %struct.rvin_dev* %0, %struct.rvin_dev** %2, align 8
  %3 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %4 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %3, i32 0, i32 1
  %5 = call i32 @mutex_destroy(i32* %4)
  %6 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %6, i32 0, i32 0
  %8 = call i32 @v4l2_device_unregister(i32* %7)
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
