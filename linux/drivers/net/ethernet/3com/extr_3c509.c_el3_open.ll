; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }

@TxReset = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RxReset = common dso_local global i32 0, align 4
@SetStatusEnb = common dso_local global i32 0, align 4
@el3_interrupt = common dso_local global i32 0, align 4
@el3_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Opening, IRQ %d\09 status@%x %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: Opened 3c509  IRQ %d  status %4.4x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @TxReset, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @EL3_CMD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outw(i32 %9, i64 %13)
  %15 = load i32, i32* @RxReset, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @EL3_CMD, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outw(i32 %15, i64 %19)
  %21 = load i32, i32* @SetStatusEnb, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @EL3_CMD, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 %21, i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @el3_interrupt, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @request_irq(i32 %29, i32 %30, i32 0, i32 %33, %struct.net_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %81

40:                                               ; preds = %1
  %41 = call i32 @EL3WINDOW(i32 0)
  %42 = load i32, i32* @el3_debug, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @EL3_STATUS, align 8
  %54 = add nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @EL3_STATUS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @inw(i64 %59)
  %61 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %44, %40
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @el3_up(%struct.net_device* %63)
  %65 = load i32, i32* @el3_debug, align 4
  %66 = icmp sgt i32 %65, 3
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @EL3_STATUS, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @inw(i64 %77)
  %79 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, i32 %78)
  br label %80

80:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %38
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @el3_up(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
