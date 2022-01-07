; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i64, i32, %struct.i40e_vsi**, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"pf->vsi[%d] is NULL, just free vsi[%d](type %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"pf->vsi[%d](type %d) != vsi[%d](type %d): no free!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_vsi_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_clear(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %6 = icmp ne %struct.i40e_vsi* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %147

8:                                                ; preds = %1
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 5
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %12 = icmp ne %struct.i40e_pf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %144

14:                                               ; preds = %8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 5
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %4, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 2
  %23 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %22, align 8
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %23, i64 %26
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %27, align 8
  %29 = icmp ne %struct.i40e_vsi* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %14
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (i32*, i8*, i64, i64, i64, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40, i64 %44)
  br label %140

46:                                               ; preds = %14
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 2
  %49 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %48, align 8
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %49, i64 %52
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %53, align 8
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %56 = icmp ne %struct.i40e_vsi* %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %46
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 2
  %64 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %63, align 8
  %65 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %64, i64 %67
  %69 = load %struct.i40e_vsi*, %struct.i40e_vsi** %68, align 8
  %70 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 2
  %74 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %73, align 8
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %74, i64 %77
  %79 = load %struct.i40e_vsi*, %struct.i40e_vsi** %78, align 8
  %80 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %84 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %87 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32*, i8*, i64, i64, i64, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %82, i64 %85, i32 %88)
  br label %140

90:                                               ; preds = %46
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %95 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %98 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @i40e_put_lump(i32 %93, i32 %96, i64 %99)
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %102 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %105 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %108 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @i40e_put_lump(i32 %103, i32 %106, i64 %109)
  %111 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %112 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @bitmap_free(i32 %113)
  %115 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %116 = call i32 @i40e_vsi_free_arrays(%struct.i40e_vsi* %115, i32 1)
  %117 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %118 = call i32 @i40e_clear_rss_config_user(%struct.i40e_vsi* %117)
  %119 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %120 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %119, i32 0, i32 2
  %121 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %120, align 8
  %122 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %123 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %121, i64 %124
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %125, align 8
  %126 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %127 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %130 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %90
  %134 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %135 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %133, %90
  br label %140

140:                                              ; preds = %139, %57, %30
  %141 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %142 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %141, i32 0, i32 1
  %143 = call i32 @mutex_unlock(i32* %142)
  br label %144

144:                                              ; preds = %140, %13
  %145 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %146 = call i32 @kfree(%struct.i40e_vsi* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %7
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @i40e_put_lump(i32, i32, i64) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @i40e_vsi_free_arrays(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_clear_rss_config_user(%struct.i40e_vsi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
