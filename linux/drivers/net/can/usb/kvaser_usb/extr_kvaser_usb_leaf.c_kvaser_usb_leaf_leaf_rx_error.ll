; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_leaf_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_leaf_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.kvaser_cmd = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.kvaser_usb_err_summary = type { %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid cmd id (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_leaf_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_leaf_rx_error(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_err_summary, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %6 = bitcast %struct.kvaser_usb_err_summary* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 20, i1 false)
  %7 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %123 [
    i32 130, label %10
    i32 128, label %47
    i32 129, label %92
  ]

10:                                               ; preds = %2
  %11 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %132

47:                                               ; preds = %2
  %48 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %83 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %132

92:                                               ; preds = %2
  %93 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 4
  store i32 %98, i32* %99, align 4
  %100 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %101 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  br label %132

123:                                              ; preds = %2
  %124 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %125 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %135

132:                                              ; preds = %92, %47, %10
  %133 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %134 = call i32 @kvaser_usb_leaf_rx_error(%struct.kvaser_usb* %133, %struct.kvaser_usb_err_summary* %5)
  br label %135

135:                                              ; preds = %132, %123
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @kvaser_usb_leaf_rx_error(%struct.kvaser_usb*, %struct.kvaser_usb_err_summary*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
