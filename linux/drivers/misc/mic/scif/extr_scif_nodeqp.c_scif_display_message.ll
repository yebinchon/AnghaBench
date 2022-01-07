; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_display_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_display_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.scif_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.scifmsg = type { i64, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@scif_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SCIF_MAX_MSG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: unknown msg type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"%s: msg type %s, src %d:%d, dest %d:%d payload 0x%llx:0x%llx:0x%llx:0x%llx\0A\00", align 1
@message_types = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scif_dev*, %struct.scifmsg*, i8*)* @scif_display_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_display_message(%struct.scif_dev* %0, %struct.scifmsg* %1, i8* %2) #0 {
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca %struct.scifmsg*, align 8
  %6 = alloca i8*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %4, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scif_info, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %75

10:                                               ; preds = %3
  %11 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %12 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SCIF_MAX_MSG, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %18 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %23 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %21, i64 %24)
  br label %75

26:                                               ; preds = %10
  %27 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %28 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** @message_types, align 8
  %33 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %34 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %39 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %43 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %47 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %51 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %55 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %60 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %65 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scifmsg*, %struct.scifmsg** %5, align 8
  %70 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %58, i32 %63, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %26, %16, %9
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i8*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
