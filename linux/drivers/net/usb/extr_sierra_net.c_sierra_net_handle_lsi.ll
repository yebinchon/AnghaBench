; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_handle_lsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_handle_lsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.hip_hdr = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sierra_net_data = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Invalid LSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i8*, %struct.hip_hdr*)* @sierra_net_handle_lsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sierra_net_handle_lsi(%struct.usbnet* %0, i8* %1, %struct.hip_hdr* %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hip_hdr*, align 8
  %7 = alloca %struct.sierra_net_data*, align 8
  %8 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hip_hdr* %2, %struct.hip_hdr** %6, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = call %struct.sierra_net_data* @sierra_net_get_private(%struct.usbnet* %9)
  store %struct.sierra_net_data* %10, %struct.sierra_net_data** %7, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.hip_hdr*, %struct.hip_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  %18 = load %struct.hip_hdr*, %struct.hip_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sierra_net_parse_lsi(%struct.usbnet* %11, i8* %17, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_err(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %49

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.sierra_net_data*, %struct.sierra_net_data** %7, align 8
  %35 = load %struct.hip_hdr*, %struct.hip_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.hip_hdr, %struct.hip_hdr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sierra_net_set_ctx_index(%struct.sierra_net_data* %34, i32 %38)
  %40 = load %struct.sierra_net_data*, %struct.sierra_net_data** %7, align 8
  %41 = getelementptr inbounds %struct.sierra_net_data, %struct.sierra_net_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %45

42:                                               ; preds = %30
  %43 = load %struct.sierra_net_data*, %struct.sierra_net_data** %7, align 8
  %44 = getelementptr inbounds %struct.sierra_net_data, %struct.sierra_net_data* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @usbnet_link_change(%struct.usbnet* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %25
  ret void
}

declare dso_local %struct.sierra_net_data* @sierra_net_get_private(%struct.usbnet*) #1

declare dso_local i32 @sierra_net_parse_lsi(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @sierra_net_set_ctx_index(%struct.sierra_net_data*, i32) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
