; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_cluster_entry_per_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_cluster_entry_per_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i64*, i64* }

@FPR_FILER_MASK = common dso_local global i64 0, align 8
@RQFCR_CLE = common dso_local global i64 0, align 8
@RQFCR_PID_MASK = common dso_local global i64 0, align 8
@RQFCR_CMP_EXACT = common dso_local global i64 0, align 8
@RQFCR_CMP_NOMATCH = common dso_local global i64 0, align 8
@RQFCR_PID_PARSE = common dso_local global i64 0, align 8
@RQFCR_AND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfar_private*, i64, i64)* @cluster_entry_per_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cluster_entry_per_class(%struct.gfar_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.gfar_private* %0, %struct.gfar_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @FPR_FILER_MASK, align 8
  store i64 %9, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @RQFCR_CLE, align 8
  %13 = load i64, i64* @RQFCR_PID_MASK, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @RQFCR_CMP_EXACT, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %19 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %17, i64* %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %25 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %23, i64* %28, align 8
  %29 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @gfar_write_filer(%struct.gfar_private* %29, i64 %30, i64 %31, i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @RQFCR_CMP_NOMATCH, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %39 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %43, i64* %48, align 8
  %49 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @gfar_write_filer(%struct.gfar_private* %49, i64 %50, i64 %51, i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* @RQFCR_CMP_EXACT, align 8
  %57 = load i64, i64* @RQFCR_PID_PARSE, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @RQFCR_CLE, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @RQFCR_AND, align 8
  %62 = or i64 %60, %61
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %66 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %72 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %70, i64* %75, align 8
  %76 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @gfar_write_filer(%struct.gfar_private* %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* @RQFCR_CMP_EXACT, align 8
  %84 = load i64, i64* @RQFCR_PID_MASK, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @RQFCR_AND, align 8
  %87 = or i64 %85, %86
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %91 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %89, i64* %94, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %97 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  %101 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @gfar_write_filer(%struct.gfar_private* %101, i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i32 @gfar_write_filer(%struct.gfar_private*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
