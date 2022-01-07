; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { %struct.TYPE_8__, %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Graph parsing failed\0A\00", align 1
@isi_graph_notify_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Notifier registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_isi*)* @isi_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_graph_init(%struct.atmel_isi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_isi*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_isi* %0, %struct.atmel_isi** %3, align 8
  %5 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %6 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @isi_graph_parse(%struct.atmel_isi* %5, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i32 @dev_err(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %21, i32 0, i32 0
  %23 = call i32 @v4l2_async_notifier_init(%struct.TYPE_8__* %22)
  %24 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %24, i32 0, i32 0
  %26 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = call i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_8__* %25, i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @of_node_put(i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %20
  %40 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32* @isi_graph_notify_ops, i32** %42, align 8
  %43 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %44 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %43, i32 0, i32 2
  %45 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %45, i32 0, i32 0
  %47 = call i32 @v4l2_async_notifier_register(i32* %44, %struct.TYPE_8__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @dev_err(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %56 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %55, i32 0, i32 0
  %57 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_8__* %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50, %32, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @isi_graph_parse(%struct.atmel_isi*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
