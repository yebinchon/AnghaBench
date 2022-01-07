; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_rdc_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_rdc_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.niu_rdc_tables* }
%struct.niu_rdc_tables = type { i32, i32, %struct.rdc_table* }
%struct.rdc_table = type { i32* }

@NIU_RDC_TABLE_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_rdc_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_rdc_groups(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_rdc_tables*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdc_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %9 = load %struct.niu*, %struct.niu** %2, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %14 = load %struct.niu*, %struct.niu** %2, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %13, i64 %16
  store %struct.niu_rdc_tables* %17, %struct.niu_rdc_tables** %3, align 8
  %18 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %3, align 8
  %19 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %57, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %3, align 8
  %24 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %3, align 8
  %29 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %28, i32 0, i32 2
  %30 = load %struct.rdc_table*, %struct.rdc_table** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rdc_table, %struct.rdc_table* %30, i64 %32
  store %struct.rdc_table* %33, %struct.rdc_table** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %53, %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NIU_RDC_TABLE_SLOTS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @RDC_TBL(i32 %42, i32 %43)
  %45 = load %struct.rdc_table*, %struct.rdc_table** %6, align 8
  %46 = getelementptr inbounds %struct.rdc_table, %struct.rdc_table* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nw64(i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %37

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load %struct.niu*, %struct.niu** %2, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @DEF_RDC(i64 %63)
  %65 = load %struct.niu*, %struct.niu** %2, align 8
  %66 = getelementptr inbounds %struct.niu, %struct.niu* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.niu*, %struct.niu** %2, align 8
  %71 = getelementptr inbounds %struct.niu, %struct.niu* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nw64(i32 %64, i32 %74)
  ret void
}

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RDC_TBL(i32, i32) #1

declare dso_local i32 @DEF_RDC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
