; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bt878.c_bt878_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bt878.c_bt878_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt878 = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"bt878 debug: bt878_start (ctl=%8.8x)\0A\00", align 1
@BT878_ARISC_START = common dso_local global i32 0, align 4
@BT878_ASCERR = common dso_local global i32 0, align 4
@BT878_AOCERR = common dso_local global i32 0, align 4
@BT878_APABORT = common dso_local global i32 0, align 4
@BT878_ARIPERR = common dso_local global i32 0, align 4
@BT878_APPERR = common dso_local global i32 0, align 4
@BT878_AFDSR = common dso_local global i32 0, align 4
@BT878_AFTRGT = common dso_local global i32 0, align 4
@BT878_AFBUS = common dso_local global i32 0, align 4
@BT878_ARISCI = common dso_local global i32 0, align 4
@BT878_AINT_MASK = common dso_local global i32 0, align 4
@BT878_AGPIO_DMA_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt878_start(%struct.bt878* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bt878*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bt878* %0, %struct.bt878** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.bt878*, %struct.bt878** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @bt878_risc_program(%struct.bt878* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, -32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 27
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bt878*, %struct.bt878** %5, align 8
  %20 = getelementptr inbounds %struct.bt878, %struct.bt878* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BT878_ARISC_START, align 4
  %23 = call i32 @btwrite(i32 %21, i32 %22)
  %24 = load i32, i32* @BT878_ASCERR, align 4
  %25 = load i32, i32* @BT878_AOCERR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BT878_APABORT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BT878_ARIPERR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BT878_APPERR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BT878_AFDSR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BT878_AFTRGT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BT878_AFBUS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BT878_ARISCI, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BT878_AINT_MASK, align 4
  %47 = call i32 @btwrite(i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @BT878_AGPIO_DMA_CTL, align 4
  %50 = call i32 @btwrite(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @bt878_risc_program(%struct.bt878*, i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
