; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_get_flash_partition_by_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_get_flash_partition_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_flash_attr = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.bnad_iocmd_comp = type { i64, i32, %struct.bnad* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@bnad_cb_completion = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, i64, i64*)* @bnad_get_flash_partition_by_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_get_flash_partition_by_offset(%struct.bnad* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.bfa_flash_attr*, align 8
  %9 = alloca %struct.bnad_iocmd_comp, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bfa_flash_attr* @kzalloc(i32 16, i32 %14)
  store %struct.bfa_flash_attr* %15, %struct.bfa_flash_attr** %8, align 8
  %16 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %17 = icmp ne %struct.bfa_flash_attr* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %117

19:                                               ; preds = %3
  %20 = load %struct.bnad*, %struct.bnad** %5, align 8
  %21 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 2
  store %struct.bnad* %20, %struct.bnad** %21, align 8
  %22 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 1
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.bnad*, %struct.bnad** %5, align 8
  %26 = getelementptr inbounds %struct.bnad, %struct.bnad* %25, i32 0, i32 0
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.bnad*, %struct.bnad** %5, align 8
  %30 = getelementptr inbounds %struct.bnad, %struct.bnad* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %33 = load i32, i32* @bnad_cb_completion, align 4
  %34 = call i64 @bfa_nw_flash_get_attr(i32* %31, %struct.bfa_flash_attr* %32, i32 %33, %struct.bnad_iocmd_comp* %9)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @BFA_STATUS_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load %struct.bnad*, %struct.bnad** %5, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 0
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %44 = call i32 @kfree(%struct.bfa_flash_attr* %43)
  store i64 0, i64* %4, align 8
  br label %117

45:                                               ; preds = %19
  %46 = load %struct.bnad*, %struct.bnad** %5, align 8
  %47 = getelementptr inbounds %struct.bnad, %struct.bnad* %46, i32 0, i32 0
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 1
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @BFA_STATUS_OK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %113

57:                                               ; preds = %45
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %109, %57
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %61 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %67 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %65, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %64
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %77 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %84 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %82, %89
  %91 = icmp slt i64 %75, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %74
  %93 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %94 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %11, align 8
  %100 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %101 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  br label %112

108:                                              ; preds = %74, %64
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %10, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %10, align 8
  br label %58

112:                                              ; preds = %92, %58
  br label %113

113:                                              ; preds = %112, %45
  %114 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %8, align 8
  %115 = call i32 @kfree(%struct.bfa_flash_attr* %114)
  %116 = load i64, i64* %11, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %113, %38, %18
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local %struct.bfa_flash_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_nw_flash_get_attr(i32*, %struct.bfa_flash_attr*, i32, %struct.bnad_iocmd_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.bfa_flash_attr*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
