; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_frontend_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_frontend_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { i32**, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_frontend_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_frontend_exit(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca %struct.pvr2_dvb_adapter*, align 8
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %2, align 8
  %3 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %3, i32 0, i32 2
  %5 = load i32**, i32*** %4, align 8
  %6 = getelementptr inbounds i32*, i32** %5, i64 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %10, i32 0, i32 2
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dvb_unregister_frontend(i32* %14)
  %16 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %16, i32 0, i32 2
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @dvb_frontend_detach(i32* %20)
  %22 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %9, %1
  %27 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dvb_unregister_frontend(i32* %38)
  %40 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dvb_frontend_detach(i32* %44)
  %46 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %33, %26
  %51 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dvb_module_release(i32* %53)
  %55 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dvb_module_release(i32* %61)
  %63 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dvb_module_release(i32* %71)
  %73 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  store i32* null, i32** %76, align 8
  ret i32 0
}

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_module_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
