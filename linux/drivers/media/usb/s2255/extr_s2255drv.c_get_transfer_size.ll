; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_get_transfer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_get_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_mode = type { i64, i32, i32 }

@LINE_SZ_DEF = common dso_local global i32 0, align 4
@NUM_LINES_DEF = common dso_local global i32 0, align 4
@FORMAT_NTSC = common dso_local global i64 0, align 8
@NUM_LINES_4CIFS_NTSC = common dso_local global i32 0, align 4
@LINE_SZ_4CIFS_NTSC = common dso_local global i32 0, align 4
@NUM_LINES_2CIFS_NTSC = common dso_local global i32 0, align 4
@LINE_SZ_2CIFS_NTSC = common dso_local global i32 0, align 4
@NUM_LINES_1CIFS_NTSC = common dso_local global i32 0, align 4
@LINE_SZ_1CIFS_NTSC = common dso_local global i32 0, align 4
@FORMAT_PAL = common dso_local global i64 0, align 8
@NUM_LINES_4CIFS_PAL = common dso_local global i32 0, align 4
@LINE_SZ_4CIFS_PAL = common dso_local global i32 0, align 4
@NUM_LINES_2CIFS_PAL = common dso_local global i32 0, align 4
@LINE_SZ_2CIFS_PAL = common dso_local global i32 0, align 4
@NUM_LINES_1CIFS_PAL = common dso_local global i32 0, align 4
@LINE_SZ_1CIFS_PAL = common dso_local global i32 0, align 4
@MASK_COLOR = common dso_local global i32 0, align 4
@COLOR_Y8 = common dso_local global i32 0, align 4
@PREFIX_SIZE = common dso_local global i32 0, align 4
@DEF_USB_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2255_mode*)* @get_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_transfer_size(%struct.s2255_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2255_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s2255_mode* %0, %struct.s2255_mode** %3, align 8
  %9 = load i32, i32* @LINE_SZ_DEF, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @NUM_LINES_DEF, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.s2255_mode*, %struct.s2255_mode** %3, align 8
  %12 = icmp eq %struct.s2255_mode* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load %struct.s2255_mode*, %struct.s2255_mode** %3, align 8
  %16 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FORMAT_NTSC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.s2255_mode*, %struct.s2255_mode** %3, align 8
  %22 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %34 [
    i32 129, label %24
    i32 128, label %24
    i32 130, label %28
    i32 131, label %31
  ]

24:                                               ; preds = %20, %20
  %25 = load i32, i32* @NUM_LINES_4CIFS_NTSC, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @LINE_SZ_4CIFS_NTSC, align 4
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load i32, i32* @NUM_LINES_2CIFS_NTSC, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @LINE_SZ_2CIFS_NTSC, align 4
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @NUM_LINES_1CIFS_NTSC, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @LINE_SZ_1CIFS_NTSC, align 4
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %31, %28, %24
  br label %59

36:                                               ; preds = %14
  %37 = load %struct.s2255_mode*, %struct.s2255_mode** %3, align 8
  %38 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FORMAT_PAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.s2255_mode*, %struct.s2255_mode** %3, align 8
  %44 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %56 [
    i32 129, label %46
    i32 128, label %46
    i32 130, label %50
    i32 131, label %53
  ]

46:                                               ; preds = %42, %42
  %47 = load i32, i32* @NUM_LINES_4CIFS_PAL, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @LINE_SZ_4CIFS_PAL, align 4
  store i32 %49, i32* %5, align 4
  br label %57

50:                                               ; preds = %42
  %51 = load i32, i32* @NUM_LINES_2CIFS_PAL, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @LINE_SZ_2CIFS_PAL, align 4
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @NUM_LINES_1CIFS_PAL, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @LINE_SZ_1CIFS_PAL, align 4
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %53, %50, %46
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.s2255_mode*, %struct.s2255_mode** %3, align 8
  %64 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MASK_COLOR, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @COLOR_Y8, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 2
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PREFIX_SIZE, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @DEF_USB_BLOCK, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 4294967295, %78
  %80 = add i64 %79, 1
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @DEF_USB_BLOCK, align 4
  %92 = add i32 %90, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %87, %73
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
