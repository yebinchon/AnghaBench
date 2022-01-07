; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_update_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_update_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"card removed\00", align 1
@R852_CARD_STA = common dso_local global i32 0, align 4
@R852_CARD_STA_RO = common dso_local global i32 0, align 4
@R852_DMA_CAP = common dso_local global i32 0, align 4
@R852_DMA1 = common dso_local global i32 0, align 4
@R852_DMA2 = common dso_local global i32 0, align 4
@R852_SMBIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"detected %s %s card in slot\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SmartMedia\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"xD\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"writeable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_update_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_update_media_status(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %6 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %7 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %6, i32 0, i32 2
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %11 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %17 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %16, i32 0, i32 2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %22 = load i32, i32* @R852_CARD_STA, align 4
  %23 = call i32 @r852_read_reg(%struct.r852_device* %21, i32 %22)
  %24 = load i32, i32* @R852_CARD_STA_RO, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %27 = load i32, i32* @R852_DMA_CAP, align 4
  %28 = call i32 @r852_read_reg(%struct.r852_device* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @R852_DMA1, align 4
  %31 = load i32, i32* @R852_DMA2, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @R852_SMBIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %20
  %41 = phi i1 [ false, %20 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %44 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %46 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %55 = call i32 (i8*, ...) @message(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %58 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %60 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %59, i32 0, i32 2
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @message(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r852_read_reg(%struct.r852_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
