; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_ioctl.c__hl_info_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_ioctl.c__hl_info_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { %struct.hl_device* }
%struct.hl_device = type { i32 }
%struct.device = type { i32 }
%struct.hl_info_args = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Device is %s. Can't execute INFO IOCTL\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"in_reset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid request %d\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_fpriv*, i8*, %struct.device*)* @_hl_info_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hl_info_ioctl(%struct.hl_fpriv* %0, i8* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_fpriv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hl_info_args*, align 8
  %9 = alloca %struct.hl_device*, align 8
  %10 = alloca i32, align 4
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.hl_info_args*
  store %struct.hl_info_args* %12, %struct.hl_info_args** %8, align 8
  %13 = load %struct.hl_fpriv*, %struct.hl_fpriv** %5, align 8
  %14 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %13, i32 0, i32 0
  %15 = load %struct.hl_device*, %struct.hl_device** %14, align 8
  store %struct.hl_device* %15, %struct.hl_device** %9, align 8
  %16 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %17 = getelementptr inbounds %struct.hl_info_args, %struct.hl_info_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 134, label %23
  ]

19:                                               ; preds = %3
  %20 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %21 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %22 = call i32 @hw_ip_info(%struct.hl_device* %20, %struct.hl_info_args* %21)
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %25 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %26 = call i32 @device_status_info(%struct.hl_device* %24, %struct.hl_info_args* %25)
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %30 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = call i64 @atomic_read(i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @dev_warn_ratelimited(%struct.device* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %77

43:                                               ; preds = %28
  %44 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %45 = getelementptr inbounds %struct.hl_info_args, %struct.hl_info_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %67 [
    i32 131, label %47
    i32 132, label %51
    i32 129, label %55
    i32 133, label %59
    i32 130, label %63
  ]

47:                                               ; preds = %43
  %48 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %49 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %50 = call i32 @hw_events_info(%struct.hl_device* %48, i32 0, %struct.hl_info_args* %49)
  store i32 %50, i32* %10, align 4
  br label %75

51:                                               ; preds = %43
  %52 = load %struct.hl_fpriv*, %struct.hl_fpriv** %5, align 8
  %53 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %54 = call i32 @dram_usage_info(%struct.hl_fpriv* %52, %struct.hl_info_args* %53)
  store i32 %54, i32* %10, align 4
  br label %75

55:                                               ; preds = %43
  %56 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %57 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %58 = call i32 @hw_idle(%struct.hl_device* %56, %struct.hl_info_args* %57)
  store i32 %58, i32* %10, align 4
  br label %75

59:                                               ; preds = %43
  %60 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %61 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %62 = call i32 @device_utilization(%struct.hl_device* %60, %struct.hl_info_args* %61)
  store i32 %62, i32* %10, align 4
  br label %75

63:                                               ; preds = %43
  %64 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %65 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %66 = call i32 @hw_events_info(%struct.hl_device* %64, i32 1, %struct.hl_info_args* %65)
  store i32 %66, i32* %10, align 4
  br label %75

67:                                               ; preds = %43
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = load %struct.hl_info_args*, %struct.hl_info_args** %8, align 8
  %70 = getelementptr inbounds %struct.hl_info_args, %struct.hl_info_args* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENOTTY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %67, %63, %59, %55, %51, %47
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %32, %23, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @hw_ip_info(%struct.hl_device*, %struct.hl_info_args*) #1

declare dso_local i32 @device_status_info(%struct.hl_device*, %struct.hl_info_args*) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @dev_warn_ratelimited(%struct.device*, i8*, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hw_events_info(%struct.hl_device*, i32, %struct.hl_info_args*) #1

declare dso_local i32 @dram_usage_info(%struct.hl_fpriv*, %struct.hl_info_args*) #1

declare dso_local i32 @hw_idle(%struct.hl_device*, %struct.hl_info_args*) #1

declare dso_local i32 @device_utilization(%struct.hl_device*, %struct.hl_info_args*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
