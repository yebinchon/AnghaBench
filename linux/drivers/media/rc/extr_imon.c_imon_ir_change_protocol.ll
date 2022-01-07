; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.imon_context* }
%struct.imon_context = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@__const.imon_ir_change_protocol.ir_proto_packet = private unnamed_addr constant [8 x i8] c"\00\00\00\00\00\00\00\86", align 1
@.str = private unnamed_addr constant [77 x i8] c"Looks like you're trying to use an IR protocol this device does not support\0A\00", align 1
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Configuring IR receiver for MCE protocol\0A\00", align 1
@RC_PROTO_BIT_IMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Configuring IR receiver for iMON protocol\0A\00", align 1
@pad_stabilize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"PAD stabilize functionality disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Unsupported IR protocol specified, overriding to iMON IR protocol\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*)* @imon_ir_change_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_ir_change_protocol(%struct.rc_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imon_context*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 1
  %12 = load %struct.imon_context*, %struct.imon_context** %11, align 8
  store %struct.imon_context* %12, %struct.imon_context** %6, align 8
  %13 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %14 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %13, i32 0, i32 4
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = bitcast [8 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.imon_ir_change_protocol.ir_proto_packet, i32 0, i32 0), i64 8, i1 false)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %20, %2
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  store i8 1, i8* %40, align 1
  %41 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %72

43:                                               ; preds = %31
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RC_PROTO_BIT_IMON, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @pad_stabilize, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* @RC_PROTO_BIT_IMON, align 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  br label %71

60:                                               ; preds = %43
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @pad_stabilize, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* @RC_PROTO_BIT_IMON, align 4
  %70 = load i32*, i32** %4, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  br label %72

72:                                               ; preds = %71, %37
  %73 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %74 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = bitcast [8 x i8]* %9 to i8**
  %77 = call i32 @memcpy(i32 %75, i8** %76, i32 8)
  %78 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %79 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %78, i32 0, i32 2
  %80 = call i32 @mutex_is_locked(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  %83 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %84 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %83, i32 0, i32 2
  %85 = call i32 @mutex_lock(i32* %84)
  br label %86

86:                                               ; preds = %82, %72
  %87 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %88 = call i32 @send_packet(%struct.imon_context* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %99

92:                                               ; preds = %86
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %96 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %98 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %91
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %104 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @memcpy(i32, i8**, i32) #2

declare dso_local i32 @mutex_is_locked(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @send_packet(%struct.imon_context*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
