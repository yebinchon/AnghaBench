; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_attach_spa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_attach_spa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@CXL_PSL_SPAP_Addr = common dso_local global i32 0, align 4
@CXL_PSL_SPAP_Size_Shift = common dso_local global i32 0, align 4
@CXL_PSL_SPAP_Size = common dso_local global i32 0, align 4
@CXL_PSL_SPAP_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"cxl: SPA allocated at 0x%p. Max processes: %i, sw_command_status: 0x%p CXL_PSL_SPAP_An=0x%016llx\0A\00", align 1
@CXL_PSL_SPAP_An = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_afu*)* @attach_spa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_spa(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  %3 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %4 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %5 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %11 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 3
  %16 = mul nsw i32 %15, 128
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %9, i64 %17
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %21 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32* %19, i32** %23, align 8
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %25 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @virt_to_phys(i64 %28)
  %30 = load i32, i32* @CXL_PSL_SPAP_Addr, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %33 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CXL_PSL_SPAP_Size_Shift, align 4
  %38 = sub nsw i32 12, %37
  %39 = ashr i32 %36, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @CXL_PSL_SPAP_Size, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @CXL_PSL_SPAP_V, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %49 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %54 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %59 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @pr_devel(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %57, i32* %62, i32 %63)
  %65 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %66 = load i32, i32* @CXL_PSL_SPAP_An, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @cxl_p1n_write(%struct.cxl_afu* %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @pr_devel(i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
