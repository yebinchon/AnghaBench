; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_init_filer_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_init_filer_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i64*, i64*, i64 }

@MAX_FILER_IDX = common dso_local global i64 0, align 8
@FPR_FILER_MASK = common dso_local global i64 0, align 8
@RQFCR_CMP_MATCH = common dso_local global i64 0, align 8
@RQFPR_IPV6 = common dso_local global i32 0, align 4
@RQFPR_UDP = common dso_local global i32 0, align 4
@RQFPR_TCP = common dso_local global i32 0, align 4
@RQFPR_IPV4 = common dso_local global i32 0, align 4
@RQFCR_CMP_NOMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_private*)* @gfar_init_filer_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_init_filer_table(%struct.gfar_private* %0) #0 {
  %2 = alloca %struct.gfar_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gfar_private* %0, %struct.gfar_private** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i64, i64* @MAX_FILER_IDX, align 8
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* @FPR_FILER_MASK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @RQFCR_CMP_MATCH, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %12 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 %10, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %18 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 %16, i64* %21, align 8
  %22 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @gfar_write_filer(%struct.gfar_private* %22, i32 %24, i64 %25, i64 %26)
  %28 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @RQFPR_IPV6, align 4
  %31 = call i64 @cluster_entry_per_class(%struct.gfar_private* %28, i64 %29, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @RQFPR_IPV6, align 4
  %35 = load i32, i32* @RQFPR_UDP, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @cluster_entry_per_class(%struct.gfar_private* %32, i64 %33, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @RQFPR_IPV6, align 4
  %41 = load i32, i32* @RQFPR_TCP, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @cluster_entry_per_class(%struct.gfar_private* %38, i64 %39, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @RQFPR_IPV4, align 4
  %47 = call i64 @cluster_entry_per_class(%struct.gfar_private* %44, i64 %45, i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @RQFPR_IPV4, align 4
  %51 = load i32, i32* @RQFPR_UDP, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @cluster_entry_per_class(%struct.gfar_private* %48, i64 %49, i32 %52)
  store i64 %53, i64* %4, align 8
  %54 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* @RQFPR_IPV4, align 4
  %57 = load i32, i32* @RQFPR_TCP, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @cluster_entry_per_class(%struct.gfar_private* %54, i64 %55, i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %62 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @RQFCR_CMP_NOMATCH, align 8
  store i64 %63, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %89, %1
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %4, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %64
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %72 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %79 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %77, i64* %83, align 8
  %84 = load %struct.gfar_private*, %struct.gfar_private** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @gfar_write_filer(%struct.gfar_private* %84, i32 %85, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %69
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %64

92:                                               ; preds = %64
  ret void
}

declare dso_local i32 @gfar_write_filer(%struct.gfar_private*, i32, i64, i64) #1

declare dso_local i64 @cluster_entry_per_class(%struct.gfar_private*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
