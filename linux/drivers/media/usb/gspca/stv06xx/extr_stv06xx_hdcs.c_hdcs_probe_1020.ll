; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_probe_1020.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_probe_1020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.hdcs*, %struct.TYPE_6__ }
%struct.hdcs = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@HDCS_IDENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"HDCS-1020 sensor detected\0A\00", align 1
@hdcs1020_mode = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HDCS_1020_DEF_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @hdcs_probe_1020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_probe_1020(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.hdcs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = load i32, i32* @HDCS_IDENT, align 4
  %9 = call i32 @stv06xx_read_sensor(%struct.sd* %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 16
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %72

18:                                               ; preds = %12
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @hdcs1020_mode, align 4
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @hdcs1020_mode, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.hdcs* @kmalloc(i32 40, i32 %31)
  store %struct.hdcs* %32, %struct.hdcs** %4, align 8
  %33 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %34 = icmp ne %struct.hdcs* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %72

38:                                               ; preds = %18
  %39 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %40 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 24, i32* %41, align 4
  %42 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %43 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* @HDCS_1020_DEF_WIDTH, align 4
  %46 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %47 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %50 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 304, i32* %51, align 4
  %52 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %53 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i32 4, i32* %54, align 4
  %55 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %56 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %55, i32 0, i32 0
  store i32 6, i32* %56, align 4
  %57 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %58 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 4
  %60 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %61 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 3, i32* %62, align 4
  %63 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %64 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32 155, i32* %65, align 4
  %66 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %67 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store i32 96, i32* %68, align 4
  %69 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  store %struct.hdcs* %69, %struct.hdcs** %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %38, %35, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @stv06xx_read_sensor(%struct.sd*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.hdcs* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
