; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_rc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_rc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, %struct.au0828_rc*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.au0828_rc = type { i32, i32, i32, i64, i32, %struct.rc_dev*, %struct.au0828_dev* }
%struct.rc_dev = type { i8*, i32, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.au0828_rc* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@disable_ir = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@au0828_rc_start = common dso_local global i32 0, align 4
@au0828_rc_stop = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i32 0, align 4
@au0828_get_key_au8522 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"au0828 IR (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@BUS_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"au0828-input\00", align 1
@RC_PROTO_BIT_NEC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NECX = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC32 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Remote controller %s initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au0828_rc_register(%struct.au0828_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca %struct.au0828_rc*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %10 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %11 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @disable_ir, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %175

19:                                               ; preds = %15
  %20 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %21 = call i64 @au0828_probe_i2c_ir(%struct.au0828_dev* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %175

27:                                               ; preds = %19
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.au0828_rc* @kzalloc(i32 48, i32 %28)
  store %struct.au0828_rc* %29, %struct.au0828_rc** %4, align 8
  %30 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %31 = call %struct.rc_dev* @rc_allocate_device(i32 %30)
  store %struct.rc_dev* %31, %struct.rc_dev** %5, align 8
  %32 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %33 = icmp ne %struct.au0828_rc* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %36 = icmp ne %struct.rc_dev* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %27
  br label %167

38:                                               ; preds = %34
  %39 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %40 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %41 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %40, i32 0, i32 6
  store %struct.au0828_dev* %39, %struct.au0828_dev** %41, align 8
  %42 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %43 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %44 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %43, i32 0, i32 1
  store %struct.au0828_rc* %42, %struct.au0828_rc** %44, align 8
  %45 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %46 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %47 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %46, i32 0, i32 5
  store %struct.rc_dev* %45, %struct.rc_dev** %47, align 8
  %48 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %49 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 9
  store %struct.au0828_rc* %48, %struct.au0828_rc** %50, align 8
  %51 = load i32, i32* @au0828_rc_start, align 4
  %52 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %53 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @au0828_rc_stop, align 4
  %55 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %56 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %58 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %38
  %63 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %64 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %73 [
    i32 128, label %66
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @RC_MAP_HAUPPAUGE, align 4
  %68 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @au0828_get_key_au8522, align 4
  %71 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %72 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  br label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %167

76:                                               ; preds = %66
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %79 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %38
  %81 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %82 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %81, i32 0, i32 0
  store i32 100, i32* %82, align 8
  %83 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %84 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %87 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @snprintf(i32 %85, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %89)
  %91 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %92 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %95 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @usb_make_path(%struct.TYPE_10__* %93, i32 %96, i32 4)
  %98 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %99 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strlcat(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %102 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %103 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %106 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %108 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %111 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @BUS_USB, align 4
  %113 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %114 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 8
  %116 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %117 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %120 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le16_to_cpu(i32 %124)
  %126 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %127 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %130 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le16_to_cpu(i32 %134)
  %136 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %137 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %140 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %144 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32* %142, i32** %145, align 8
  %146 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %147 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %147, align 8
  %148 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %149 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @RC_PROTO_BIT_NEC32, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %156 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %158 = call i32 @rc_register_device(%struct.rc_dev* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %80
  br label %167

162:                                              ; preds = %80
  %163 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %164 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  store i32 0, i32* %2, align 4
  br label %175

167:                                              ; preds = %161, %73, %37
  %168 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %169 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %168, i32 0, i32 1
  store %struct.au0828_rc* null, %struct.au0828_rc** %169, align 8
  %170 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %171 = call i32 @rc_free_device(%struct.rc_dev* %170)
  %172 = load %struct.au0828_rc*, %struct.au0828_rc** %4, align 8
  %173 = call i32 @kfree(%struct.au0828_rc* %172)
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %167, %162, %24, %18
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i64 @au0828_probe_i2c_ir(%struct.au0828_dev*) #1

declare dso_local %struct.au0828_rc* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.au0828_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
