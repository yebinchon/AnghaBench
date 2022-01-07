; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_read_afu_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_read_afu_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CXL_MODE_DIRECTED = common dso_local global i32 0, align 4
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4
@CXL_MODE_TIME_SLICED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid AFU error buffer offset %Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Ignoring AFU error buffer in the descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @cxl_read_afu_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_read_afu_descriptor(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  %3 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %4 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %5 = call i32 @AFUD_READ_INFO(%struct.cxl_afu* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @AFUD_NUM_INTS_PER_PROC(i32 %6)
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @AFUD_NUM_PROCS(i32 %10)
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %13 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @AFUD_NUM_CRS(i32 %14)
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %17 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @AFUD_AFU_DIRECTED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @CXL_MODE_DIRECTED, align 4
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %24 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @AFUD_DEDICATED_PROCESS(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %34 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @AFUD_TIME_SLICED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @CXL_MODE_TIME_SLICED, align 4
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %44 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %49 = call i32 @AFUD_READ_PPPSA(%struct.cxl_afu* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @AFUD_PPPSA_LEN(i32 %50)
  %52 = mul nsw i32 %51, 4096
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %54 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @AFUD_PPPSA_PSA(i32 %55)
  %57 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %58 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @AFUD_PPPSA_PP(i32 %59)
  %61 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %62 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = icmp ne i32 %60, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %66 = call i32 @AFUD_READ_PPPSA_OFF(%struct.cxl_afu* %65)
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %68 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %67, i32 0, i32 6
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %47
  %72 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %73 = call i32 @AFUD_READ_CR(%struct.cxl_afu* %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @AFUD_CR_LEN(i32 %74)
  %76 = mul nsw i32 %75, 256
  %77 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %78 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %80 = call i32 @AFUD_READ_CR_OFF(%struct.cxl_afu* %79)
  %81 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %82 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %84 = call i32 @AFUD_READ_EB(%struct.cxl_afu* %83)
  %85 = call i32 @AFUD_EB_LEN(i32 %84)
  %86 = mul nsw i32 %85, 4096
  %87 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %88 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %90 = call i32 @AFUD_READ_EB_OFF(%struct.cxl_afu* %89)
  %91 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %92 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %94 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @EXTRACT_PPC_BITS(i32 %95, i32 0, i32 11)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %71
  %99 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %100 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %99, i32 0, i32 3
  %101 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %102 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_warn(i32* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %106 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %105, i32 0, i32 3
  %107 = call i32 @dev_info(i32* %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %109 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %98, %71
  ret i32 0
}

declare dso_local i32 @AFUD_READ_INFO(%struct.cxl_afu*) #1

declare dso_local i32 @AFUD_NUM_INTS_PER_PROC(i32) #1

declare dso_local i32 @AFUD_NUM_PROCS(i32) #1

declare dso_local i32 @AFUD_NUM_CRS(i32) #1

declare dso_local i64 @AFUD_AFU_DIRECTED(i32) #1

declare dso_local i64 @AFUD_DEDICATED_PROCESS(i32) #1

declare dso_local i64 @AFUD_TIME_SLICED(i32) #1

declare dso_local i32 @AFUD_READ_PPPSA(%struct.cxl_afu*) #1

declare dso_local i32 @AFUD_PPPSA_LEN(i32) #1

declare dso_local i32 @AFUD_PPPSA_PSA(i32) #1

declare dso_local i32 @AFUD_PPPSA_PP(i32) #1

declare dso_local i32 @AFUD_READ_PPPSA_OFF(%struct.cxl_afu*) #1

declare dso_local i32 @AFUD_READ_CR(%struct.cxl_afu*) #1

declare dso_local i32 @AFUD_CR_LEN(i32) #1

declare dso_local i32 @AFUD_READ_CR_OFF(%struct.cxl_afu*) #1

declare dso_local i32 @AFUD_EB_LEN(i32) #1

declare dso_local i32 @AFUD_READ_EB(%struct.cxl_afu*) #1

declare dso_local i32 @AFUD_READ_EB_OFF(%struct.cxl_afu*) #1

declare dso_local i64 @EXTRACT_PPC_BITS(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
