; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.x25_asy = type { i64, i32, i32*, i32*, i64, i64, i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SLF_INUSE = common dso_local global i32 0, align 4
@x25_asy_callbacks = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @x25_asy_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_asy_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.x25_asy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %7)
  store %struct.x25_asy* %8, %struct.x25_asy** %4, align 8
  %9 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %10 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %28 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %30 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %83

34:                                               ; preds = %16
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmalloc(i64 %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %41 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %43 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %76

47:                                               ; preds = %34
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %50 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %52 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %54 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @SLF_INUSE, align 4
  %56 = shl i32 1, %55
  %57 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %58 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netif_start_queue(%struct.net_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @lapb_register(%struct.net_device* %63, i32* @x25_asy_callbacks)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @LAPB_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %86

69:                                               ; preds = %47
  %70 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %71 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %75 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %46
  %77 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %78 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %82 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %33
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %68, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @lapb_register(%struct.net_device*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
