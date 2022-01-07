; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_xc2028_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_xc2028_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"setting GPIO to radio!\0A\00", align 1
@MO_GP0_IO = common dso_local global i32 0, align 4
@MO_GP2_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"setting GPIO to TV!\0A\00", align 1
@MO_GP1_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32)* @cx88_xc2028_tuner_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx88_xc2028_tuner_callback(%struct.cx88_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %10 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %32 [
    i32 135, label %12
    i32 137, label %12
    i32 136, label %12
    i32 134, label %17
    i32 133, label %17
    i32 138, label %22
    i32 139, label %22
    i32 131, label %27
    i32 132, label %27
  ]

12:                                               ; preds = %3, %3, %3
  %13 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cx88_xc3028_geniatech_tuner_callback(%struct.cx88_core* %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3, %3
  %18 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cx88_pv_8000gt_callback(%struct.cx88_core* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %3, %3
  %23 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cx88_dvico_xc2028_callback(%struct.cx88_core* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %3, %3
  %28 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cx88_xc3028_winfast1800h_callback(%struct.cx88_core* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %66

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %63 [
    i32 128, label %34
  ]

34:                                               ; preds = %32
  %35 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @INPUT(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %51 [
    i32 130, label %42
    i32 129, label %50
  ]

42:                                               ; preds = %34
  %43 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @MO_GP0_IO, align 4
  %45 = call i32 @cx_write(i32 %44, i32 1279)
  %46 = call i32 @mdelay(i32 250)
  %47 = load i32, i32* @MO_GP2_IO, align 4
  %48 = call i32 @cx_write(i32 %47, i32 255)
  %49 = call i32 @mdelay(i32 250)
  br label %53

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %34, %50
  %52 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* @MO_GP1_IO, align 4
  %55 = call i32 @cx_write(i32 %54, i32 1052688)
  %56 = call i32 @mdelay(i32 250)
  %57 = load i32, i32* @MO_GP1_IO, align 4
  %58 = call i32 @cx_write(i32 %57, i32 1052672)
  %59 = call i32 @mdelay(i32 250)
  %60 = load i32, i32* @MO_GP1_IO, align 4
  %61 = call i32 @cx_write(i32 %60, i32 1052688)
  %62 = call i32 @mdelay(i32 250)
  store i32 0, i32* %4, align 4
  br label %66

63:                                               ; preds = %32
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %53, %27, %22, %17, %12
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @cx88_xc3028_geniatech_tuner_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx88_pv_8000gt_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx88_dvico_xc2028_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx88_xc3028_winfast1800h_callback(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @INPUT(i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
