; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_hl_cs_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_hl_cs_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { i32, %struct.hl_device* }
%struct.hl_device = type { i32 }
%union.hl_wait_cs_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Error %ld on waiting for CS handle %llu\0A\00", align 1
@ERESTARTSYS = common dso_local global i64 0, align 8
@HL_WAIT_CS_STATUS_INTERRUPTED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@HL_WAIT_CS_STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@HL_WAIT_CS_STATUS_ABORTED = common dso_local global i32 0, align 4
@HL_WAIT_CS_STATUS_BUSY = common dso_local global i32 0, align 4
@HL_WAIT_CS_STATUS_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_cs_wait_ioctl(%struct.hl_fpriv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_fpriv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %union.hl_wait_cs_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %11 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %10, i32 0, i32 1
  %12 = load %struct.hl_device*, %struct.hl_device** %11, align 8
  store %struct.hl_device* %12, %struct.hl_device** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %union.hl_wait_cs_args*
  store %union.hl_wait_cs_args* %14, %union.hl_wait_cs_args** %7, align 8
  %15 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %16 = bitcast %union.hl_wait_cs_args* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %20 = load %struct.hl_fpriv*, %struct.hl_fpriv** %4, align 8
  %21 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %24 = bitcast %union.hl_wait_cs_args* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @_hl_cs_wait_ioctl(%struct.hl_device* %19, i32 %22, i32 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %30 = call i32 @memset(%union.hl_wait_cs_args* %29, i32 0, i32 8)
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %2
  %34 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @ERESTARTSYS, align 8
  %42 = sub nsw i64 0, %41
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32, i32* @HL_WAIT_CS_STATUS_INTERRUPTED, align 4
  %46 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %47 = bitcast %union.hl_wait_cs_args* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* @EINTR, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %9, align 8
  br label %73

51:                                               ; preds = %33
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ETIMEDOUT, align 8
  %54 = sub nsw i64 0, %53
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @HL_WAIT_CS_STATUS_TIMEDOUT, align 4
  %58 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %59 = bitcast %union.hl_wait_cs_args* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %72

61:                                               ; preds = %51
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @EIO, align 8
  %64 = sub nsw i64 0, %63
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @HL_WAIT_CS_STATUS_ABORTED, align 4
  %68 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %69 = bitcast %union.hl_wait_cs_args* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %90

76:                                               ; preds = %2
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @HL_WAIT_CS_STATUS_BUSY, align 4
  %81 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %82 = bitcast %union.hl_wait_cs_args* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  br label %89

84:                                               ; preds = %76
  %85 = load i32, i32* @HL_WAIT_CS_STATUS_COMPLETED, align 4
  %86 = load %union.hl_wait_cs_args*, %union.hl_wait_cs_args** %7, align 8
  %87 = bitcast %union.hl_wait_cs_args* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %79
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @_hl_cs_wait_ioctl(%struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @memset(%union.hl_wait_cs_args*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
