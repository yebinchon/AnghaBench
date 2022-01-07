; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_cleanup_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_cleanup_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_board = type { %struct.pt3_adapter** }
%struct.pt3_adapter = type { i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { %struct.dmx_demux }
%struct.dmx_demux = type { i32 (%struct.dmx_demux*)* }
%struct.TYPE_3__ = type { i64, i32* }

@one_adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt3_board*, i32)* @pt3_cleanup_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt3_cleanup_adapter(%struct.pt3_board* %0, i32 %1) #0 {
  %3 = alloca %struct.pt3_board*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt3_adapter*, align 8
  %6 = alloca %struct.dmx_demux*, align 8
  store %struct.pt3_board* %0, %struct.pt3_board** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %8 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %7, i32 0, i32 0
  %9 = load %struct.pt3_adapter**, %struct.pt3_adapter*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.pt3_adapter*, %struct.pt3_adapter** %9, i64 %11
  %13 = load %struct.pt3_adapter*, %struct.pt3_adapter** %12, align 8
  store %struct.pt3_adapter* %13, %struct.pt3_adapter** %5, align 8
  %14 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %15 = icmp eq %struct.pt3_adapter* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %24 = call i32 @pt3_stop_streaming(%struct.pt3_adapter* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.dmx_demux* %28, %struct.dmx_demux** %6, align 8
  %29 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %30 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %29, i32 0, i32 0
  %31 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %30, align 8
  %32 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %33 = call i32 %31(%struct.dmx_demux* %32)
  %34 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %25
  %39 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %50, i32 0, i32 5
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @dvb_unregister_frontend(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dvb_module_release(i32 %57)
  %59 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dvb_module_release(i32 %61)
  br label %63

63:                                               ; preds = %54, %25
  %64 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %65 = call i32 @pt3_free_dmabuf(%struct.pt3_adapter* %64)
  %66 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %66, i32 0, i32 2
  %68 = call i32 @dvb_dmxdev_release(i32* %67)
  %69 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %69, i32 0, i32 1
  %71 = call i32 @dvb_dmx_release(%struct.TYPE_4__* %70)
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* @one_adapter, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74, %63
  %78 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %79 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %78, i32 0, i32 0
  %80 = call i32 @dvb_unregister_adapter(i32* %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.pt3_adapter*, %struct.pt3_adapter** %5, align 8
  %83 = call i32 @kfree(%struct.pt3_adapter* %82)
  %84 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %85 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %84, i32 0, i32 0
  %86 = load %struct.pt3_adapter**, %struct.pt3_adapter*** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.pt3_adapter*, %struct.pt3_adapter** %86, i64 %88
  store %struct.pt3_adapter* null, %struct.pt3_adapter** %89, align 8
  br label %90

90:                                               ; preds = %81, %16
  ret void
}

declare dso_local i32 @pt3_stop_streaming(%struct.pt3_adapter*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_3__*) #1

declare dso_local i32 @dvb_module_release(i32) #1

declare dso_local i32 @pt3_free_dmabuf(%struct.pt3_adapter*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_4__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.pt3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
