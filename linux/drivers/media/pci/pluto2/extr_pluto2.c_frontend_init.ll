; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_frontend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@pluto2_fe_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not attach frontend\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lg_tdtpe001p_tuner_set_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pluto*)* @frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_init(%struct.pluto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pluto*, align 8
  %4 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %3, align 8
  %5 = load %struct.pluto*, %struct.pluto** %3, align 8
  %6 = getelementptr inbounds %struct.pluto, %struct.pluto* %5, i32 0, i32 3
  %7 = call %struct.TYPE_10__* @tda10046_attach(i32* @pluto2_fe_config, i32* %6)
  %8 = load %struct.pluto*, %struct.pluto** %3, align 8
  %9 = getelementptr inbounds %struct.pluto, %struct.pluto* %8, i32 0, i32 0
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %9, align 8
  %10 = load %struct.pluto*, %struct.pluto** %3, align 8
  %11 = getelementptr inbounds %struct.pluto, %struct.pluto* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.pluto*, %struct.pluto** %3, align 8
  %16 = getelementptr inbounds %struct.pluto, %struct.pluto* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load i32, i32* @lg_tdtpe001p_tuner_set_params, align 4
  %24 = load %struct.pluto*, %struct.pluto** %3, align 8
  %25 = getelementptr inbounds %struct.pluto, %struct.pluto* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 8
  %30 = load %struct.pluto*, %struct.pluto** %3, align 8
  %31 = getelementptr inbounds %struct.pluto, %struct.pluto* %30, i32 0, i32 1
  %32 = load %struct.pluto*, %struct.pluto** %3, align 8
  %33 = getelementptr inbounds %struct.pluto, %struct.pluto* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i32 @dvb_register_frontend(i32* %31, %struct.TYPE_10__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %22
  %39 = load %struct.pluto*, %struct.pluto** %3, align 8
  %40 = getelementptr inbounds %struct.pluto, %struct.pluto* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_10__*)* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.pluto*, %struct.pluto** %3, align 8
  %48 = getelementptr inbounds %struct.pluto, %struct.pluto* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %51, align 8
  %53 = load %struct.pluto*, %struct.pluto** %3, align 8
  %54 = getelementptr inbounds %struct.pluto, %struct.pluto* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 %52(%struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %46, %38
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_10__* @tda10046_attach(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dvb_register_frontend(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
