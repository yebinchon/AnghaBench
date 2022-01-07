; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.digitv_state* }
%struct.digitv_state = type { i8**, i8** }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8*, i8*, i8**, i32, i8**, i32)* @digitv_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %0, i8* %1, i8* %2, i8** %3, i32 %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.digitv_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = load %struct.digitv_state*, %struct.digitv_state** %20, align 8
  store %struct.digitv_state* %21, %struct.digitv_state** %16, align 8
  %22 = load i8**, i8*** %14, align 8
  %23 = icmp eq i8** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %24, %7
  %28 = phi i1 [ true, %7 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %30, 4
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %15, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %27
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %104

38:                                               ; preds = %32
  %39 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %40 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = call i32 @memset(i8** %41, i32 0, i32 7)
  %43 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %44 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = call i32 @memset(i8** %45, i32 0, i32 7)
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %49 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %47, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %54 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %52, i8** %56, align 8
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* %13, align 4
  br label %63

61:                                               ; preds = %38
  %62 = load i32, i32* %15, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %68 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %75 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  %78 = load i8**, i8*** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @memcpy(i8** %77, i8** %78, i32 %79)
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %82 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %83 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = call i32 @dvb_usb_generic_write(%struct.dvb_usb_device* %81, i8** %84, i32 7)
  store i32 %85, i32* %17, align 4
  br label %102

86:                                               ; preds = %63
  %87 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %88 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %89 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %92 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %87, i8** %90, i32 7, i8** %93, i32 7, i32 10)
  store i32 %94, i32* %17, align 4
  %95 = load i8**, i8*** %14, align 8
  %96 = load %struct.digitv_state*, %struct.digitv_state** %16, align 8
  %97 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @memcpy(i8** %95, i8** %99, i32 %100)
  br label %102

102:                                              ; preds = %86, %73
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %35
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @dvb_usb_generic_write(%struct.dvb_usb_device*, i8**, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i8**, i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
