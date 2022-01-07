; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zd1301_demod_dev* }
%struct.zd1301_demod_dev = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @zd1301_demod_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_demod_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.zd1301_demod_dev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %8, align 8
  store %struct.zd1301_demod_dev* %9, %struct.zd1301_demod_dev** %4, align 8
  %10 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %11 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %10, i32 0, i32 0
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %17 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %16, i32 27203, i32 112)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %23 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %22, i32 26702, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %52

27:                                               ; preds = %21
  %28 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %29 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %28, i32 26697, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %35 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %34, i32 26850, i32 215)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %41 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %40, i32 26848, i32 57)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %52

45:                                               ; preds = %39
  %46 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %47 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %46, i32 26688, i32 33)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %50, %44, %38, %32, %26, %20
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %51
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
