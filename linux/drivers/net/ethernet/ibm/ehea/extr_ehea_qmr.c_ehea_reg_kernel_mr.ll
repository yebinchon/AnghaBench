; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_reg_kernel_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_reg_kernel_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.ehea_adapter = type { i32, i32 }
%struct.ehea_mr = type { %struct.ehea_adapter*, i32, i32, i32 }

@EHEA_MR_ACC_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"no mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EHEA_BUSMAP_START = common dso_local global i32 0, align 4
@ehea_mr_len = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"alloc_resource_mr failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ehea_bmap = common dso_local global %struct.TYPE_2__* null, align 8
@FORCE_FREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"no busmap available\0A\00", align 1
@EHEA_MAP_ENTRIES = common dso_local global i64 0, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"registering mr failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_reg_kernel_mr(%struct.ehea_adapter* %0, %struct.ehea_mr* %1) #0 {
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca %struct.ehea_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %3, align 8
  store %struct.ehea_mr* %1, %struct.ehea_mr** %4, align 8
  %10 = load i32, i32* @EHEA_MR_ACC_CTRL, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64 @get_zeroed_page(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EHEA_BUSMAP_START, align 4
  %26 = load i32, i32* @ehea_mr_len, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %32 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %31, i32 0, i32 2
  %33 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %34 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %33, i32 0, i32 3
  %35 = call i64 @ehea_h_alloc_resource_mr(i32 %24, i32 %25, i32 %26, i32 %27, i32 %30, i32* %32, i32* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @H_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %113

43:                                               ; preds = %21
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehea_bmap, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %51 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FORCE_FREE, align 4
  %54 = call i32 @ehea_h_free_resource(i32 %49, i32 %52, i32 %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %113

58:                                               ; preds = %43
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @EHEA_MAP_ENTRIES, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehea_bmap, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %87

72:                                               ; preds = %63
  %73 = load i64, i64* %9, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %76 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %77 = call i64 @ehea_reg_mr_dir_sections(i64 %73, i64* %74, %struct.ehea_adapter* %75, %struct.ehea_mr* %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @H_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %90

86:                                               ; preds = %81, %72
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %59

90:                                               ; preds = %85, %59
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @H_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %99 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FORCE_FREE, align 4
  %102 = call i32 @ehea_h_free_resource(i32 %97, i32 %100, i32 %101)
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %113

106:                                              ; preds = %90
  %107 = load i32, i32* @EHEA_BUSMAP_START, align 4
  %108 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %109 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %111 = load %struct.ehea_mr*, %struct.ehea_mr** %4, align 8
  %112 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %111, i32 0, i32 0
  store %struct.ehea_adapter* %110, %struct.ehea_adapter** %112, align 8
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %106, %94, %46, %39, %17
  %114 = load i64*, i64** %6, align 8
  %115 = ptrtoint i64* %114 to i64
  %116 = call i32 @free_page(i64 %115)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ehea_h_alloc_resource_mr(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i64 @ehea_reg_mr_dir_sections(i64, i64*, %struct.ehea_adapter*, %struct.ehea_mr*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
