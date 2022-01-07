; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_setup_qp_connect_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_setup_qp_connect_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.scif_dev = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.scif_qp = type { %struct.TYPE_10__, i32, %struct.TYPE_9__*, i64, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SCIFEP_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"SCIFEP_MAGIC mismatch between self %d remote %d\0A\00", align 1
@scif_dev = common dso_local global %struct.TYPE_12__* null, align 8
@scif_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_setup_qp_connect_response(%struct.scif_dev* %0, %struct.scif_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scif_dev*, align 8
  %6 = alloca %struct.scif_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %5, align 8
  store %struct.scif_qp* %1, %struct.scif_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %14 = call i8* @scif_ioremap(i32 %12, i32 72, %struct.scif_dev* %13)
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  %16 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %17 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %16, i32 0, i32 2
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %19 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %111

25:                                               ; preds = %3
  %26 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %27 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCIFEP_MAGIC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %35 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @scif_dev, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scif_info, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %44 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %111

49:                                               ; preds = %25
  %50 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %51 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  %55 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %56 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %64 = call i8* @scif_ioremap(i32 %61, i32 %62, %struct.scif_dev* %63)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %49
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %113

70:                                               ; preds = %49
  %71 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %72 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %74 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %73, i32 0, i32 4
  %75 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %76 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %75, i32 0, i32 3
  %77 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %78 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @get_count_order(i32 %82)
  %84 = call i32 @scif_rb_init(%struct.TYPE_10__* %74, i64* %76, i32* %80, i8* %81, i32 %83)
  %85 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %86 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %90 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i64 %88, i64* %92, align 8
  %93 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %94 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %93, i32 0, i32 0
  %95 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %96 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %100 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %99, i32 0, i32 1
  %101 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %102 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %106 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @get_count_order(i32 %108)
  %110 = call i32 @scif_rb_init(%struct.TYPE_10__* %94, i64* %98, i32* %100, i8* %104, i32 %109)
  br label %111

111:                                              ; preds = %70, %33, %22
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %67
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i8* @scif_ioremap(i32, i32, %struct.scif_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @scif_rb_init(%struct.TYPE_10__*, i64*, i32*, i8*, i32) #1

declare dso_local i32 @get_count_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
