; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, i32, %struct.ionic_dev }
%struct.ionic_dev = type { i64, i32*, i32 }

@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to reset port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_port_reset(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca %struct.ionic_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %6 = load %struct.ionic*, %struct.ionic** %3, align 8
  %7 = getelementptr inbounds %struct.ionic, %struct.ionic* %6, i32 0, i32 2
  store %struct.ionic_dev* %7, %struct.ionic_dev** %4, align 8
  %8 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %9 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.ionic*, %struct.ionic** %3, align 8
  %15 = getelementptr inbounds %struct.ionic, %struct.ionic* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %18 = call i32 @ionic_dev_cmd_port_reset(%struct.ionic_dev* %17)
  %19 = load %struct.ionic*, %struct.ionic** %3, align 8
  %20 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %21 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ionic*, %struct.ionic** %3, align 8
  %23 = getelementptr inbounds %struct.ionic, %struct.ionic* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.ionic*, %struct.ionic** %3, align 8
  %26 = getelementptr inbounds %struct.ionic, %struct.ionic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %29 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %32 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %35 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dma_free_coherent(i32 %27, i32 %30, i32* %33, i64 %36)
  %38 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %39 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %41 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %13
  %45 = load %struct.ionic*, %struct.ionic** %3, align 8
  %46 = getelementptr inbounds %struct.ionic, %struct.ionic* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %13
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ionic_dev_cmd_port_reset(%struct.ionic_dev*) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
