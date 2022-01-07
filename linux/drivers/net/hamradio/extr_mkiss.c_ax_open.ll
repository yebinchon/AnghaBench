; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_mkiss.c_ax_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_mkiss.c_ax_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mkiss = type { i32, i64, i32, i32*, i32, i64, i64, i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AXF_INUSE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mkiss*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mkiss* @netdev_priv(%struct.net_device* %6)
  store %struct.mkiss* %7, %struct.mkiss** %4, align 8
  %8 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %9 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %21, 1152
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i64 1152, i64* %5, align 8
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i64 %26, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %31 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = icmp eq i32* %29, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %72

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmalloc(i64 %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %41 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %40, i32 0, i32 7
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %67

44:                                               ; preds = %34
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 73
  %49 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %50 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %53 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %55 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %57 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @AXF_INUSE, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %61 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %65 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %64, i32 0, i32 4
  %66 = call i32 @spin_lock_init(i32* %65)
  store i32 0, i32* %2, align 4
  br label %75

67:                                               ; preds = %43
  %68 = load %struct.mkiss*, %struct.mkiss** %4, align 8
  %69 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kfree(i32* %70)
  br label %72

72:                                               ; preds = %67, %33
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %44, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.mkiss* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
