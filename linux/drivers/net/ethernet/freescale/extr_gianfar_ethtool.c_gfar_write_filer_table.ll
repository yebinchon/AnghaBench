; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_write_filer_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_write_filer_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i32 }
%struct.filer_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_FILER_IDX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_private*, %struct.filer_table*)* @gfar_write_filer_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_write_filer_table(%struct.gfar_private* %0, %struct.filer_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca %struct.filer_table*, align 8
  %6 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %4, align 8
  store %struct.filer_table* %1, %struct.filer_table** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %8 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MAX_FILER_IDX, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %62, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_FILER_IDX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %23 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %31 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %29, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %21, %17
  %41 = phi i1 [ false, %17 ], [ %39, %21 ]
  br i1 %41, label %42, label %65

42:                                               ; preds = %40
  %43 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %46 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %54 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gfar_write_filer(%struct.gfar_private* %43, i32 %44, i32 %52, i32 %60)
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %17

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %74, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MAX_FILER_IDX, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @gfar_write_filer(%struct.gfar_private* %71, i32 %72, i32 96, i32 -1)
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %66

77:                                               ; preds = %66
  %78 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @gfar_write_filer(%struct.gfar_private* %78, i32 %79, i32 32, i32 0)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @gfar_write_filer(%struct.gfar_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
