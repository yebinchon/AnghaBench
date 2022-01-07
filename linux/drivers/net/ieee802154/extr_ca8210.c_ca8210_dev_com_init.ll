; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_dev_com_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_dev_com_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ca8210_priv = type { %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"MLME work queue\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloc of mlme_workqueue failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ca8210 irq worker\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"alloc of irq_workqueue failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ca8210_priv*)* @ca8210_dev_com_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_dev_com_init(%struct.ca8210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ca8210_priv*, align 8
  store %struct.ca8210_priv* %0, %struct.ca8210_priv** %3, align 8
  %4 = load i32, i32* @WQ_UNBOUND, align 4
  %5 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_crit(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load i32, i32* @WQ_UNBOUND, align 4
  %22 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %20
  %30 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_crit(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %29, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
