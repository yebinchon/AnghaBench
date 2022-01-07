; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_identify_subunit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_identify_subunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }
%struct.avc_response_frame = type { i64, i32* }

@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_READ_DESCRIPTOR = common dso_local global i32 0, align 4
@DESCRIPTOR_SUBUNIT_IDENTIFIER = common dso_local global i32 0, align 4
@AVC_RESPONSE_STABLE = common dso_local global i64 0, align 8
@AVC_RESPONSE_ACCEPTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"cannot read subunit identifier\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_identify_subunit(%struct.firedtv* %0) #0 {
  %2 = alloca %struct.firedtv*, align 8
  %3 = alloca %struct.avc_command_frame*, align 8
  %4 = alloca %struct.avc_response_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %2, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %10, %struct.avc_command_frame** %3, align 8
  %11 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %12 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %15, %struct.avc_response_frame** %4, align 8
  %16 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %17 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %20 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %21 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %23 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %24 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %22, %25
  %27 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %28 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @AVC_OPCODE_READ_DESCRIPTOR, align 4
  %30 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %31 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @DESCRIPTOR_SUBUNIT_IDENTIFIER, align 4
  %33 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %34 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %38 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 255, i32* %40, align 4
  %41 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %42 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 0, i32* %44, align 4
  %45 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %46 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %50 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 8, i32* %52, align 4
  %53 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %54 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 0, i32* %56, align 4
  %57 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %58 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 13, i32* %60, align 4
  %61 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %62 = call i32 @clear_operands(%struct.avc_command_frame* %61, i32 7, i32 8)
  %63 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %64 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %63, i32 0, i32 1
  store i32 12, i32* %64, align 4
  %65 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %66 = call i32 @avc_write(%struct.firedtv* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %1
  br label %104

70:                                               ; preds = %1
  %71 = load %struct.avc_response_frame*, %struct.avc_response_frame** %4, align 8
  %72 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AVC_RESPONSE_STABLE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.avc_response_frame*, %struct.avc_response_frame** %4, align 8
  %78 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AVC_RESPONSE_ACCEPTED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %96, label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.avc_response_frame*, %struct.avc_response_frame** %4, align 8
  %84 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load %struct.avc_response_frame*, %struct.avc_response_frame** %4, align 8
  %90 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %88, %93
  %95 = icmp ne i32 %94, 8
  br i1 %95, label %96, label %103

96:                                               ; preds = %82, %76
  %97 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %98 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %96, %82
  br label %104

104:                                              ; preds = %103, %69
  %105 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %106 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_operands(%struct.avc_command_frame*, i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
