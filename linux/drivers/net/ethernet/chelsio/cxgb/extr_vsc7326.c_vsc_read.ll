; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_vsc7326.c_vsc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_vsc7326.c_vsc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@REG_LOCAL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid tpi read from MAC, breaking loop.\0A\00", align 1
@REG_LOCAL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*)* @vsc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc_read(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 2
  %17 = add nsw i32 %16, 4
  %18 = call i32 @t1_tpi_read(%struct.TYPE_4__* %14, i32 %17, i32* %8)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %42, %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i32, i32* @REG_LOCAL_STATUS, align 4
  %22 = shl i32 %21, 2
  %23 = add nsw i32 %22, 4
  %24 = call i32 @t1_tpi_read(%struct.TYPE_4__* %20, i32 %23, i32* %8)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i32, i32* @REG_LOCAL_STATUS, align 4
  %27 = shl i32 %26, 2
  %28 = call i32 @t1_tpi_read(%struct.TYPE_4__* %25, i32 %27, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 50
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i1 [ false, %35 ], [ %41, %39 ]
  br i1 %43, label %19, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 50
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = load i32, i32* @REG_LOCAL_DATA, align 4
  %52 = shl i32 %51, 2
  %53 = add nsw i32 %52, 4
  %54 = call i32 @t1_tpi_read(%struct.TYPE_4__* %50, i32 %53, i32* %8)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = load i32, i32* @REG_LOCAL_DATA, align 4
  %57 = shl i32 %56, 2
  %58 = call i32 @t1_tpi_read(%struct.TYPE_4__* %55, i32 %57, i32* %9)
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 %59, 16
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @t1_tpi_read(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
