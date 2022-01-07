; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm_write_shared_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm_write_shared_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }

@DM_SHARED_DATA = common dso_local global i32 0, align 4
@DM_SHARED_ADDR = common dso_local global i32 0, align 4
@DM_SHARED_CTRL = common dso_local global i32 0, align 4
@DM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s write timed out!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32)* @dm_write_shared_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_write_shared_word(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %16 = load i32, i32* @DM_SHARED_DATA, align 4
  %17 = call i32 @dm_write(%struct.usbnet* %15, i32 %16, i32 2, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %81

21:                                               ; preds = %4
  %22 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %23 = load i32, i32* @DM_SHARED_ADDR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 64
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  %33 = call i32 @dm_write_reg(%struct.usbnet* %22, i32 %23, i32 %32)
  %34 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %35 = load i32, i32* @DM_SHARED_CTRL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 26, i32 18
  %40 = call i32 @dm_write_reg(%struct.usbnet* %34, i32 %35, i32 %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %59, %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @DM_TIMEOUT, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  %46 = call i32 @udelay(i32 1)
  %47 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %48 = load i32, i32* @DM_SHARED_CTRL, align 4
  %49 = call i32 @dm_read_reg(%struct.usbnet* %47, i32 %48, i32* %11)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %81

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %62

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @DM_TIMEOUT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @netdev_err(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %81

77:                                               ; preds = %62
  %78 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %79 = load i32, i32* @DM_SHARED_CTRL, align 4
  %80 = call i32 @dm_write_reg(%struct.usbnet* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %77, %66, %52, %20
  %82 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %83 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_write(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @dm_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dm_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
