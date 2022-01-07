; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_asix_get_phyid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_asix_get_phyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @asix_get_phyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asix_get_phyid(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MII_PHYSID1, align 4
  %19 = call i32 @asix_mdio_read(i32 %13, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %64

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 65535
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %35

30:                                               ; preds = %26, %23
  %31 = call i32 @mdelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %29, %7
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 0, i32* %2, align 4
  br label %64

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 65535
  %45 = shl i32 %44, 16
  store i32 %45, i32* %5, align 4
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MII_PHYSID2, align 4
  %54 = call i32 @asix_mdio_read(i32 %48, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %64

58:                                               ; preds = %42
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 65535
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %57, %41, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @asix_mdio_read(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
