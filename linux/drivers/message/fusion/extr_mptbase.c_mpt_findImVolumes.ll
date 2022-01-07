; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_findImVolumes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_findImVolumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i64, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i64 }

@MPI_CONFIG_PAGETYPE_IOC = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_findImVolumes(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

17:                                               ; preds = %1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = call i32 @kfree(%struct.TYPE_22__* %21)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = call i32 @mpt_inactive_raid_list_free(%struct.TYPE_21__* %26)
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store i32 2, i32* %30, align 4
  %31 = load i32, i32* @MPI_CONFIG_PAGETYPE_IOC, align 4
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = call i64 @mpt_config(%struct.TYPE_21__* %41, %struct.TYPE_24__* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %17
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %133

47:                                               ; preds = %17
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %133

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %56, 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.TYPE_22__* @pci_alloc_consistent(i32 %60, i32 %61, i32* %6)
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %4, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = icmp ne %struct.TYPE_22__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %133

68:                                               ; preds = %54
  %69 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = call i64 @mpt_config(%struct.TYPE_21__* %73, %struct.TYPE_24__* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %124

77:                                               ; preds = %68
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32* @kmemdup(%struct.TYPE_22__* %78, i32 %79, i32 %80)
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %124

87:                                               ; preds = %77
  %88 = load i32*, i32** %5, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_22__*
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = call i32 @mpt_read_ioc_pg_3(%struct.TYPE_21__* %93)
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %120, %87
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @mpt_inactive_raid_volumes(%struct.TYPE_21__* %102, i32 %110, i32 %118)
  br label %120

120:                                              ; preds = %101
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %95

123:                                              ; preds = %95
  br label %124

124:                                              ; preds = %123, %84, %76
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @pci_free_consistent(i32 %127, i32 %128, %struct.TYPE_22__* %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %124, %65, %51, %44, %16
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @kfree(%struct.TYPE_22__*) #1

declare dso_local i32 @mpt_inactive_raid_list_free(%struct.TYPE_21__*) #1

declare dso_local i64 @mpt_config(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32* @kmemdup(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @mpt_read_ioc_pg_3(%struct.TYPE_21__*) #1

declare dso_local i32 @mpt_inactive_raid_volumes(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
