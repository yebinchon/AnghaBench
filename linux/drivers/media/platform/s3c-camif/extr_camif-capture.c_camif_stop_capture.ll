; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_stop_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_stop_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32 }

@ST_VP_OFF = common dso_local global i32 0, align 4
@ST_VP_LASTIRQ = common dso_local global i32 0, align 4
@ST_VP_ABORTING = common dso_local global i32 0, align 4
@CAMIF_STOP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_vp*)* @camif_stop_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_stop_capture(%struct.camif_vp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camif_vp*, align 8
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %3, align 8
  %7 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %8 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %7, i32 0, i32 2
  %9 = load %struct.camif_dev*, %struct.camif_dev** %8, align 8
  store %struct.camif_dev* %9, %struct.camif_dev** %4, align 8
  %10 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %11 = call i32 @s3c_vp_active(%struct.camif_vp* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

14:                                               ; preds = %1
  %15 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %16 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @ST_VP_OFF, align 4
  %20 = load i32, i32* @ST_VP_LASTIRQ, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %24 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @ST_VP_ABORTING, align 4
  %28 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %29 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %33 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %37 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %40 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ST_VP_ABORTING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @CAMIF_STOP_TIMEOUT, align 4
  %48 = call i32 @msecs_to_jiffies(i32 %47)
  %49 = call i32 @wait_event_timeout(i32 %38, i32 %46, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %51 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %14
  %57 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %58 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ST_VP_OFF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @ST_VP_OFF, align 4
  %65 = load i32, i32* @ST_VP_ABORTING, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ST_VP_LASTIRQ, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %71 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %75 = call i32 @camif_hw_disable_capture(%struct.camif_vp* %74)
  %76 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %77 = call i32 @camif_hw_enable_scaler(%struct.camif_vp* %76, i32 0)
  br label %78

78:                                               ; preds = %63, %56, %14
  %79 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %80 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.camif_vp*, %struct.camif_vp** %3, align 8
  %84 = call i32 @camif_reinitialize(%struct.camif_vp* %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @s3c_vp_active(%struct.camif_vp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @camif_hw_disable_capture(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_enable_scaler(%struct.camif_vp*, i32) #1

declare dso_local i32 @camif_reinitialize(%struct.camif_vp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
