; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u.c_dtt200u_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u.c_dtt200u_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.dtt200u_state* }
%struct.dtt200u_state = type { i32* }

@GET_RC_CODE = common dso_local global i32 0, align 4
@RC_PROTO_NEC = common dso_local global i32 0, align 4
@RC_PROTO_NECX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"st->data: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @dtt200u_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtt200u_rc_query(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.dtt200u_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 2
  %9 = load %struct.dtt200u_state*, %struct.dtt200u_state** %8, align 8
  store %struct.dtt200u_state* %9, %struct.dtt200u_state** %3, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @GET_RC_CODE, align 4
  %14 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %15 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %19 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %20 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %23 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %18, i32* %21, i32 1, i32* %24, i32 5, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %132

29:                                               ; preds = %1
  %30 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %31 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %101

36:                                               ; preds = %29
  %37 = load i32, i32* @RC_PROTO_NEC, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %39 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %44 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %50 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %48, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %36
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 8
  store i32 %57, i32* %4, align 4
  %58 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %59 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @RC_PROTO_NECX, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %55, %36
  %67 = load i32, i32* %4, align 4
  %68 = shl i32 %67, 8
  store i32 %68, i32* %4, align 4
  %69 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %70 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %77 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %83 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %81, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %66
  %89 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @rc_keydown(i32 %91, i32 %92, i32 %93, i32 0)
  br label %100

95:                                               ; preds = %66
  %96 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %97 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rc_keyup(i32 %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %119

101:                                              ; preds = %29
  %102 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %103 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %110 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @rc_repeat(i32 %111)
  br label %118

113:                                              ; preds = %101
  %114 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %115 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rc_keyup(i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  br label %119

119:                                              ; preds = %118, %100
  %120 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %121 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.dtt200u_state*, %struct.dtt200u_state** %3, align 8
  %128 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @deb_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 5, i32* %129)
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %28
  %133 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %134 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

declare dso_local i32 @rc_repeat(i32) #1

declare dso_local i32 @deb_info(i8*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
