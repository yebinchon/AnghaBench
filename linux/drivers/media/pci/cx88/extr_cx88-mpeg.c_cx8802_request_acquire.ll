; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_request_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_request_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_driver = type { i64, {}*, %struct.cx88_core* }
%struct.cx88_core = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CX88_BOARD_NONE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CX88_MPEG_DVB = common dso_local global i64 0, align 8
@CX88_VMUX_DVB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Post acquire GPIO=%x\0A\00", align 1
@MO_GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_driver*)* @cx8802_request_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_request_acquire(%struct.cx8802_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_driver*, align 8
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i32, align 4
  store %struct.cx8802_driver* %0, %struct.cx8802_driver** %3, align 8
  %6 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %7 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %6, i32 0, i32 2
  %8 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  store %struct.cx88_core* %8, %struct.cx88_core** %4, align 8
  %9 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %10 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CX88_BOARD_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %19 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %14, %1
  %26 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %27 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CX88_MPEG_DVB, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %25
  %32 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %33 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %38 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %60, %31
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %45 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CX88_VMUX_DVB, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %58 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %39

63:                                               ; preds = %55, %39
  br label %64

64:                                               ; preds = %63, %25
  %65 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %66 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %65, i32 0, i32 1
  %67 = bitcast {}** %66 to i32 (%struct.cx8802_driver*)**
  %68 = load i32 (%struct.cx8802_driver*)*, i32 (%struct.cx8802_driver*)** %67, align 8
  %69 = icmp ne i32 (%struct.cx8802_driver*)* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %64
  %71 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %72 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %76 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CX88_BOARD_NONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %82 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %85 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %87 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %86, i32 0, i32 1
  %88 = bitcast {}** %87 to i32 (%struct.cx8802_driver*)**
  %89 = load i32 (%struct.cx8802_driver*)*, i32 (%struct.cx8802_driver*)** %88, align 8
  %90 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %91 = call i32 %89(%struct.cx8802_driver* %90)
  br label %92

92:                                               ; preds = %80, %70
  %93 = load i32, i32* @MO_GP0_IO, align 4
  %94 = call i32 @cx_read(i32 %93)
  %95 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %64
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %22
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
