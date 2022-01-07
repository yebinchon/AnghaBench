; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pg_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pg_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, i8** }
%struct.TYPE_3__ = type { i64, i8**, i32, i32, i32 }

@HCLGE_SCH_MODE_DWRR = common dso_local global i32 0, align 4
@HCLGE_ETHER_MAX_RATE = common dso_local global i32 0, align 4
@BW_PERCENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_tm_pg_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_tm_pg_info_init(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %86, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %89

12:                                               ; preds = %5
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 100
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i8**, i8*** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  store i8* %18, i8** %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %25, i64* %32, align 8
  %33 = load i32, i32* @HCLGE_SCH_MODE_DWRR, align 4
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %33, i32* %40, align 8
  %41 = load i32, i32* @HCLGE_ETHER_MAX_RATE, align 4
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %41, i32* %48, align 4
  %49 = load i64, i64* %3, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %12
  br label %86

52:                                               ; preds = %12
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %55, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %82, %52
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %72 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* inttoptr (i64 100 to i8*), i8** %81, align 8
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %63

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85, %51
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %3, align 8
  br label %5

89:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
