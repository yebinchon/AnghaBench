; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c___cnic_free_uio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c___cnic_free_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_uio_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_uio_dev*)* @__cnic_free_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cnic_free_uio(%struct.cnic_uio_dev* %0) #0 {
  %2 = alloca %struct.cnic_uio_dev*, align 8
  store %struct.cnic_uio_dev* %0, %struct.cnic_uio_dev** %2, align 8
  %3 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %3, i32 0, i32 1
  %5 = call i32 @uio_unregister_device(i32* %4)
  %6 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %2, align 8
  %7 = call i32 @__cnic_free_uio_rings(%struct.cnic_uio_dev* %6)
  %8 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pci_dev_put(i32 %10)
  %12 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %2, align 8
  %13 = call i32 @kfree(%struct.cnic_uio_dev* %12)
  ret void
}

declare dso_local i32 @uio_unregister_device(i32*) #1

declare dso_local i32 @__cnic_free_uio_rings(%struct.cnic_uio_dev*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.cnic_uio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
