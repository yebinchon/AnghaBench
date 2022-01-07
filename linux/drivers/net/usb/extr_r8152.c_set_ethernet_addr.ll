; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_set_ethernet_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_set_ethernet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sockaddr = type { i32 }

@RTL_VER_01 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @set_ethernet_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ethernet_addr(%struct.r8152* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  %7 = load %struct.r8152*, %struct.r8152** %3, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.r8152*, %struct.r8152** %3, align 8
  %11 = call i32 @determine_ethernet_addr(%struct.r8152* %10, %struct.sockaddr* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.r8152*, %struct.r8152** %3, align 8
  %18 = getelementptr inbounds %struct.r8152, %struct.r8152* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RTL_VER_01, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_addr_copy(i32 %25, i32 %27)
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @rtl8152_set_mac_address(%struct.net_device* %30, %struct.sockaddr* %5)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @determine_ethernet_addr(%struct.r8152*, %struct.sockaddr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rtl8152_set_mac_address(%struct.net_device*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
