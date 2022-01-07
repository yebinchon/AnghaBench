; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_bt8xx_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dvb_bt8xx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_bt8xx_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dvb_bt8xx_card*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.dvb_bt8xx_card*
  store %struct.dvb_bt8xx_card* %5, %struct.dvb_bt8xx_card** %3, align 8
  %6 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %10)
  br label %12

12:                                               ; preds = %24, %1
  %13 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %12
  %25 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 (i32*, i32*, i64)* @dvb_dmx_swfilter_204, i32 (i32*, i32*, i64)* @dvb_dmx_swfilter
  %33 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %33, i32 0, i32 1
  %35 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %44, %49
  %51 = getelementptr inbounds i32, i32* %39, i64 %50
  %52 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 %32(i32* %34, i32* %51, i64 %56)
  %58 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %59 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  %64 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = urem i64 %63, %69
  %71 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %70, i64* %74, align 8
  br label %12

75:                                               ; preds = %12
  ret void
}

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @dvb_dmx_swfilter_204(i32*, i32*, i64) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
