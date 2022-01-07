; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { i32, %struct.TYPE_4__*, %struct.hl_device* }
%struct.TYPE_4__ = type { i32 }
%struct.hl_device = type { i32, i32 }
%union.hl_cb_args = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Device is %s. Can't execute CB IOCTL\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"in_reset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_cb_ioctl(%struct.hl_fpriv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_fpriv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.hl_cb_args*, align 8
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %union.hl_cb_args*
  store %union.hl_cb_args* %11, %union.hl_cb_args** %6, align 8
  %12 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %13 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %12, i32 0, i32 2
  %14 = load %struct.hl_device*, %struct.hl_device** %13, align 8
  store %struct.hl_device* %14, %struct.hl_device** %7, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %16 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 0
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @dev_warn_ratelimited(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %2
  %32 = load %union.hl_cb_args*, %union.hl_cb_args** %6, align 8
  %33 = bitcast %union.hl_cb_args* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %65 [
    i32 129, label %36
    i32 128, label %56
  ]

36:                                               ; preds = %31
  %37 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %38 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %39 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %38, i32 0, i32 0
  %40 = load %union.hl_cb_args*, %union.hl_cb_args** %6, align 8
  %41 = bitcast %union.hl_cb_args* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %45 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hl_cb_create(%struct.hl_device* %37, i32* %39, i32 %43, i32* %8, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %union.hl_cb_args*, %union.hl_cb_args** %6, align 8
  %51 = call i32 @memset(%union.hl_cb_args* %50, i32 0, i32 12)
  %52 = load i32, i32* %8, align 4
  %53 = load %union.hl_cb_args*, %union.hl_cb_args** %6, align 8
  %54 = bitcast %union.hl_cb_args* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %68

56:                                               ; preds = %31
  %57 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %58 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %59 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %58, i32 0, i32 0
  %60 = load %union.hl_cb_args*, %union.hl_cb_args** %6, align 8
  %61 = bitcast %union.hl_cb_args* %60 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hl_cb_destroy(%struct.hl_device* %57, i32* %59, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %68

65:                                               ; preds = %31
  %66 = load i32, i32* @ENOTTY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %56, %36
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hl_cb_create(%struct.hl_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%union.hl_cb_args*, i32, i32) #1

declare dso_local i32 @hl_cb_destroy(%struct.hl_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
