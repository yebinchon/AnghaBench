; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_read_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_MMAC = common dso_local global i32 0, align 4
@REG_IMAC = common dso_local global i32 0, align 4
@REG_LMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MAC %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*, i32*)* @pluto_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_read_mac(%struct.pluto* %0, i32* %1) #0 {
  %3 = alloca %struct.pluto*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.pluto*, %struct.pluto** %3, align 8
  %7 = load i32, i32* @REG_MMAC, align 4
  %8 = call i32 @pluto_readreg(%struct.pluto* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 255
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pluto*, %struct.pluto** %3, align 8
  %20 = load i32, i32* @REG_IMAC, align 4
  %21 = call i32 @pluto_readreg(%struct.pluto* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 0
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pluto*, %struct.pluto** %3, align 8
  %33 = load i32, i32* @REG_LMAC, align 4
  %34 = call i32 @pluto_readreg(%struct.pluto* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 0
  %42 = and i32 %41, 255
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pluto*, %struct.pluto** %3, align 8
  %46 = getelementptr inbounds %struct.pluto, %struct.pluto* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %49)
  ret void
}

declare dso_local i32 @pluto_readreg(%struct.pluto*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
