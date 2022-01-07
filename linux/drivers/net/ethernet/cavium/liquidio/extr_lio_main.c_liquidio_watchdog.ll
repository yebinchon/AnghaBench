; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LIO_MAX_CORES = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@CN23XX_SLI_SCRATCH2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"ERROR: Octeon core %d crashed or got stuck!  See oct-fwdump for details.\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @liquidio_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @LIO_MAX_CORES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.octeon_device*
  store %struct.octeon_device* %16, %struct.octeon_device** %7, align 8
  %17 = mul nuw i64 4, %12
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(i32* %14, i32 0, i32 %18)
  br label %20

20:                                               ; preds = %86, %85, %35, %1
  %21 = call i32 (...) @kthread_should_stop()
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %26 = call i32 @set_current_state(i32 %25)
  %27 = call i32 @msecs_to_jiffies(i32 2000)
  %28 = call i32 @schedule_timeout(i32 %27)
  %29 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %30 = load i32, i32* @CN23XX_SLI_SCRATCH2, align 4
  %31 = call i64 @octeon_read_csr64(%struct.octeon_device* %29, i32 %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %20

36:                                               ; preds = %24
  %37 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @WRITE_ONCE(i32 %39, i32 1)
  %41 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %42 = call %struct.octeon_device* @get_other_octeon_device(%struct.octeon_device* %41)
  store %struct.octeon_device* %42, %struct.octeon_device** %8, align 8
  %43 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %44 = icmp ne %struct.octeon_device* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @WRITE_ONCE(i32 %48, i32 1)
  br label %50

50:                                               ; preds = %45, %36
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @LIO_MAX_CORES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %14, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %14, i64 %76
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %62, %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %20

86:                                               ; preds = %82
  %87 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %88 = call i32 @disable_all_vf_links(%struct.octeon_device* %87)
  %89 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %90 = call i32 @disable_all_vf_links(%struct.octeon_device* %89)
  store i32 1, i32* %6, align 4
  br label %20

91:                                               ; preds = %20
  %92 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @kthread_should_stop(...) #2

declare dso_local i32 @set_current_state(i32) #2

declare dso_local i32 @schedule_timeout(i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i64 @octeon_read_csr64(%struct.octeon_device*, i32) #2

declare dso_local i32 @WRITE_ONCE(i32, i32) #2

declare dso_local %struct.octeon_device* @get_other_octeon_device(%struct.octeon_device*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @disable_all_vf_links(%struct.octeon_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
