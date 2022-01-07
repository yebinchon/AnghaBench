; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_wait_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_wait_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDEDM_FSM_READWAIT = common dso_local global i32 0, align 4
@SDEDM_FSM_WRITESTART1 = common dso_local global i32 0, align 4
@SDEDM = common dso_local global i64 0, align 8
@SDEDM_FSM_MASK = common dso_local global i32 0, align 4
@SDEDM_FSM_IDENTMODE = common dso_local global i32 0, align 4
@SDEDM_FSM_DATAMODE = common dso_local global i32 0, align 4
@SDEDM_FORCE_DATA_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"wait_transfer_complete - still waiting after %d retries\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_wait_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_wait_transfer_complete(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %7 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %8 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MMC_DATA_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @SDEDM_FSM_READWAIT, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @SDEDM_FSM_WRITESTART1, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %77
  %24 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %25 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SDEDM, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SDEDM_FSM_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SDEDM_FSM_IDENTMODE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SDEDM_FSM_DATAMODE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %23
  br label %79

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SDEDM_FORCE_DATA_MODE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %50 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SDEDM, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  br label %79

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 100000
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %62 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %68 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  %71 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %72 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %70, i32* %76, align 4
  br label %79

77:                                               ; preds = %55
  %78 = call i32 (...) @cpu_relax()
  br label %23

79:                                               ; preds = %60, %45, %40
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @bcm2835_dumpregs(%struct.bcm2835_host*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
