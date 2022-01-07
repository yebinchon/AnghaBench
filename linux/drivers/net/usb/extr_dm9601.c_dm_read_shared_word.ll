; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm_read_shared_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm_read_shared_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }

@DM_SHARED_ADDR = common dso_local global i32 0, align 4
@DM_SHARED_CTRL = common dso_local global i32 0, align 4
@DM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s read timed out!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@EIO = common dso_local global i32 0, align 4
@DM_SHARED_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"read shared %d 0x%02x returned 0x%04x, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32*)* @dm_read_shared_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_read_shared_word(%struct.usbnet* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %16 = load i32, i32* @DM_SHARED_ADDR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 64
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  %26 = call i32 @dm_write_reg(%struct.usbnet* %15, i32 %16, i32 %25)
  %27 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %28 = load i32, i32* @DM_SHARED_CTRL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 12, i32 4
  %33 = call i32 @dm_write_reg(%struct.usbnet* %27, i32 %28, i32 %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %52, %24
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @DM_TIMEOUT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  %39 = call i32 @udelay(i32 1)
  %40 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %41 = load i32, i32* @DM_SHARED_CTRL, align 4
  %42 = call i32 @dm_read_reg(%struct.usbnet* %40, i32 %41, i32* %11)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %87

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %34

55:                                               ; preds = %50, %34
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @DM_TIMEOUT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %67 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %87

70:                                               ; preds = %55
  %71 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %72 = load i32, i32* @DM_SHARED_CTRL, align 4
  %73 = call i32 @dm_write_reg(%struct.usbnet* %71, i32 %72, i32 0)
  %74 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %75 = load i32, i32* @DM_SHARED_DATA, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @dm_read(%struct.usbnet* %74, i32 %75, i32 2, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @netdev_dbg(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %70, %59, %45
  %88 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %89 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dm_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i8*) #1

declare dso_local i32 @dm_read(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
