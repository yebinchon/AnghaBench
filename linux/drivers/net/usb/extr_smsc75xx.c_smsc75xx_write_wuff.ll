; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_write_wuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_write_wuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@WUF_CFGX = common dso_local global i32 0, align 4
@WUF_MASKX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error writing WUF_CFGX\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing WUF_MASKX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32)* @smsc75xx_write_wuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_write_wuff(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @WUF_CFGX, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 %14, 4
  %16 = add nsw i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @WUF_MASKX, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 16
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @smsc75xx_write_reg(%struct.usbnet* %21, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netdev_warn(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %86

33:                                               ; preds = %4
  %34 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @smsc75xx_write_reg(%struct.usbnet* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netdev_warn(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %33
  %47 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 4
  %50 = call i32 @smsc75xx_write_reg(%struct.usbnet* %47, i32 %49, i32 0)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @netdev_warn(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %46
  %60 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 8
  %63 = call i32 @smsc75xx_write_reg(%struct.usbnet* %60, i32 %62, i32 0)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netdev_warn(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %86

72:                                               ; preds = %59
  %73 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 12
  %76 = call i32 @smsc75xx_write_reg(%struct.usbnet* %73, i32 %75, i32 0)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @netdev_warn(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %79, %66, %53, %40, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @smsc75xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
