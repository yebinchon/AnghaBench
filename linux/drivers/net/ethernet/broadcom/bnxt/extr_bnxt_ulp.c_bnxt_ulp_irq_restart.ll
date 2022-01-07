; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_irq_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_ulp_irq_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { i32, %struct.bnxt_ulp* }
%struct.bnxt_ulp = type { i32, i32, i32 }
%struct.bnxt_ulp_ops = type { i32 (i32, %struct.bnxt_msix_entry*)* }
%struct.bnxt_msix_entry = type opaque
%struct.bnxt_msix_entry.0 = type { i32 }

@BNXT_EN_FLAG_MSIX_REQUESTED = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_ulp_irq_restart(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_en_dev*, align 8
  %6 = alloca %struct.bnxt_ulp_ops*, align 8
  %7 = alloca %struct.bnxt_ulp*, align 8
  %8 = alloca %struct.bnxt_msix_entry.0*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %10, align 8
  store %struct.bnxt_en_dev* %11, %struct.bnxt_en_dev** %5, align 8
  %12 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %13 = icmp ne %struct.bnxt_en_dev* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BNXT_EN_FLAG_MSIX_REQUESTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %2
  br label %81

22:                                               ; preds = %14
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 0
  %25 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %24, align 8
  %26 = load i64, i64* @BNXT_ROCE_ULP, align 8
  %27 = call i64 @bnxt_ulp_registered(%struct.bnxt_en_dev* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %22
  %30 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %30, i32 0, i32 1
  %32 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %31, align 8
  %33 = load i64, i64* @BNXT_ROCE_ULP, align 8
  %34 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %32, i64 %33
  store %struct.bnxt_ulp* %34, %struct.bnxt_ulp** %7, align 8
  store %struct.bnxt_msix_entry.0* null, %struct.bnxt_msix_entry.0** %8, align 8
  %35 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %7, align 8
  %36 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %81

40:                                               ; preds = %29
  %41 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %7, align 8
  %42 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.bnxt_ulp_ops* @rtnl_dereference(i32 %43)
  store %struct.bnxt_ulp_ops* %44, %struct.bnxt_ulp_ops** %6, align 8
  %45 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %6, align 8
  %46 = icmp ne %struct.bnxt_ulp_ops* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %6, align 8
  %49 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %48, i32 0, i32 0
  %50 = load i32 (i32, %struct.bnxt_msix_entry*)*, i32 (i32, %struct.bnxt_msix_entry*)** %49, align 8
  %51 = icmp ne i32 (i32, %struct.bnxt_msix_entry*)* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %40
  br label %81

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %7, align 8
  %58 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.bnxt_msix_entry.0* @kcalloc(i32 %59, i32 4, i32 %60)
  store %struct.bnxt_msix_entry.0* %61, %struct.bnxt_msix_entry.0** %8, align 8
  %62 = load %struct.bnxt_msix_entry.0*, %struct.bnxt_msix_entry.0** %8, align 8
  %63 = icmp ne %struct.bnxt_msix_entry.0* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %81

65:                                               ; preds = %56
  %66 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %67 = load %struct.bnxt_msix_entry.0*, %struct.bnxt_msix_entry.0** %8, align 8
  %68 = call i32 @bnxt_fill_msix_vecs(%struct.bnxt* %66, %struct.bnxt_msix_entry.0* %67)
  br label %69

69:                                               ; preds = %65, %53
  %70 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %6, align 8
  %71 = getelementptr inbounds %struct.bnxt_ulp_ops, %struct.bnxt_ulp_ops* %70, i32 0, i32 0
  %72 = load i32 (i32, %struct.bnxt_msix_entry*)*, i32 (i32, %struct.bnxt_msix_entry*)** %71, align 8
  %73 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %7, align 8
  %74 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bnxt_msix_entry.0*, %struct.bnxt_msix_entry.0** %8, align 8
  %77 = bitcast %struct.bnxt_msix_entry.0* %76 to %struct.bnxt_msix_entry*
  %78 = call i32 %72(i32 %75, %struct.bnxt_msix_entry* %77)
  %79 = load %struct.bnxt_msix_entry.0*, %struct.bnxt_msix_entry.0** %8, align 8
  %80 = call i32 @kfree(%struct.bnxt_msix_entry.0* %79)
  br label %81

81:                                               ; preds = %21, %39, %52, %64, %69, %22
  ret void
}

declare dso_local i64 @bnxt_ulp_registered(%struct.bnxt_en_dev*, i64) #1

declare dso_local %struct.bnxt_ulp_ops* @rtnl_dereference(i32) #1

declare dso_local %struct.bnxt_msix_entry.0* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @bnxt_fill_msix_vecs(%struct.bnxt*, %struct.bnxt_msix_entry.0*) #1

declare dso_local i32 @kfree(%struct.bnxt_msix_entry.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
