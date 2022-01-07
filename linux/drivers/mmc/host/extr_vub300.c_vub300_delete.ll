; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.vub300_mmc_host = type { i32, i32*, i32*, %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @vub300_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_delete(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %5 = load %struct.kref*, %struct.kref** %2, align 8
  %6 = call %struct.vub300_mmc_host* @kref_to_vub300_mmc_host(%struct.kref* %5)
  store %struct.vub300_mmc_host* %6, %struct.vub300_mmc_host** %3, align 8
  %7 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %7, i32 0, i32 3
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @usb_free_urb(i32* %12)
  %14 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @usb_free_urb(i32* %18)
  %20 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_put_dev(i32 %24)
  %26 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %27 = call i32 @mmc_free_host(%struct.mmc_host* %26)
  ret void
}

declare dso_local %struct.vub300_mmc_host* @kref_to_vub300_mmc_host(%struct.kref*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
