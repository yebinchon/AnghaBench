; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.vub300_mmc_host = type { i32, i32*, %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@vub300_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"USB vub300 remote SDIO host controller[%d] now disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @vub300_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.vub300_mmc_host* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.vub300_mmc_host* %7, %struct.vub300_mmc_host** %3, align 8
  %8 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %9 = icmp ne %struct.vub300_mmc_host* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %11, i32 0, i32 2
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  %14 = icmp ne %struct.mmc_host* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %40

16:                                               ; preds = %10
  %17 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %17, i32 0, i32 2
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  store %struct.mmc_host* %19, %struct.mmc_host** %4, align 8
  %20 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %20, i32 0, i32 2
  %22 = load %struct.mmc_host*, %struct.mmc_host** %21, align 8
  %23 = icmp ne %struct.mmc_host* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = call i32 @interface_to_InterfaceNumber(%struct.usb_interface* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %29 = call i32 @usb_set_intfdata(%struct.usb_interface* %28, i32* null)
  %30 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* @vub300_delete, align 4
  %35 = call i32 @kref_put(i32* %33, i32 %34)
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = call i32 @mmc_remove_host(%struct.mmc_host* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %25, %24, %15
  ret void
}

declare dso_local %struct.vub300_mmc_host* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @interface_to_InterfaceNumber(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
