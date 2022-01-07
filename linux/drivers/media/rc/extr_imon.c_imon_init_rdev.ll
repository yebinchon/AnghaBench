; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_init_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_init_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i32, i32, %struct.imon_context*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.imon_context = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@imon_init_rdev.fp_packet = internal constant [8 x i8] c"@\00\00\00\00\00\00\88", align 1
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"remote control dev allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"iMON Remote (%04x:%04x)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@RC_PROTO_BIT_IMON = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@imon_ir_change_protocol = common dso_local global i32 0, align 4
@MOD_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"panel buttons/knobs setup failed\0A\00", align 1
@RC_MAP_IMON_MCE = common dso_local global i32 0, align 4
@RC_MAP_IMON_PAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"remote input dev register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.imon_context*)* @imon_init_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @imon_init_rdev(%struct.imon_context* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  %6 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %7 = call %struct.rc_dev* @rc_allocate_device(i32 %6)
  store %struct.rc_dev* %7, %struct.rc_dev** %4, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = icmp ne %struct.rc_dev* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %12 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %17 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %20 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %23 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %27 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %30 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_make_path(i32 %28, i32 %31, i32 4)
  %33 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %34 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlcat(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %37 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %43 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %46 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %48 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 6
  %52 = call i32 @usb_to_input_id(i32 %49, i32* %51)
  %53 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %54 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %60 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 4
  store %struct.imon_context* %59, %struct.imon_context** %61, align 8
  %62 = load i32, i32* @RC_PROTO_BIT_IMON, align 4
  %63 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %66 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @imon_ir_change_protocol, align 4
  %68 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @MOD_NAME, align 4
  %71 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %72 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %74 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32 %75, i8** bitcast ([8 x i8]* @imon_init_rdev.fp_packet to i8**), i32 8)
  %77 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %78 = call i32 @send_packet(%struct.imon_context* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %15
  %82 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %83 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_info(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %15
  %87 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %88 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 65500
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %93 = call i32 @imon_get_ffdc_type(%struct.imon_context* %92)
  %94 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %95 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %98 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %91, %86
  %100 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %101 = call i32 @imon_set_display_type(%struct.imon_context* %100)
  %102 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %103 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @RC_MAP_IMON_MCE, align 4
  %109 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %110 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %115

111:                                              ; preds = %99
  %112 = load i32, i32* @RC_MAP_IMON_PAD, align 4
  %113 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %114 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %117 = call i32 @rc_register_device(%struct.rc_dev* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %122 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %127

125:                                              ; preds = %115
  %126 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  store %struct.rc_dev* %126, %struct.rc_dev** %2, align 8
  br label %130

127:                                              ; preds = %120, %10
  %128 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %129 = call i32 @rc_free_device(%struct.rc_dev* %128)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %130

130:                                              ; preds = %127, %125
  %131 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %131
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @send_packet(%struct.imon_context*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @imon_get_ffdc_type(%struct.imon_context*) #1

declare dso_local i32 @imon_set_display_type(%struct.imon_context*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
