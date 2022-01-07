; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { %struct.TYPE_4__, i8*, i32*, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"nGene\00", align 1
@ngene_i2c_algo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngene_i2c_init(%struct.ngene* %0, i32 %1) #0 {
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ngene*, %struct.ngene** %3, align 8
  %7 = getelementptr inbounds %struct.ngene, %struct.ngene* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %5, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = load %struct.ngene*, %struct.ngene** %3, align 8
  %15 = getelementptr inbounds %struct.ngene, %struct.ngene* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %13, %struct.TYPE_6__* %19)
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strscpy(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 2
  store i32* @ngene_i2c_algo, i32** %26, align 8
  %27 = load %struct.ngene*, %struct.ngene** %3, align 8
  %28 = getelementptr inbounds %struct.ngene, %struct.ngene* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = bitcast %struct.TYPE_6__* %32 to i8*
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ngene*, %struct.ngene** %3, align 8
  %37 = getelementptr inbounds %struct.ngene, %struct.ngene* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %44 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %43)
  ret i32 %44
}

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
