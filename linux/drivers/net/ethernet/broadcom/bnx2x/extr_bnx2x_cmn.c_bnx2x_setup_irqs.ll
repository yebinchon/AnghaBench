; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@USING_SINGLE_MSIX_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IRQ request failed  rc %d, aborting\0A\00", align 1
@USING_MSI_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"using MSI IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"using MSIX IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_setup_irqs(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @USING_MSIX_FLAG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @USING_SINGLE_MSIX_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = call i32 @bnx2x_req_msix_irqs(%struct.bnx2x* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %90

25:                                               ; preds = %18
  br label %89

26:                                               ; preds = %11, %1
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i32 @bnx2x_req_irq(%struct.bnx2x* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %90

35:                                               ; preds = %26
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @USING_MSI_FLAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netdev_info(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %42, %35
  %62 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %63 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @USING_MSIX_FLAG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netdev_info(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %68, %61
  br label %89

89:                                               ; preds = %88, %25
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %31, %23
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @bnx2x_req_msix_irqs(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_req_irq(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
