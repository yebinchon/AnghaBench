; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"configure()\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"failed key req\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to replay packet 176 w/ rc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to replay packet 178 w/ rc %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to replay packet 180 w/ rc %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to replay final packet w/ rc %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Configure complete\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = load i32, i32* @D_STREAM, align 4
  %11 = call i32 @gspca_dbg(%struct.gspca_dev* %9, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_rcvctrlpipe(i32 %17, i32 0)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @usb_control_msg(i32 %14, i32 %18, i32 22, i32 192, i32 0, i32 0, i8* %19, i32 2, i32 500)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @val_reply(%struct.gspca_dev* %21, i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %112

31:                                               ; preds = %1
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_sndctrlpipe(i32 %37, i32 0)
  %39 = call i32 @usb_control_msg(i32 %34, i32 %38, i32 1, i32 64, i32 1, i32 15, i8* null, i32 0, i32 500)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %112

47:                                               ; preds = %31
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_sndctrlpipe(i32 %53, i32 0)
  %55 = call i32 @usb_control_msg(i32 %50, i32 %54, i32 1, i32 64, i32 0, i32 15, i8* null, i32 0, i32 500)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %112

63:                                               ; preds = %47
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_sndctrlpipe(i32 %69, i32 0)
  %71 = call i32 @usb_control_msg(i32 %66, i32 %70, i32 1, i32 64, i32 1, i32 15, i8* null, i32 0, i32 500)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %112

79:                                               ; preds = %63
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 1
  store i32 0, i32* %81, align 8
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %83 = call i32 @configure_encrypted(%struct.gspca_dev* %82)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %90 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %2, align 4
  br label %112

92:                                               ; preds = %79
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @usb_sndctrlpipe(i32 %98, i32 0)
  %100 = call i32 @usb_control_msg(i32 %95, i32 %99, i32 1, i32 64, i32 3, i32 15, i8* null, i32 0, i32 500)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %112

108:                                              ; preds = %92
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %110 = load i32, i32* @D_STREAM, align 4
  %111 = call i32 @gspca_dbg(%struct.gspca_dev* %109, i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %103, %88, %74, %58, %42, %26
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i64 @val_reply(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, ...) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @configure_encrypted(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
