; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_mmap.c_scif_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_mmap.c_scif_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_range = type { i32, i32, i32, %struct.scif_window* }
%struct.scif_window = type { i64, i32, i32, i32, i64 }
%struct.scif_endpt = type { i64, %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scifmsg = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCIFEP_MAGIC = common dso_local global i64 0, align 8
@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@SCIFEP_DISCONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SCIF_MUNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_put_pages(%struct.scif_range* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_range*, align 8
  %4 = alloca %struct.scif_endpt*, align 8
  %5 = alloca %struct.scif_window*, align 8
  %6 = alloca %struct.scifmsg, align 8
  store %struct.scif_range* %0, %struct.scif_range** %3, align 8
  %7 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %8 = icmp ne %struct.scif_range* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %11 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %10, i32 0, i32 3
  %12 = load %struct.scif_window*, %struct.scif_window** %11, align 8
  %13 = icmp ne %struct.scif_window* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %129

17:                                               ; preds = %9
  %18 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %19 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %18, i32 0, i32 3
  %20 = load %struct.scif_window*, %struct.scif_window** %19, align 8
  store %struct.scif_window* %20, %struct.scif_window** %5, align 8
  %21 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %22 = icmp ne %struct.scif_window* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %25 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SCIFEP_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %129

32:                                               ; preds = %23
  %33 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %34 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.scif_endpt*
  store %struct.scif_endpt* %36, %struct.scif_endpt** %4, align 8
  %37 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %38 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %44 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOTCONN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %129

51:                                               ; preds = %42, %32
  %52 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %53 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %57 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %58 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @scif_put_window(%struct.scif_window* %56, i32 %59)
  %61 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %62 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %51
  %66 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %67 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %66, i32 0, i32 2
  %68 = call i32 @list_del(i32* %67)
  %69 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %70 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %74 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %79 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @scif_drain_dma_intr(i32 %77, i32 %81)
  %83 = load i32, i32* @SCIF_MUNMAP, align 4
  %84 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %86 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %90 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %96 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @scif_nodeqp_send(%struct.TYPE_4__* %97, %struct.scifmsg* %6)
  %99 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %100 = call i32 @scif_destroy_remote_window(%struct.scif_window* %99)
  br label %106

101:                                              ; preds = %51
  %102 = load %struct.scif_endpt*, %struct.scif_endpt** %4, align 8
  %103 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %101, %65
  %107 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %108 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %111 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @scif_free(i32 %109, i32 %115)
  %117 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %118 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %121 = getelementptr inbounds %struct.scif_range, %struct.scif_range* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @scif_free(i32 %119, i32 %125)
  %127 = load %struct.scif_range*, %struct.scif_range** %3, align 8
  %128 = call i32 @kfree(%struct.scif_range* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %106, %48, %29, %14
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scif_put_window(%struct.scif_window*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scif_drain_dma_intr(i32, i32) #1

declare dso_local i32 @scif_nodeqp_send(%struct.TYPE_4__*, %struct.scifmsg*) #1

declare dso_local i32 @scif_destroy_remote_window(%struct.scif_window*) #1

declare dso_local i32 @scif_free(i32, i32) #1

declare dso_local i32 @kfree(%struct.scif_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
