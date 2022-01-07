; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_init_devinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_init_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, %struct.ionic_dev }
%struct.ionic_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i64*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@IONIC_DEVINFO_FWVERS_BUFLEN = common dso_local global i64 0, align 8
@IONIC_DEVINFO_SERIAL_BUFLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"fw_version %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_init_devinfo(%struct.ionic* %0) #0 {
  %2 = alloca %struct.ionic*, align 8
  %3 = alloca %struct.ionic_dev*, align 8
  store %struct.ionic* %0, %struct.ionic** %2, align 8
  %4 = load %struct.ionic*, %struct.ionic** %2, align 8
  %5 = getelementptr inbounds %struct.ionic, %struct.ionic* %4, i32 0, i32 1
  store %struct.ionic_dev* %5, %struct.ionic_dev** %3, align 8
  %6 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = call i8* @ioread8(i32* %9)
  %11 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i8* %10, i8** %13, align 8
  %14 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = call i8* @ioread8(i32* %17)
  %19 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  %22 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %23 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %27 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @IONIC_DEVINFO_FWVERS_BUFLEN, align 8
  %32 = call i32 @memcpy_fromio(i64* %25, i32 %30, i64 %31)
  %33 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %34 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %38 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @IONIC_DEVINFO_SERIAL_BUFLEN, align 8
  %43 = call i32 @memcpy_fromio(i64* %36, i32 %41, i64 %42)
  %44 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %45 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @IONIC_DEVINFO_FWVERS_BUFLEN, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %51 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @IONIC_DEVINFO_SERIAL_BUFLEN, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load %struct.ionic*, %struct.ionic** %2, align 8
  %57 = getelementptr inbounds %struct.ionic, %struct.ionic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %60 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %62)
  ret void
}

declare dso_local i8* @ioread8(i32*) #1

declare dso_local i32 @memcpy_fromio(i64*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
