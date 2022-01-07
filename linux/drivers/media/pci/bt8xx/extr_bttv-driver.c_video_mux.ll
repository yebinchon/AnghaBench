; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_video_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_video_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (%struct.bttv*, i32)* }
%struct.bttv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BT848_CONTROL_COMP = common dso_local global i32 0, align 4
@BT848_E_CONTROL = common dso_local global i32 0, align 4
@BT848_O_CONTROL = common dso_local global i32 0, align 4
@BT848_IFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d: video mux: input=%d mux=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, i32)* @video_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mux(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %10 = load %struct.bttv*, %struct.bttv** %4, align 8
  %11 = getelementptr inbounds %struct.bttv, %struct.bttv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %8, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %23 = load %struct.bttv*, %struct.bttv** %4, align 8
  %24 = getelementptr inbounds %struct.bttv, %struct.bttv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @gpio_inout(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.bttv*, %struct.bttv** %4, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @BT848_CONTROL_COMP, align 4
  %44 = load i32, i32* @BT848_E_CONTROL, align 4
  %45 = call i32 @btor(i32 %43, i32 %44)
  %46 = load i32, i32* @BT848_CONTROL_COMP, align 4
  %47 = load i32, i32* @BT848_O_CONTROL, align 4
  %48 = call i32 @btor(i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %36
  %50 = load i32, i32* @BT848_CONTROL_COMP, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @BT848_E_CONTROL, align 4
  %53 = call i32 @btand(i32 %51, i32 %52)
  %54 = load i32, i32* @BT848_CONTROL_COMP, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @BT848_O_CONTROL, align 4
  %57 = call i32 @btand(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %42
  %59 = load %struct.bttv*, %struct.bttv** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @bttv_muxsel(%struct.bttv* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 5
  %64 = load i32, i32* @BT848_IFORM, align 4
  %65 = call i32 @btaor(i32 %63, i32 -97, i32 %64)
  %66 = load %struct.bttv*, %struct.bttv** %4, align 8
  %67 = getelementptr inbounds %struct.bttv, %struct.bttv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %74 = load %struct.bttv*, %struct.bttv** %4, align 8
  %75 = getelementptr inbounds %struct.bttv, %struct.bttv* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32 (%struct.bttv*, i32)*, i32 (%struct.bttv*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.bttv*, i32)* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %58
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %84 = load %struct.bttv*, %struct.bttv** %4, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32 (%struct.bttv*, i32)*, i32 (%struct.bttv*, i32)** %89, align 8
  %91 = load %struct.bttv*, %struct.bttv** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 %90(%struct.bttv* %91, i32 %92)
  br label %94

94:                                               ; preds = %82, %58
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @btor(i32, i32) #1

declare dso_local i32 @btand(i32, i32) #1

declare dso_local i32 @bttv_muxsel(%struct.bttv*, i32) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
