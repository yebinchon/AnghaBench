; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_t4_uld_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_t4_uld_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i8*, %struct.sge }
%struct.sge = type { i8*, i8* }

@CXGB4_ULD_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CXGB4_TX_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_uld_mem_alloc(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.sge* %6, %struct.sge** %4, align 8
  %7 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kcalloc(i32 %7, i32 1, i32 %8)
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load i32, i32* @CXGB4_ULD_MAX, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 8, i32 %21)
  %23 = load %struct.sge*, %struct.sge** %4, align 8
  %24 = getelementptr inbounds %struct.sge, %struct.sge* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.sge*, %struct.sge** %4, align 8
  %26 = getelementptr inbounds %struct.sge, %struct.sge* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %47

30:                                               ; preds = %19
  %31 = load i32, i32* @CXGB4_TX_MAX, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 8, i32 %32)
  %34 = load %struct.sge*, %struct.sge** %4, align 8
  %35 = getelementptr inbounds %struct.sge, %struct.sge* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.sge*, %struct.sge** %4, align 8
  %37 = getelementptr inbounds %struct.sge, %struct.sge* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %54

42:                                               ; preds = %40
  %43 = load %struct.sge*, %struct.sge** %4, align 8
  %44 = getelementptr inbounds %struct.sge, %struct.sge* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @kfree(i8* %45)
  br label %47

47:                                               ; preds = %42, %29
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %41, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
