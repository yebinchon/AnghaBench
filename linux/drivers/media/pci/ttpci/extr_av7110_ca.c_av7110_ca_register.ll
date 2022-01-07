; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ca.c_av7110_ca_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ca.c_av7110_ca_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32 }

@dvbdev_ca = common dso_local global i32 0, align 4
@DVB_DEVICE_CA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_ca_register(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %3 = load %struct.av7110*, %struct.av7110** %2, align 8
  %4 = getelementptr inbounds %struct.av7110, %struct.av7110* %3, i32 0, i32 1
  %5 = load %struct.av7110*, %struct.av7110** %2, align 8
  %6 = getelementptr inbounds %struct.av7110, %struct.av7110* %5, i32 0, i32 0
  %7 = load %struct.av7110*, %struct.av7110** %2, align 8
  %8 = load i32, i32* @DVB_DEVICE_CA, align 4
  %9 = call i32 @dvb_register_device(i32* %4, i32* %6, i32* @dvbdev_ca, %struct.av7110* %7, i32 %8, i32 0)
  ret i32 %9
}

declare dso_local i32 @dvb_register_device(i32*, i32*, i32*, %struct.av7110*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
