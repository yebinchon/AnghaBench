; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_uld_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_uld_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i32)*, i8*, i32, i8* (%struct.cxgb4_lld_info*)* }
%struct.cxgb4_lld_info = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"could not attach to the %s driver, error %ld\0A\00", align 1
@CXGB4_FULL_INIT_DONE = common dso_local global i32 0, align 4
@CXGB4_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @uld_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uld_attach(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxgb4_lld_info, align 4
  %7 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = call i32 @uld_init(%struct.adapter* %8, %struct.cxgb4_lld_info* %6)
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @uld_queue_init(%struct.adapter* %10, i32 %11, %struct.cxgb4_lld_info* %6)
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i8* (%struct.cxgb4_lld_info*)*, i8* (%struct.cxgb4_lld_info*)** %19, align 8
  %21 = call i8* %20(%struct.cxgb4_lld_info* %6)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  %39 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %2
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.adapter*, %struct.adapter** %4, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %43, i8** %50, align 8
  %51 = call i32 (...) @t4_register_netevent_notifier()
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CXGB4_FULL_INIT_DONE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %42
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (i8*, i32)*, i32 (i8*, i32)** %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @CXGB4_STATE_UP, align 4
  %69 = call i32 %66(i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %42
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @uld_init(%struct.adapter*, %struct.cxgb4_lld_info*) #1

declare dso_local i32 @uld_queue_init(%struct.adapter*, i32, %struct.cxgb4_lld_info*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @t4_register_netevent_notifier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
