; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_ioctl.c_hl_ioctl_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_ioctl.c_hl_ioctl_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ioctl_desc = type { i32 }
%struct.file = type { %struct.hl_fpriv* }
%struct.hl_fpriv = type { %struct.hl_device* }
%struct.hl_device = type { i32 }

@HL_IOCTL_INFO = common dso_local global i32 0, align 4
@hl_ioctls_control = common dso_local global %struct.hl_ioctl_desc* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"invalid ioctl: pid=%d, nr=0x%02x\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hl_ioctl_control(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hl_fpriv*, align 8
  %9 = alloca %struct.hl_device*, align 8
  %10 = alloca %struct.hl_ioctl_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.hl_fpriv*, %struct.hl_fpriv** %13, align 8
  store %struct.hl_fpriv* %14, %struct.hl_fpriv** %8, align 8
  %15 = load %struct.hl_fpriv*, %struct.hl_fpriv** %8, align 8
  %16 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %15, i32 0, i32 0
  %17 = load %struct.hl_device*, %struct.hl_device** %16, align 8
  store %struct.hl_device* %17, %struct.hl_device** %9, align 8
  store %struct.hl_ioctl_desc* null, %struct.hl_ioctl_desc** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @_IOC_NR(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @HL_IOCTL_INFO, align 4
  %22 = call i32 @_IOC_NR(i32 %21)
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.hl_ioctl_desc*, %struct.hl_ioctl_desc** @hl_ioctls_control, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hl_ioctl_desc, %struct.hl_ioctl_desc* %25, i64 %27
  store %struct.hl_ioctl_desc* %28, %struct.hl_ioctl_desc** %10, align 8
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %31 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @task_pid_nr(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i64, i64* @ENOTTY, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %48

39:                                               ; preds = %24
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.hl_ioctl_desc*, %struct.hl_ioctl_desc** %10, align 8
  %44 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @_hl_ioctl(%struct.file* %40, i32 %41, i64 %42, %struct.hl_ioctl_desc* %43, i32 %46)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %39, %29
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i64 @_hl_ioctl(%struct.file*, i32, i64, %struct.hl_ioctl_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
