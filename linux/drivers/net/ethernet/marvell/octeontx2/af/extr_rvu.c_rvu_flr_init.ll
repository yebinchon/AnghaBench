; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_flr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_flr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.rvu* }
%struct.TYPE_3__ = type { i32 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rvu_afpf_flr\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rvu_flr_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*)* @rvu_flr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_flr_init(%struct.rvu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.rvu*, %struct.rvu** %3, align 8
  %11 = getelementptr inbounds %struct.rvu, %struct.rvu* %10, i32 0, i32 5
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %8
  %17 = load %struct.rvu*, %struct.rvu** %3, align 8
  %18 = load i32, i32* @BLKADDR_RVUM, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @RVU_PRIV_PFX_CFG(i32 %19)
  %21 = call i32 @rvu_read64(%struct.rvu* %17, i32 %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rvu*, %struct.rvu** %3, align 8
  %23 = load i32, i32* @BLKADDR_RVUM, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @RVU_PRIV_PFX_CFG(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @BIT_ULL(i32 22)
  %28 = or i32 %26, %27
  %29 = call i32 @rvu_write64(%struct.rvu* %22, i32 %23, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i32, i32* @WQ_UNBOUND, align 4
  %35 = load i32, i32* @WQ_HIGHPRI, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38, i32 1)
  %40 = load %struct.rvu*, %struct.rvu** %3, align 8
  %41 = getelementptr inbounds %struct.rvu, %struct.rvu* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rvu*, %struct.rvu** %3, align 8
  %43 = getelementptr inbounds %struct.rvu, %struct.rvu* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %109

49:                                               ; preds = %33
  %50 = load %struct.rvu*, %struct.rvu** %3, align 8
  %51 = getelementptr inbounds %struct.rvu, %struct.rvu* %50, i32 0, i32 5
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rvu*, %struct.rvu** %3, align 8
  %56 = getelementptr inbounds %struct.rvu, %struct.rvu* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pci_sriov_get_totalvfs(i32 %57)
  %59 = add nsw i32 %54, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.rvu*, %struct.rvu** %3, align 8
  %61 = getelementptr inbounds %struct.rvu, %struct.rvu* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.TYPE_4__* @devm_kcalloc(i32 %62, i32 %63, i32 4, i32 %64)
  %66 = load %struct.rvu*, %struct.rvu** %3, align 8
  %67 = getelementptr inbounds %struct.rvu, %struct.rvu* %66, i32 0, i32 1
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  %68 = load %struct.rvu*, %struct.rvu** %3, align 8
  %69 = getelementptr inbounds %struct.rvu, %struct.rvu* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %49
  %73 = load %struct.rvu*, %struct.rvu** %3, align 8
  %74 = getelementptr inbounds %struct.rvu, %struct.rvu* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @destroy_workqueue(i32 %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %109

79:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load %struct.rvu*, %struct.rvu** %3, align 8
  %86 = load %struct.rvu*, %struct.rvu** %3, align 8
  %87 = getelementptr inbounds %struct.rvu, %struct.rvu* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store %struct.rvu* %85, %struct.rvu** %92, align 8
  %93 = load %struct.rvu*, %struct.rvu** %3, align 8
  %94 = getelementptr inbounds %struct.rvu, %struct.rvu* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* @rvu_flr_handler, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %84
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %80

105:                                              ; preds = %80
  %106 = load %struct.rvu*, %struct.rvu** %3, align 8
  %107 = getelementptr inbounds %struct.rvu, %struct.rvu* %106, i32 0, i32 0
  %108 = call i32 @mutex_init(i32* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %72, %46
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PRIV_PFX_CFG(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @pci_sriov_get_totalvfs(i32) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
